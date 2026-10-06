echo "SteemSSE Linux Port For Fedora v1.0.0"
echo "Made By Gureet Sidhu (@gsidh761)"
echo ""
echo "Setting Up Enviroment..."
rm -rf ~/.local/share/applications/xsteem64.desktop
sudo cp -r ../SteemSSELinux/ /usr/local/bin/
echo "Installing Libs..."
sudo cp ./libs/* /usr/lib
sudo cp ./libs/* /usr/lib64
sudo cp ./libs/* /usr/local/lib
sudo cp ./libs/* /usr/local/lib64
echo "Installing XWayland to fix crashes on launch..."
sudo dnf install xorg-x11-server-Xwayland
echo "Installing Start Menu Shortcut..."
sudo cp xsteem64.desktop ~/.local/share/applications
echo "Installing Command Line Utility..."
sudo cp ./bin/launch_steem /usr/local/bin
echo "Done..."
bash --login
sudo ldconfig
