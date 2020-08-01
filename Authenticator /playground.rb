# Sample theoretical database table 
users = [
    { username: "Milton", password: "Password1"},
    { username: "Sara", password: "Password2"},
    { username: "Aubrey", password: "Password3"},
    { username: "Jordan", password: "Passowrd4"},
    { username: "Rod", password: "Password5"}
]


# Add password strength function 
# 1. Minimum Password Strength: Done 
# 2. Require at least one uppercase letter:
# 3. Require at least one lowercase letter:
# 4. Require at least one number: 
# 5. Require at least one nonalphanumeric character: 


def password_strength_length password, list_of_users
    list_of_users.map do |user_record|
      user_record[:password] = password
      if user_record[:password].length <=8
        puts "The password must be 8 characters or more"
        break
      else 
        return true 
    end
  end
  end

# password_strength_length password, users

  
# Auth Method: Instead of using braek in exeuction flow below, this can be abstracted into it's own method.
# Instead of using break in execution flow, this can be referenced used to authenticate users for multiple reasons.
def auth_user username, password, list_of_users
     # Compare the username received as input to user hash. In ruby this can be specified as simple user[:username] 
     list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return username
            break
        else
            puts "Credentials incorrect"
            break
        end
    end
end

puts "Authenticator" 
25.times { print -"-" }
puts
puts "Take input from uer and compare password"
puts "If password is correct, you will get back object"

# Authenticator: Hash, Array, Branching, While Loops and designing program execution flow are good use cases for this 

# Maximum Attemptws: This will terminate the program by breaking out of hte loop if not less than 4.  
attempts = 1 
while attempts < 4 
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any otehr key to continue: "
    input = gets.chomp.downcase 
    break if input == "n"
    attempts += 1 
end  
puts "You have exceeded the number of attempts" if attempts == 4 





