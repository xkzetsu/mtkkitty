#!/bin/bash

# --- Cores e Estética ---
R='\033[0;31m'   # Erro
G='\033[0;32m'   # Sucesso
Y='\033[1;33m'   # Alerta
B='\033[0;34m'   # Info
P='\033[0;35m'   # Roxo
CY='\033[0;36m'  # Bordas
WT='\033[0m'     # Reset
PS="\e[5m"

# --- Função de Status ---
check_mm_status() {
    if systemctl is-active --quiet ModemManager; then
        echo -e "${R}ON (Busy)  ${WT}"
    else
        echo -e "${G}OFF (Safe)  ${WT}"
    fi
}

# --- Banners e Artes ---
printerase () {
    echo -e "${CY}┌────────────────────────────────────────────────────────┐${WT}"
    echo -e "${CY}│${WT}               ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}           ${CY}│${WT}"
    echo -e "${CY}└────────────────────────────────────────────────────────┘${WT}"
    cat << 'EOF'
 ███████╗██████╗  █████╗ ███████╗███████╗    ╔═════════╗
 ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝    ║         ║]< up
 █████╗  ██████╔╝███████║███████╗█████╗      ║        ║]< dn
 ██╔══╝  ██╔══██╗██╔══██║╚════██║██╔══╝      ║         ║
 ███████╗██║  ██║██║  ██║███████║███████╗    ║═════════║
 ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝    ╚═════════╝
                                                 [♆] usb
EOF
}

printinfo () {
    echo -e "${CY}┌────────────────────────────────────────────────────────┐${WT}"
    echo -e "${CY}│${WT}               ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}           ${CY}│${WT}"
    echo -e "${CY}└────────────────────────────────────────────────────────┘${WT}"
    cat << 'EOF'
 ██████╗ ██████╗ ██╗███╗   ██╗████████╗     ╔═════════╗
 ██╔══██╗██╔══██╗██║████╗  ██║╚══██╔══╝     ║         ║]< up
 ██████╔╝██████╔╝██║██╔██╗ ██║   ██║        ║        ║]< dn
 ██╔═══╝ ██╔══██╗██║██║╚██╗██║   ██║        ║         ║
 ██║     ██║  ██║██║██║ ╚████║   ██║        ║═════════║
 ╚═╝     ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝   ╚═╝        ╚═════════╝
                                                 [♆] usb
EOF
}

banner () {
    echo -e "${CY}┌────────────────────────────────────────────────────────┐${WT}"
    echo -e "${CY}│${WT}               ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}           ${CY}│${WT}"
    echo -e "${CY}└────────────────────────────────────────────────────────┘${WT}"
    echo -e "${P}"
    cat << 'EOF'
███╗   ███╗████████╗██╗  ██╗     ╔═════════╗  
████╗ ████║╚══██╔══╝██║ ██╔╝     ║         ║]< up   
██╔████╔██║   ██║   █████╔╝      ║         ║]< down
██║╚██╔╝██║   ██║   ██╔═██╗      ║         ║          
██║ ╚═╝ ██║   ██║   ██║  ██╗     ║═════════║
╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═╝     ╚═════════╝
                                     [♆] cable
EOF
    echo -e "${WT}"
}

kitty() {
    echo -e "${CY}"
    cat << 'EOF'
                        ╱|、  ?      :john or android
                       (˚ˎ 。7       :xk.xzl
                        |、˜〵       :xkzetsu
                        じしˍ,)ノ
                          
                      [ TUDO OK ]
EOF
    echo -e "${WT}"
}

# --- Verificação de Argumentos ---
if [ "$1" == "kittyhelp" ]; then
    show_help
elif [ "$1" == "devprint" ]; then
    show_dev
fi

# --- Lógica de Inicialização (Parâmetro 0) ---
if [ "$1" == "0" ]; then
    if systemctl is-active --quiet ModemManager; then
        sudo systemctl stop ModemManager &> /dev/null
    fi
fi

# --- Funções de Verificação ---
check_usb() {
    lsusb | grep -i "0e8d"
}

# --- Cabeçalho Principal ---
clear
banner

# --- Estágio 1: Dependências ---
echo -ne "[${B}*${WT}] Verificando mtkclient..."
if ! command -v mtk &> /dev/null; then
    echo -e "\n[${R}x${WT}] ${R}ERRO:${WT} MTK não encontrado."
    exit 1
else
    echo -e " [${G}OK${WT}]"
fi

# --- MENU DE OPÇÕES COM STATUS ---
echo -e "\n${CY}STATUS DO SISTEMA:${WT}"
echo -e "ModemManager: $(check_mm_status)" 
echo -e "────────────────────────────────"
echo -e "${B}Escolha uma operação:${WT}"
echo -e "${G}1)${WT} Erase Total (Userdata/FRP/Cache)  "
echo -e "${G}2)${WT} Get Info (Detalhes do Hardware)  "
echo -e "${G}3)${WT} Sair 󰗽 "
echo -ne "\n${Y}Opção (): ${WT}"
read opt

case $opt in
    1) MODE="ERASE" ;;
    2) MODE="INFO" ;;
    *) echo "Saindo..."; exit 0 ;;
esac

# --- Estágio 2: Monitoramento USB ---
clear
if [ "$MODE" == "INFO" ]; then printinfo; else printerase; fi
echo -e "${Y}MODO SELECIONADO: $MODE${WT}"
echo -e "[${B}*${WT}] Iniciando varredura USB..."
echo -ne "[${Y}!${WT}] Aguardando dispositivo... (Segure VOL+ e VOL-)\r"

while true; do
    USB_INFO=$(check_usb)
    if [ ! -z "$USB_INFO" ]; then
        echo -e "\n[${G}v${WT}] ${G}DISPOSITIVO ENCONTRADO!${WT}"
        echo -e "[${B}i${WT}] Info USB: ${CY}$USB_INFO${WT}"
        break
    fi
    sleep 0.5
done

# --- Estágio 3: Gestão Automática (Se não usou parâmetro 0) ---
WAS_RUNNING=false
if [ "$1" != "0" ]; then
    if systemctl is-active --quiet ModemManager; then
        echo -e "[${B}*${WT}] Parando ModemManager temporariamente..."
        sudo systemctl stop ModemManager &> /dev/null
        WAS_RUNNING=true
    fi
fi

# --- Execução ---
if [ "$MODE" == "ERASE" ]; then
    echo -e "[${P}#${WT}] Executando Wipe Geral..."
    mtk multi "e userdata; e cache; e metadata; e frp" &> /dev/null
    
    if [ $? -eq 0 ]; then
        echo -e "[${G}SUCCESS${WT}] Partições limpas!"
        mtk reset &> /dev/null
    else
        echo -e "[${R}x${WT}] Falha no Erase."
    fi

elif [ "$MODE" == "INFO" ]; then
    echo -e "[${P}#${WT}] Lendo informações...\n"
    mtk printgpt
fi

# --- Finalização ---
if [ "$WAS_RUNNING" = true ]; then
    echo -e "[${B}*${WT}] Restaurando ModemManager..."
    sudo systemctl start ModemManager &> /dev/null
fi

echo -e "\n${CY}┌──────────────────────────────────────────────────────────┐${WT}"
echo -e "${CY}│${G}             ${PS} PROCESSO CONCLUÍDO!                         ${CY}│ ${WT}"
echo -e "${CY}└──────────────────────────────────────────────────────────┘${WT}"
kitty
