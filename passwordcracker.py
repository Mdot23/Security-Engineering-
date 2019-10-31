import crypt 

"""
1. Open an encrypted password "password.txt" and read the contents
of each line. (open('file.txt')

2. For word(iterable) in file line split out the username and hashed password. 

3. For each hashed passwlsord, the main function calls
the checkPass() function that will test passwords against a dictionary file. 
"""

# Pass Parameter should contain encrypted password hash 

Pass = input('Pass: ')

def checkPass(Pass):
    salt = Pass[0:2]
    dictFile = open('/home/user/rockyou.txt')   
    for word in dictFile.readlines():
        word = word.strip('\n')
        cryptWord = crypt.crypt(word,salt) # Use hashlib library toreturn hash if SHA512 or different hash algorithim used. e.g. hashlib.sha512(b'fea')
        if (cryptWord == Pass):
            print('Found Password: {}'.format(word)) 
            return 
    print("Password not found")
    return 


def main():
    passFile = open('/etc/shadow', encoding='ISO-8859-1')
    for line in passFile.readlines():
        if ":" in line:
            user = line.split(':')[0]
            Pass = line.split(':')[1].strip(' ')
            print('Cracking Passwoerd For: {}'.format(user))
            checkPass(Pass)
if __name__ == "__main__":
    main()

