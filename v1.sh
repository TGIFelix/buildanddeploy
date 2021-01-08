#!/bin/sh
echo ""
echo "  ██████╗ ███╗   ██╗██████╗ "
echo "  ██╔══██╗████╗  ██║██╔══██╗"
echo "  ██████╔╝██╔██╗ ██║██║  ██║"
echo "  ██╔══██╗██║╚██╗██║██║  ██║"
echo "  ██████╔╝██║ ╚████║██████╔╝"
echo "  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ "
echo "  ----- BUILD & DEPLOY -----"
echo ""
echo ">> ENTER DOMAIN:"
read domain
npm run build
surge $PWD/public/ $domain
echo ""