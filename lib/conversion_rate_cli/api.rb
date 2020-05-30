class Api
puts "Api class loaded"
    

    BASE_URL = "https://open.exchangerate-api.com/v6/latest"

    def self.get_conversion_rate
        res = RestClient.get(BASE_URL)
        data = JSON.parse(res.body)
        # binding.pry
        data["rates"].each do |k, v|
           ConversionRate.new(k, v)
        
        end
    end

end
