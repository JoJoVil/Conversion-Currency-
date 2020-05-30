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
       ConversionRate.all.each.with_index(1) {|conrate| puts "#{conrate.country} = #{conrate.rate}" } 
    end

    def welcome
        puts "Welcome to Conversion Currency CLI!"
    end


end 
