# Security-Engineering-
Code to solve Pentesting/Ethical Hacking solutions and defend against them 



# Buffer Overflow 
(buffer_overflow.c)

1. gcc -o overflow_example buffer_overflow.c 
2. ./overflow_example 1234567890


# FTP Injection
(k985ytv_FTPInjection.py)

Set up FTP on RedHat
1. systemctl start vsftpd
2. systemctl enable vsftpd 

Set up Firewall
3. firewall-cmd --permanent --add-service=ftp
4. firewall-cmd --reload 

Set up anonymous access for this to work 
// Configuration file for vsftpd
5. vim /etc/vsftpd/vsftpd.conf
6. Change anonymous_enable=NO to anonymous_enable=YES

