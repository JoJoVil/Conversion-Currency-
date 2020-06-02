class Cli

    def run
        input = " "
        Api.get_conversion_rate
        while input != "exit"

            puts "Welcome to Conversion Currency CLI!" 
            puts "Conversion Currency rates are based on 1 US Dollar."
            puts "To get conversion rate, type 'enter'."
            puts "To quit, type 'exit'."
            input = gets.strip.downcase

            if input == "enter"
                enter
              else
                puts "Please choose a valid number." 
                enter
                puts "Good Bye"
                exit
              end
            end
        end
    
    end

    def enter
        puts "Here is a list of all the Currency Codes of different countries."
        ConversionRate.all.each.with_index(1) do |conrate, index|   
        puts "#{index}. #{conrate.code}" 
        
        end
        puts "Please enter number of Currency Code for exchange rate."
        input = gets.strip.to_i
            if input >= 1 && input <= ConversionRate.all.length
            conrate = ConversionRate.all[input-1]
            puts "#{conrate.code} = #{conrate.rate}"
            # else
            # puts "Please choose a valid number." 
            # enter
        end
end
   

