class ConversionRate
 attr_accessor :code, :rate 

 @@all = []

 def initialize(code, rate)
    @code = code
    @rate = rate

    @@all << self
 end 

 def self.all
    @@all
 end 


end