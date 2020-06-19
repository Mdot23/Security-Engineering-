import ftplib 

def annonLogin(hostname):
    try:
        ftp = ftplib.FTP(hostname)
        ftp.login('anonymous', 'me@your.com')
        print('\ns ' + str(hostname) +\
            ' FTP Anonymous Logon Succeeded.')
        ftp.quit()
        return True 
    except Exception, e:
        print('\n ' + str(hostname) +\
            ' FTP Anonymous Logon Failed.'
        return false 
    host = '192.168.95.179'
    annonLogin(host)

