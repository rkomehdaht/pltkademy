#we have 100 configuration files on Linux server in /home/fuser. Task is to change server name nginx-01.com to nginx-02.com in all configuration files

#choosing folder
cd /home/fuser

#The grep output is then piped to sed (through xargs) which is used to actually replace text
grep -RiIl 'nginx-01.com' | xargs sed -i 's/nginx-01.com/nginx-02.com/g'