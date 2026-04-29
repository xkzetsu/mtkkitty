#!/bin/bash

# --- Estética e Cores ---
BG_COLOR="#0B1011"
R='\033[0;31m'
G='\033[0;32m'
Y='\033[1;33m'
B='\033[0;34m'
CY='\033[0;36m'
WT='\033[0m'

apply_bg() { echo -ne "\e]11;${BG_COLOR}\a"; }
reset_bg() { echo -ne "\e]111\a"; }

# --- Banner de Diagnóstico ---
banner_check() {
    clear
    apply_bg
    echo -e "${CY}┌────────────────────────────────────────────────────────┐${WT}"
    echo -e "${CY}│${WT}            ${Y}SYSTEM DIAGNOSTIC & DEPENDENCIES${WT}            ${CY}│${WT}"
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

    # 2. Verifica Regras UDEV (Caminho padrão na maioria das distros)
    if [ -f "/etc/udev/rules.d/51-edl.rules" ] || [ -f "/etc/udev/rules.d/80-mtk.rules" ]; then
        echo -e "[${G}OK${WT}] Regras udev encontradas."
    else
        echo -e "[${R}!!${WT}] Regras udev ausentes (Isso causará erro de permissão USB)."
        MISSING=$((MISSING + 1))
    fi

    # 3. Verifica Grupos do Usuário (uucp para Arch, dialout para Debian/Ubuntu)
    if groups $USER | grep -qE "uucp|dialout"; then
        echo -e "[${G}OK${WT}] Usuário possui permissões de hardware."
    else
        echo -e "[${R}!!${WT}] Usuário não está nos grupos uucp/dialout."
        MISSING=$((MISSING + 1))
    fi

    # --- Resultado Final ---
    if [ $MISSING -gt 0 ]; then
        echo -e "\n${R}Status: AMBIENTE INCOMPLETO ($MISSING itens faltando)${WT}"
        echo -ne "${Y}Ta faltando coisa... deseja instalar as dependências ou sair? [y/S]: ${WT}"
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

# --- Função de Instalação (Simulada/Baseada em Distro) ---
install_deps() {
    echo -e "\n[${B}#${WT}] Detectando gerenciador de pacotes..."
    
    if command -v pacman &> /dev/null; then
        echo -e "[${B}i${WT}] Arch Linux detectado. Instalando via AUR (mtkclient)..."
        # Aqui você pode colocar o comando real:
        # yay -S mtkclient-git --noconfirm
        echo -e "${Y}[AVISO] Executar comandos de instalação requer privilégios de root.${WT}"
        sudo pacman -S --needed python-pip python-pyusb python-pyserial
        sudo usermod -aG uucp $USER
        echo -e "[${G}*${WT}] Por favor, instale 'mtkclient' via AUR para completar."
    
    elif command -v apt &> /dev/null; then
        echo -e "[${B}i${WT}] Debian/Ubuntu detectado. Instalando..."
        sudo apt update && sudo apt install mtkclient -y
        sudo usermod -aG dialout $USER
    fi

    echo -e "\n[${G}DONE${WT}] Tente rodar o script novamente após reiniciar a sessão."
    reset_bg
    exit 0
}

# Execução
banner_check
check_env
