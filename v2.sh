#!/bin/bash
Color_off='\033[0m'
Color='\033[1;35m'
# }}}
fancyprint () {
    printf '%b\n' "$1$2$Color_off" >&2
}
# }}}
fancyprint ${Color} ">> ENTER DOMAIN:"
read DOMAIN && wait
# }}}
echo""
fancyprint ${Color} ">> https://www.$DOMAIN 🌈"
# }}}
PS3='➡ '
options=("Build" "Deploy" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Build")
            npm run build
            echo ""
            fancyprint ${Color} ">> Build complete"
            echo ""
            echo "2) Deploy"
            echo "3) Exit"
            ;;
        "Deploy")
            surge $PWD/public/ $DOMAIN
            echo ""
            fancyprint ${Color} "🚀: https://www.$DOMAIN"
            echo ""
            exit 0
            ;;
        "Exit")
            echo ""
            fancyprint ${Color} "🚀: https://www.$DOMAIN"
            echo ""
            exit 0
            ;;
        *) fancyprint ${Color} ">> $REPLY is not an option, dude.";;
    esac
done
