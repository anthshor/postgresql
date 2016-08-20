
A process for installing postgresql
I've used vagrant to spin up a virtual machine using their Ubuntu base box and added the manual steps to install postgresql and the GUI admin tool

Manual Steps
On Host :
vagrant up
vagrant ssh

On Guest :
sudo apt-get update
sudo apt-get -y install postgresql postgresql-contrib pgadmin3
sudo -u postgres psql postgres
\password postgres
oracle
oracle
\q
sudo -u postgres createdb mydb
sudo -u postgres psql
CREATE EXTENSION adminpack;
\q
sudo apt-get install -y xfce4  tightvncserver  # prompts for input so not installing xfce4-goodies
vncserver
password x 2
n

On Host :
vncviewer
open a terminal window
pgadmin3
click "add a connection to server" (plug) and fill in form - see pic (mydb, 127.0.0.1, mydb, postgres, oracle, click OK) 
sudo vi /etc/postgresql/9.1/main/pg_hba.conf
 - change 'peer' to 'md5'
sudo /etc/init.d/postgresql reload
click server groups

-- End --


Reference:
https://help.ubuntu.com/community/PostgreSQL
https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-14-04


Notes:
1. sudo apt-cache search postgres  # => list package addons for postgres