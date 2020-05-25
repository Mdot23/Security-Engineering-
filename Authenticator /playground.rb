# Sample theoretical database table 
users = [
    { username: "Milton", password: "Password1"},
    { username: "Sara", password: "Password2"},
    { username: "Aubrey", password: "Password3"},
    { username: "Jordan", password: "Passowrd4"},
    { username: "Rod", password: "Password5"}
]

# Auth Method: Instead of using braek in exeuction flow below, this can be abstracted into it's own method.
# Instead of using break in execution flow, this can be referenced used to authenticate users for multiple reasons.
# def auth_user username, password, list_of_users

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
    # Compare the username received as input to user hash. In ruby this can be specified as simple user[:username] 
    users.each do |user|
        if user[:username] == username && user[:password] == password
            puts user
            break
        else
            puts "Credentials incorrect"
        end
    end
    puts "Press n to quit or any otehr key to continue: "
    input = gets.chomp.downcase 
    break if input == "n"
    attempts += 1 
end  



