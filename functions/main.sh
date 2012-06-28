critColour() {
	case $2 in 
		"1")
			echo "\033[1;36m[?] INFO:\033[0m $1"
			;;
		"2")	
			echo "\033[1;33m[*] AVISO:\033[0m $1"
			;;
		"3")
			echo "\033[1;31m[>] IMPORTANTE:\033[0m $1"
			;;
		*)
			echo "[??] $1"
	esac
}

checklist() {
        if [ ! -z "`grep -E \"^${2}\" ${1}`" ]; then
		critColour "${4}" "${3}";
        fi
}

checknot() {
	if [ -z "`grep -E \"^${2}\" ${1}`" ]; then
		critColour "${4}" "${3}";
        fi
}
