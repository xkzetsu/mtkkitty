#!/bin/bash

# --- Estética e Cores ---
BG_COLOR="#0B1011"
# --- O Jeito Certo (Octal) ---
R='\033[0;31m'   # Vermelho
G='\033[0;32m'   # Verde
Y='\033[1;33m'   # Amarelo (o '1;' deixa em negrito/brilhante)
B='\033[0;34m'   # Azul
CY='\033[0;36m'  # Ciano
WT='\033[0m'     # Reset

apply_bg() { echo -ne "\e]11;${BG_COLOR}\a"; }
reset_bg() { echo -ne "\e]111\a"; }

# --- Banner de Diagnóstico ---
banner_check() {
    clear
    apply_bg
    echo -e "${CY}┌────────────────────────────────────────────────────────┐${WT}"
    echo -e "${CY}│${WT}             ${Y}SYSTEM DIAGNOSTIC & DEPENDENCIES${WT}            ${CY}│${WT}"
    echo -e "${CY}└────────────────────────────────────────────────────────┘${WT}"
}

# --- Função de Verificação ---
check_env() {
    MISSING=0
    
    echo -e "\n[${B}*${WT}] Iniciando verificação do sistema..."

    # 1. Verifica Binário MTK
    if command -v mtk &> /dev/null; then
        echo -e "[${G}OK${WT}] mtkclient encontrado."
    else
        echo -e "[${R}!!${WT}] mtkclient NÃO instalado."
        MISSING=$((MISSING + 1))
    fi

    # 2. Verifica Regras UDEV
    if [ -f "/etc/udev/rules.d/51-edl.rules" ] || [ -f "/etc/udev/rules.d/80-mtk.rules" ]; then
        echo -e "[${G}OK${WT}] Regras udev encontradas."
    else
        echo -e "[${R}!!${WT}] Regras udev ausentes (Isso causará erro de permissão USB)."
        MISSING=$((MISSING + 1))
    fi

    # 3. Verifica Grupos do Usuário
    if groups $USER | grep -qE "uucp|dialout"; then
        echo -e "[${G}OK${WT}] Usuário possui permissões de hardware."
    else
        echo -e "[${R}!!${WT}] Usuário não está nos grupos uucp/dialout."
        MISSING=$((MISSING + 1))
    fi

    # --- Resultado Final ---
    if [ $MISSING -gt 0 ]; then
        echo -e "\n${R}Status: AMBIENTE INCOMPLETO ($MISSING itens faltando)${WT}"
        echo -ne "${Y}Está faltando coisa... deseja instalar as dependências e configurar o ambiente agora? [y/S]: ${WT}"
        read choice
        case "$choice" in
            [yY][eE][sS]|[yY]) install_deps ;;
            *) reset_bg; exit 0 ;;
        esac
    else
        echo -e "\n${G}Status: TUDO OK! Seu ambiente está pronto para o combate.${WT}"
        sleep 2
        reset_bg
    fi
}

# --- Função de Instalação Real e Configuração ---
install_deps() {
    echo -e "\n[${B}#${WT}] Detectando gerenciador de pacotes..."
    
    # 1. Instalação dos Pacotes Core por Distro
    if command -v pacman &> /dev/null; then
        echo -e "[${B}i${WT}] Arch Linux detectado. Instalando dependências e mtkclient..."
        sudo pacman -S --needed --noconfirm python-pip python-pyusb python-pyserial usbutils
        
        # Tenta instalar mtkclient via AUR se houver um helper instalado, senão vai via PIP
        if command -v yay &> /dev/null; then
            yay -S mtkclient-git --noconfirm
        elif command -v paru &> /dev/null; then
            paru -S mtkclient-git --noconfirm
        else
            echo -e "[${Y}!${WT}] AUR helper não encontrado. Instalando mtkclient via Python PIP..."
            pip install mtkclient --break-system-packages 2>/dev/null || pip install mtkclient
        fi
        
        # Adiciona ao grupo correto do Arch
        echo -e "[${B}*${WT}] Adicionando $USER ao grupo uucp..."
        sudo usermod -aG uucp $USER

    elif command -v apt &> /dev/null; then
        echo -e "[${B}i${WT}] Debian/Ubuntu detectado. Instalando dependências..."
        sudo apt update
        sudo apt install -y python3-pip python3-usb python3-serial usbutils git
        
        echo -e "[${B}i${WT}] Instalando mtkclient via PIP..."
        pip3 install mtkclient --break-system-packages 2>/dev/null || pip3 install mtkclient
        
        # Adiciona ao grupo correto do Debian/Ubuntu
        echo -e "[${B}*${WT}] Adicionando $USER ao grupo dialout..."
        sudo usermod -aG dialout $USER
    else
        echo -e "[${R}ERRO${WT}] Distribuição não suportada automaticamente. Instale o mtkclient manualmente."
        reset_bg
        exit 1
    fi

    # 2. Configuração Automática das Regras UDEV (Crucial para o mtkclient conversar com o celular)
    echo -e "[${B}*${WT}] Configurando regras UDEV para dispositivos MediaTek..."
    
    # Cria o arquivo de regras EDL/MTK caso não exista
    sudo bash -c 'cat << EOF > /etc/udev/rules.d/51-edl.rules
# MediaTek SoC
SUBSYSTEM=="usb", ATTR{idVendor}=="0e8d", MODE="0666", GROUP="dialout"
SUBSYSTEM=="usb", ATTR{idVendor}=="0e8d", ATTR{idProduct}=="0003", MODE="0666", GROUP="dialout"
EOF'

    # Recarrega as regras do sistema de arquivos udev
    echo -e "[${B}*${WT}] Recarregando regras do UDEV..."
    sudo udevadm control --reload-rules
    sudo udevadm trigger

    # 3. Ajuste de permissão para execução do kitten.sh (opcional, mas garante usabilidade)
    if [ -f "kitten.sh" ]; then
        chmod +x kitten.sh
        echo -e "[${G}*${WT}] Permissão de execução aplicada ao kitten.sh."
    fi

    echo -e "\n${G}[CONCLUÍDO]${WT} Ambiente configurado com sucesso!"
    echo -e "${Y}[AVISO]${WT} É altamente recomendado REINICIAR o computador ou fazer LOGOUT para aplicar as permissões de grupo."
    reset_bg
    exit 0
}

# Execução
banner_check
check_env
