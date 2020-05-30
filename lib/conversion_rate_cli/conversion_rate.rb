class ConversionRate
 attr_accessor :country, :rate 

 @@all = []

 def initialize(country, rate)
    @country = country
    @rate = rate

    @@all << self
 end 

 def self.all
    @@all
 end 


end