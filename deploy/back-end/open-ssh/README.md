# Open SSH
## Guildeline
https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-20-04/

## Install Open SSH
```bash
sudo apt update
sudo apt install openssh-server
sudo systemctl status ssh
sudo ufw allow ssh
```

## Connect 
```bash
ssh username@ip_address
ssh haikaito@192.168.68.137
```

## Check ip_address
```bash
ip a
```
