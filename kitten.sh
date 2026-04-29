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
# --- Banners e Artes ---
printerase () {
echo -e "${CY}┌────────────────────────────────────────────────────────┐${WT}"
echo -e "${CY}│${WT}             ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}             ${CY}│${WT}"
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
echo -e "${CY}│${WT}             ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}             ${CY}│${WT}"
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
echo -e "${CY}│${WT}             ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}             ${CY}│${WT}"
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

show_dev() {
    clear
    echo -e "${B}"
    cat << 'EOF'
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔        :john
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠭⣿⣿⣿⣶⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⡿⠁⠀⠀⠀⠀⠀⠀  :xk.xzl
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡿⣿⡿⣿⣿⣿⣿⣦⣴⣶⣶⣶⣶⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⢀⣀⣤⣲⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀ :xkzetsu
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡝⢿⣌⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣾⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠲⡝⡷⣮⣝⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣦⣝⠓⠭⣿⡿⢿⣿⣿⣛⠻⣿⠿⠿⣿⣿⣿⣿⣿⣿⡿⣇⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣤⡀⠈⠉⠚⠺⣿⠯⢽⣿⣷⣄⣶⣷⢾⣿⣯⣾⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⡟⠀⠀⣴⣿⣿⣼⠈⠉⠃⠋⢹⠁⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣀⣀⣀⣀⣴⣿⣿⡿⣿⠀⠀⠀⠀⠇⠀⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⢿⢿⣾⣿⣿⡿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠿⢿⡄⢦⣤⣤⣶⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠘⠛⠋⠁⠁⣀⢉⡉⢻⡻⣯⣻⣿⢻⣿⣀⠀⠀⠀⢠⣾⣿⣿⣿⣹⠉⣍⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠠⠔⠒⠋⠀⡈⠀⠠⠤⠀⠓⠯⣟⣻⣻⠿⠛⠁⠀⠀⠣⢽⣿⡻⠿⠋⠰⠤⣀⡈⠒⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠔⠊⠁⠀⣀⠔⠈⠁⠀⠀⠀⠀⠀⣶⠂⠀⠀⠀⢰⠆⠀⠀⠀⠈⠒⢦⡀⠉⠢⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠊⠀⠀⠀⠀⠎⠁⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠀⠀⠰⠃⠀⠀⠀⠀⠀⠀⠀⠈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠿⠭⠯⠭⠽⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

EOF
    echo -e "${WT}"
    echo -e "              ${P}Coding... Life is a exploit.${WT}\n"
    exit 0
}

show_help() {
    clear
    echo -e "${P}"
    cat << 'EOF'
      |\__/,|   (`\
    _.|o o  |_   ) )  [ KITTY HELP SYSTEM ]
---(((---(((---------------------------------------
EOF
    echo -e "${WT}"
    echo -e "${CY}--- INFORMAÇÕES IMPORTANTES ---${WT}"
    echo -e "${B}[!]${WT} Criador: ${P}Dev John (Android)${WT}"
    echo -e "${B}[!]${WT} Status: ${R}FERRAMENTA PRIVADA / NÃO PÚBLICA${WT}"
    echo -e "${B}[!]${WT} Alvo:   Sistemas baseados em Linux"
    echo -e ""
    echo -e "${CY}--- COMO INSTALAR O MTKCLIENT ---${WT}"
    echo -e "${G}# ARCH LINUX / ARTIX / GARUDA:${WT}"
    echo -e "  sudo pacman -S mtkclient-git (via AUR)"
    echo -e "  ou: yay -S mtkclient"
    echo -e ""
    echo -e "${G}# DEBIAN / UBUNTU / KALI:${WT}"
    echo -e "  sudo apt update && sudo apt install mtkclient"
    echo -e "  ou via pip: pip3 install mtkclient"
    echo -e ""
    echo -e "${G}# FEDORA:${WT}"
    echo -e "  sudo dnf install mtkclient"
    echo -e ""
    echo -e "${Y}DICA:${WT} Certifique-se de que seu usuário está no grupo 'uucp' ou 'dialout'."
    echo -e "${Y}DICA:${WT} Reinicie o sistema após instalar as regras de udev."
    echo ""
    exit 0
}

# --- Verificação de Argumentos ---
if [ "$1" == "kittyhelp" ]; then
    show_help
elif [ "$1" == "devprint" ]; then
    show_dev
fi

# --- Funções de Verificação ---
check_usb() {
    lsusb | grep -i "0e8d"
}

# --- Cabeçalho Principal ---
clear
banner
echo -e "${Y}[AVISO]${WT} Software destinado exclusivamente a sistemas Linux."
# --- Estágio 1: Dependências ---
echo -ne "[${B}*${WT}] Verificando ferramentas..."
if ! command -v mtk &> /dev/null; then
    echo -e "\n[${R}x${WT}] ${R}ERRO:${WT} MTK não encontrado."
    echo -e "[${B}i${WT}] Use '${G}bash $0 kittyhelp${WT}' para ajuda."
    exit 1
else
    echo -e " [${G}OK${WT}]"
fi

# --- MENU DE OPÇÕES ---
echo -e "\n${B}Escolha uma operação:${WT}"
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
if [ "$MODE" == "INFO" ]; then printinfo; else printerase; fi # <--- Define o banner de espera
#printinfo
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

# --- Estágio 3: Gestão do ModemManager ---
WAS_RUNNING=false
if systemctl is-active --quiet ModemManager; then
    echo -e "[${B}*${WT}] Parando ModemManager..."
    sudo systemctl stop ModemManager &> /dev/null
    WAS_RUNNING=true
fi

# --- Execução ---
if [ "$MODE" == "ERASE" ]; then
    printerase
    echo -e "[${P}#${WT}] Executando Wipe Geral..."
    mtk multi "e userdata; e cache; e metadata; e frp" &> /dev/null
    
    if [ $? -eq 0 ]; then
        echo -e "[${G}SUCCESS${WT}] Partições limpas!"
        mtk reset &> /dev/null
    else
        echo -e "[${R}x${WT}] Falha no processo de Erase."
    fi

elif [ "$MODE" == "INFO" ]; then
    printinfo
    echo -e "[${P}#${WT}] Lendo informações do dispositivo...\n"
    mtk printgpt
fi

# --- Finalização ---
if [ "$WAS_RUNNING" = true ]; then
    sudo systemctl start ModemManager &> /dev/null
fi

echo -e "\n${CY}──────────────────────────────────────────────────────────${WT}"
echo -e "${G}          ${PS} PROCESSO CONCLUÍDO!                       ${WT}"
echo -e "${CY}──────────────────────────────────────────────────────────${WT}"
kitty
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
# --- Banners e Artes ---
printerase () {
echo -e "${CY}┌────────────────────────────────────────────────────────┐${WT}"
echo -e "${CY}│${WT}             ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}             ${CY}│${WT}"
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
echo -e "${CY}│${WT}             ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}             ${CY}│${WT}"
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
echo -e "${CY}│${WT}             ${G}MTK USB MONITOR & CRACKING ${PS}  ${WT}             ${CY}│${WT}"
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

show_dev() {
    clear
    echo -e "${B}"
    cat << 'EOF'
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔        :john
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠭⣿⣿⣿⣶⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⡿⠁⠀⠀⠀⠀⠀⠀  :xk.xzl
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡿⣿⡿⣿⣿⣿⣿⣦⣴⣶⣶⣶⣶⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⢀⣀⣤⣲⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀ :xkzetsu
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡝⢿⣌⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣾⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠲⡝⡷⣮⣝⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣦⣝⠓⠭⣿⡿⢿⣿⣿⣛⠻⣿⠿⠿⣿⣿⣿⣿⣿⣿⡿⣇⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣤⡀⠈⠉⠚⠺⣿⠯⢽⣿⣷⣄⣶⣷⢾⣿⣯⣾⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⡟⠀⠀⣴⣿⣿⣼⠈⠉⠃⠋⢹⠁⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣀⣀⣀⣀⣴⣿⣿⡿⣿⠀⠀⠀⠀⠇⠀⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⢿⢿⣾⣿⣿⡿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠿⢿⡄⢦⣤⣤⣶⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠘⠛⠋⠁⠁⣀⢉⡉⢻⡻⣯⣻⣿⢻⣿⣀⠀⠀⠀⢠⣾⣿⣿⣿⣹⠉⣍⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠠⠔⠒⠋⠀⡈⠀⠠⠤⠀⠓⠯⣟⣻⣻⠿⠛⠁⠀⠀⠣⢽⣿⡻⠿⠋⠰⠤⣀⡈⠒⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠔⠊⠁⠀⣀⠔⠈⠁⠀⠀⠀⠀⠀⣶⠂⠀⠀⠀⢰⠆⠀⠀⠀⠈⠒⢦⡀⠉⠢⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠊⠀⠀⠀⠀⠎⠁⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠀⠀⠰⠃⠀⠀⠀⠀⠀⠀⠀⠈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠿⠭⠯⠭⠽⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

EOF
    echo -e "${WT}"
    echo -e "              ${P}Coding... Life is a exploit.${WT}\n"
    exit 0
}

show_help() {
    clear
    echo -e "${P}"
    cat << 'EOF'
      |\__/,|   (`\
    _.|o o  |_   ) )  [ KITTY HELP SYSTEM ]
---(((---(((---------------------------------------
EOF
    echo -e "${WT}"
    echo -e "${CY}--- INFORMAÇÕES IMPORTANTES ---${WT}"
    echo -e "${B}[!]${WT} Criador: ${P}Dev John (Android)${WT}"
    echo -e "${B}[!]${WT} Status: ${R}FERRAMENTA PRIVADA / NÃO PÚBLICA${WT}"
    echo -e "${B}[!]${WT} Alvo:   Sistemas baseados em Linux"
    echo -e ""
    echo -e "${CY}--- COMO INSTALAR O MTKCLIENT ---${WT}"
    echo -e "${G}# ARCH LINUX / ARTIX / GARUDA:${WT}"
    echo -e "  sudo pacman -S mtkclient-git (via AUR)"
    echo -e "  ou: yay -S mtkclient"
    echo -e ""
    echo -e "${G}# DEBIAN / UBUNTU / KALI:${WT}"
    echo -e "  sudo apt update && sudo apt install mtkclient"
    echo -e "  ou via pip: pip3 install mtkclient"
    echo -e ""
    echo -e "${G}# FEDORA:${WT}"
    echo -e "  sudo dnf install mtkclient"
    echo -e ""
    echo -e "${Y}DICA:${WT} Certifique-se de que seu usuário está no grupo 'uucp' ou 'dialout'."
    echo -e "${Y}DICA:${WT} Reinicie o sistema após instalar as regras de udev."
    echo ""
    exit 0
}

# --- Verificação de Argumentos ---
if [ "$1" == "kittyhelp" ]; then
    show_help
elif [ "$1" == "devprint" ]; then
    show_dev
fi

# --- Funções de Verificação ---
check_usb() {
    lsusb | grep -i "0e8d"
}

# --- Cabeçalho Principal ---
clear
banner
echo -e "${Y}[AVISO]${WT} Software destinado exclusivamente a sistemas Linux."
# --- Estágio 1: Dependências ---
echo -ne "[${B}*${WT}] Verificando ferramentas..."
if ! command -v mtk &> /dev/null; then
    echo -e "\n[${R}x${WT}] ${R}ERRO:${WT} MTK não encontrado."
    echo -e "[${B}i${WT}] Use '${G}bash $0 kittyhelp${WT}' para ajuda."
    exit 1
else
    echo -e " [${G}OK${WT}]"
fi

# --- MENU DE OPÇÕES ---
echo -e "\n${B}Escolha uma operação:${WT}"
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
if [ "$MODE" == "INFO" ]; then printinfo; else printerase; fi # <--- Define o banner de espera
#printinfo
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

# --- Estágio 3: Gestão do ModemManager ---
WAS_RUNNING=false
if systemctl is-active --quiet ModemManager; then
    echo -e "[${B}*${WT}] Parando ModemManager..."
    sudo systemctl stop ModemManager &> /dev/null
    WAS_RUNNING=true
fi

# --- Execução ---
if [ "$MODE" == "ERASE" ]; then
    printerase
    echo -e "[${P}#${WT}] Executando Wipe Geral..."
    mtk multi "e userdata; e cache; e metadata; e frp" &> /dev/null
    
    if [ $? -eq 0 ]; then
        echo -e "[${G}SUCCESS${WT}] Partições limpas!"
        mtk reset &> /dev/null
    else
        echo -e "[${R}x${WT}] Falha no processo de Erase."
    fi

elif [ "$MODE" == "INFO" ]; then
    printinfo
    echo -e "[${P}#${WT}] Lendo informações do dispositivo...\n"
    mtk printgpt
fi

# --- Finalização ---
if [ "$WAS_RUNNING" = true ]; then
    sudo systemctl start ModemManager &> /dev/null
fi

echo -e "\n${CY}──────────────────────────────────────────────────────────${WT}"
echo -e "${G}          ${PS} PROCESSO CONCLUÍDO!                       ${WT}"
echo -e "${CY}──────────────────────────────────────────────────────────${WT}"
kitty
