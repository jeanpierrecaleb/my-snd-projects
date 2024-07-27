# Linux - virtualization - server - rsyn - backup
This project is for setting up backup for ensuring continous service

## Architecture


## Tools and Technologies
- Ubuntu Server : 10.0.2.4
- Ubuntu Desktop : 10.0.2.4 - 255.255.255.0 (classless)
- Web app folder
- Rsyn command
- Cron file

## Steps and instruction

Let's consider the computer A our Linux Server and the computer B Ubuntu desktop, our backup computer on which we are backing up the files as our diagram is showing.
Ubuntu to Kali or 192.168.195.2  to 192.168.195.100 | ubuntu-server to ubuntu desktop or 10.0.2.4 to 10.0.2.15
Rsync command very similar to scp command but can use ssh command
- Configure an ssh server on the second computer
* Installation ssh et verification
- Check if a connection is going through A and B using rsing and ssh
> ssh jeanpierre@10.0.2.15
Enter password after asked
- Check if I can mannually back up in the other machine using rsync
rsync -av -e ssh /home/userver-01/websites jeanpierre@10.0.2.15:/home/jeanpierre/backup_websites
Enter password after asked
- Create the key for authentication in the destination
Goal : backing up without using a password when running in the background using instead the key
> ssh-keygen -t ecdsa -f key-web-backup
Give the root the ownership of the private one for more secutiry. Change ownership : Needs to be read and write by root server users
> sudo shown root:root key-web-backup
Put it in root directory
> sudo mv key-web-backup /root
* Send the public key to the computer B, copy it to the right place
> scp key-web-backup.pub jeanpierre@10.0.2.15:/home/jeanpierre/
* Move the key in the .ssh/authorized_keys on the ubuntu server
> mkdir .ssh
Check the permission and fix it if needeed
> ls -l
> cp key-web-backup.pub .ssh/authorised_keys 
* Use the key instead of the password to backup, text with a simple file
> sudo rsync -av  -e "ssh -i /root/key_web-backup" /home/userver-01/test.txt
jeanpierre@10.0.2.15:/home/jeanpierre/backup_websites
- Open the cron file for inclue our backup line
> nano /etc/crontab
Write this line on the crontab file
- ***** root  sudo rsync -av -e "ssh -i /root/key-web-backup" /home/userver-01/websites jeanpierre@10.0.2.15/home/jeanpierre/backup_websites
Attention : we remove the / to include the folder itself
- Verify if everything is fine
Wait one minute to see on the ubuntu desktop
> ls ~/backup_website
- strengthen security by scanning and closing unwanted ports ???


## Comments
May not be very well yet so your point of view is welcome.

## Licence
Private project