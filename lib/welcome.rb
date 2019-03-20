class Welcome
    
    def welcome_menu
        header = Artii::Base.new :font => 'slant' #'banner3-D'
        puts header.asciify("PETTY FACTS")
        puts "\nWelcome to the PETTY FACTS CLI APPLICATION!\n\n"
        puts "Prepare yourself for some MIND BLOWING pettiness. \n\n"
        puts "WARNING: App contains traces of sarcasm. User discretion is advised. \n\n"
        puts "Are you ready to learn some petty facts about numbers? (proceed with caution...)\n\n"
        welcome_options_input
    end

    def welcome_options_input
        input = gets.chomp.downcase 
        system("clear")
        if input == "yes"
            Login.new.login_menu
        elsif input == "no"
            puts "************************\n\n"
            puts "Ok, goodbye then... AND NEVER COME BACK!!!! \n(just kidding. please come back and use our app.)"
            puts "\n************************\n\n"
            exit
        else 
            puts "************************\n\n"
            puts "To learn or not to learn...that is a YES or NO question...\n\n"
            welcome_options_input
        end
    end

end

