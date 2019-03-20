class Login

    def login_menu
        puts "************************\n\n"
        puts "Choose an option:\n\n"
        puts "1. Create an Account"
        puts "2. Log in to an Existing Account\n\n"
<<<<<<< HEAD
        puts "At any time, enter 'Exit' if you want to leave the program\n\n"
        login_options_input #after presenting the user with their options it moves them to the "login_options_input" method so they can enter their input
=======
        login_options_input
>>>>>>> ba142f0f8142e5760727eeeacccafd50427c3952
    end

    def login_options_input
        input = gets.chomp.downcase #lets user input their data and the "downcase" turns whatever they inputed into downcase
        system("clear") #clears terminal after executing response 
        $account_instance = nil 

        if input == "1" || input == "1."
            $account_instance = create_account      #setting a global variable equal to a method and running the method at the same time then defaulting to start_trivia as the next move
            start_trivia
        elsif input == "2" || input == "2."
            $account_instance = login_to_existing_account  #setting a global variable equal to a method and running the method at the same time then defaulting to start_trivia as the next move
            start_trivia
        elsif input == "exit" || input == "exit!"
            system("clear")
            puts "************************\n\n"
            puts "'Exit' wasn't listed as option, but fine...BYE!"
            puts "\n\n************************"
            exit
        else
            puts "Yo... Enter number 1 or 2..."
            login_options_input 
        end
    end
     
    def create_account
        created_user = username_input
        is_unique = TRUE

        User.all.each do |user|
            if created_user == user.username
                is_unique = FALSE
            end
        end
    
        if is_unique == TRUE
            created_user = User.create(username: created_user) 
            created_user.update(age: age_input, gender: gender_input)
        else is_unique == FALSE
            puts "\n"
            puts "************************\n\n"
            puts "This username already exists!"
            puts "Create a unique username or log in to your existing account.\n\n"
            login_menu
        end
        created_user 
    end

    def username_input
        system("clear")
        puts "************************\n\n"
        puts "Ok, let's create your account... Gimme a unique username: \n\n"
        gets.chomp.capitalize
    end

    def age_input
        system("clear")
        puts "************************\n\n"
        puts "How old are you?\n\n"
        gets.chomp 
    end

    def gender_input
        system("clear")
        puts "************************\n\n"
        puts "What is your gender?\n\n"
        gets.chomp.downcase
    end

    def login_to_existing_account 
        puts "************************\n\n"
        puts "Enter your login information:\n\n"
        input = gets.chomp.capitalize
        if User.all.find_by(username: input) == nil
            puts "You lie! You do not have an account yet!\n\n"
            puts "************************\n\n"
            puts "1. Create an Account"
            puts "2. Log in to an Existing Account\n\n"
            login_options_input
        else
            User.all.find_by(username: input)
        end  
    end

    def start_trivia
        system("clear")
        puts "************************\n\n"
        puts "Greetings, #{$account_instance.username}!\n\n"
        puts "We are now ready to learn some PETTY facts about numbers!\n\n"
        trivia_or_bookmarks?
    end

    def trivia_or_bookmarks?
        puts "************************\n\n"
        puts "Would you like to:\n\n1. View a NEW petty fact?"
        puts "2. View your bookmarks?"
        puts "3. Exit program\n\n"
        input = gets.chomp.downcase
        if input == "1" || input == "1."
            system ("clear")
            enter_number
        elsif input == "2" || input == "2."
            system ("clear")
            puts "************************\n\n"
            view_all_bookmarks
            puts ""
            trivia_or_bookmarks?
        elsif input == "3" || input == "3." || input == "exit" || input == "exit!"
            system("clear")
            puts "************************\n\n"
            puts "Thank you! Come again!\n\n"
            puts "************************\n\n"
            exit
        else
            system("clear")
            puts "\n\nYo... You have three options! \n\n"
            trivia_or_bookmarks?
        end
    end

    def enter_number
        t = NumbersTrivia.new
        t.gets_num_and_show_fact
        bookmark_menu
    end

    def bookmark_menu
        puts "Would you like to save this interesting but PETTY fact in your bookmarks?\n\n"
        bookmark_menu_input
    end

    def bookmark_menu_input
        input = gets.chomp
        system("clear")
        if input.downcase == "yes"
            Bookmark.create(user: $account_instance, petty_fact: $fact_instance)
            puts "************************\n\n"
            puts "You have successfully saved that PETTY fact!\n\n"
            trivia_or_bookmarks?
        elsif input.downcase == "no"
           other_options 

        elsif input.downcase == "exit" || input.downcase == "exit!"
            exit
        else
            puts "************************\n\n"
            puts "That wasn't an option...'Yes' or 'No', please!\n\n"
            bookmark_menu  
        end
    end


    def view_all_bookmarks
        if Bookmark.all.find_by(user: $account_instance) == nil
            puts "You don't have any bookmarks."
            puts "It's probably a better idea if you choose number 1.\n\n"
            trivia_or_bookmarks?
        else
            all_bookmarks = Bookmark.all.find_by(user: $account_instance)
            facts = all_bookmarks.user.petty_facts
            list_of_facts = facts.map do |fact|
                "\u2022 #{fact.petty_fact}"
            end
            puts "Apparently, you think these PETTY facts are interesting enough to save: \n\n"
            puts list_of_facts
        end
    end


    def other_options
        system("clear")
        puts "************************\n\n"
        puts "Okay...Would you like to...\n\n1. See the another fact about that same number?(doesn't work yet) \n2. Enter a new number?\n\n"
        other_options_input
    end

    def other_options_input
        input = gets.chomp.downcase
        system("clear")
        if input == "1" || input == "1."
            puts "This doesn't work yet."
            trivia_or_bookmarks?
        elsif input == "2" || input == "2."
            enter_number
        elsif input == "exit" || input == "exit!"
            exit
        else
            puts "************************\n\n"
            puts "That wasn't an option!\n\n"
            puts "Would you like to..."
            puts "1. See another fact about that same number?(doesn't work yet)"
            puts "2. Enter a new number?"
            other_options_input
        end
    end
end