# Install Open SSH
sudo apt update
sudo apt install openssh-server
sudo systemctl status ssh
sudo ufw allow ssh

# Connect: `ssh username@ip_address`
# Check ip_address: `ip a`