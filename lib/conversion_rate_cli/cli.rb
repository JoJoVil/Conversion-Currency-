class Cli

    def run
        welcome
        Api.get_conversion_rate
        main
    end


    def main
        print_all
    end

    def print_all
       ConversionRate.all.each.with_index(1) {|conrate, index| puts "#{index}.#{conrate.code} = #{conrate.rate}" } 
    end

    def welcome
        input = " "
        while input != "exit"

            puts "Welcome to Conversion Currency CLI! 
            puts "Conversion rates are based on 1 US Dollar."
            puts "To get conversion rate, type 'enter'.
            puts "To quit, type 'exit'."
    
            input = gets.strip
    
        end

def enter
    
end 
