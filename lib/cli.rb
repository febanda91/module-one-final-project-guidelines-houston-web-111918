# this is the original version
# class CLI
    
#     def welcome_menu
#         puts "Welcome! \nReady to learn some petty facts about numbers? \nEnter yes or no."
#         welcome_options_input
#     end

#     def welcome_options_input
#         input = gets.chomp.downcase 
#         if input == "yes"
#             login_menu
#         elsif input == "no"
#             puts "Ok, goodbye then... AND NEVER COME BACK!!!!\n(just kidding. please come back and use our app.)"
#             exit
#         else 
#             puts "Can you read?!?!? I said to enter yes or no!!!"
#             welcome_options_input
#         end
#     end

#     def login_menu
#         puts "Choose an option:"
#         puts "1. Create an Account"
#         puts "2. Log in to an Existing Account"
#         login_options_input
#     end

#     def login_options_input
#         input = gets.chomp

#         if input == "1" || input == "1."
#             create_account_menu
#         elsif input == "2" || input == "2."
#             login_to_existing_account
#         else
#             puts "Yo... Enter number 1 or 2..."
#             login_options_input 
#         end
#     end
     
        
#     def create_account_menu
#         puts "Ok, let's create your account... Gimme a unique username: "
#         create_account_option
#     end

#     def create_account_option
#         input = gets.chomp
#         is_unique = TRUE

#         User.all.each do |user|
#             if input.downcase == user.username.downcase
#                 is_unique = FALSE
#             end
#         end

#         if is_unique == TRUE
#             current_user = User.create(username: input)
#             current_user.update(age: age_input, gender: gender_input)
#         else is_unique == FALSE
#             puts "This username already exists."
#             puts "Create a unique username or log in to your existing account."
#             login_menu
#         end
        
#         puts "Hi, #{current_user.username}."
#         current_user 
#     end

#     def age_input
#         puts "How old are you?"
#         gets.chomp 
#     end

#     def gender_input
#         puts "What is your gender?"
#         gets.chomp 
#     end


#     def login_to_existing_account
#         puts "enter your login information"
#         input = gets.chomp
#         puts input
#     end


#     # # def get_num_and_show_fact
#     # #     number = get_number_from_user
#     # #     puts = web_request(number)
#     # # end


#     # def get_number_from_user
#     #     print "Please enter a number: "
#     #     gets.chomp
#     # end
    
#     # def web_request(number)
#     #     RestClient.get("http://numbersapi.com/#{number}").body
#     # end
# end
