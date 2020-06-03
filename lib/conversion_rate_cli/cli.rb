class Cli

    def run
        input = " "
        Api.get_conversion_rate
        puts "Welcome to Conversion Currency CLI!" 
        while input != "exit"
            puts "Conversion Currency rates are based on 1 US Dollar."
            puts " "
            puts "To get conversion rate, type 'enter'."
            puts "To quit, type 'exit'."
            input = gets.strip.downcase

            if input == "enter"
                enter
            elsif input == "exit"
                 puts "Good bye and thank you for using Conversion Currency"

            elsif input != "enter" && input != "exit"
                puts "Please choose a valid input." 
                puts " "
            end
        end
        
    end

    def enter
        puts "Here is a list of all the Currency Codes of different countries."
        puts " "
        ConversionRate.all.each.with_index(1) do |conrate, index|   
            puts "#{index}. #{conrate.code}" 
        end
        puts "Please enter number of Currency Code for exchange rate."
        input = gets.strip.to_i
        if input >= 1 && input <= ConversionRate.all.length
            conrate = ConversionRate.all[input-1]
            puts "#{conrate.code} = #{conrate.rate}"
            sleep 0.5
            exit?
        else
            puts "Please choose a valid number." 
            sleep 2
            enter
        end
    end

    def exit?
        puts "exit or continue?"
        input = gets.chomp.downcase
        if input == "exit"
            puts "Good bye and thank you for using Conversion Currency"
            exit
        elsif input == 'continue'
            enter
        else
            exit?
        end
    end
end
   

