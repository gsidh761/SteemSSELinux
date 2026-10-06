echo "SteemSSE Linux Port For Arch v1.0.0"
echo "Made By Gureet Sidhu (@gsidh761)"
echo ""
echo "Setting Up Enviroment..."
rm -rf ~/.local/share/applications/xsteem64.desktop
sudo cp -r ../SteemSSELinux/ /usr/local/bin/
echo "Installing Libs..."
sudo cp ./libs/* /usr/lib
echo "Install Xwayland..."
sudo pacman -S xorg-xwayland
echo "Installing Start Menu Shortcut..."
sudo cp xsteem64.desktop ~/.local/share/applications
echo "Installing Command Line Utility..."
sudo cp ./bin/launch_steem /usr/local/bin
echo "Done..."
sudo ldconfig
exec "$SHELL" # Reload shell
