import ftplib 

def annonLogin(hostname):
    try:
        ftp = ftplib.FTP(hostname)
        ftp.login('anonymous', 'me@your.com')
        print('\ns ' + str(hostname) +\
            ' FTP Anonymous Logon Succeeded.')
        ftp.quit()
        return True 
    except Exception:
        print('\n ' + str(hostname) +\
            '\nFTP Anonymous Logon Failed.')
        return False 
    host = '192.168.95.179'
    annonLogin(host)

