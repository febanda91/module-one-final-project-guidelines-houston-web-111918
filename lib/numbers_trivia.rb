class NumbersTrivia
    def gets_num_and_show_fact
        @number = get_number_from_user
        
        #michael's code. 
        if @number == nil
            puts "You did not enter a number!"
            gets_num_and_show_fact
        end
        
        
        @fact = web_request(@number)
        system("clear")
<<<<<<< HEAD
        puts "************************\n\n#{fact}\n\n************************\n\n\n"
        #need to create conditional method. if can't find number in data base, then create a new num instance FIX THIS
=======
        puts "************************\n\n#{@fact}\n\n************************\n\n\n"
>>>>>>> ba142f0f8142e5760727eeeacccafd50427c3952
        $num_instance = find_or_create_number_instance
        $fact_instance = find_or_create_fact_instance
    end

    def find_or_create_number_instance
        if Number.find_by(int_num: @number) == nil
            Number.create(int_num: @number)
        else 
            Number.find_by(int_num: @number)
        end
    end

    def find_or_create_fact_instance
        if PettyFact.find_by(petty_fact: @fact) == nil
            PettyFact.create(petty_fact: @fact, number: $num_instance)
        else
            PettyFact.find_by(petty_fact: @fact)
        end
    end
        
    def get_number_from_user
        puts "************************\n\n"
        puts "What number would you like to learn about? Enter an integer.\n\n"
        input = gets.chomp
<<<<<<< HEAD
        if input === input.to_i ? "It's an integer" : "It's a string"
            input
=======

        if input != "0" && input.to_i == 0
            return nil
>>>>>>> ba142f0f8142e5760727eeeacccafd50427c3952
        elsif input.downcase == "exit" || input.downcase == "exit!"
            system('clear')
            puts "************************\n\n"
            puts "BYE, FELICIA!"
            puts "\n************************\n"
            exit 
<<<<<<< HEAD
        else input
            puts "'#{input}' is not a number!\n\n"
            get_number_from_user
=======
        else
            return input
>>>>>>> ba142f0f8142e5760727eeeacccafd50427c3952
        end
    end
    
    def web_request(number)
        RestClient.get("http://numbersapi.com/#{number}").body
    end
end








