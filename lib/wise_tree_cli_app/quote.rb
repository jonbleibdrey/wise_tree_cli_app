class Quote
    attr_accessor :name, :text
    
    @@all = []
    
    def initialize(name, text)
        self.name = name
        self.text = text
        # if !self.name.nil?
        self.save
        # @@all = API.createquotes(API.get_quotes).select{|k|k.name}
        
    end
    
    def self.populate_all
        @@all = API.createquotes(API.get_quotes).select{|k|k.name}
    end
    
    def self.get_random
        r = @@all.sample
        puts ""
        puts " ~~~~your wish is my command~~~~"
        puts ""
        "
        #{r.name} : #{r.text} 
        ".strip
    end
    
    def self.first_name(name)
        quote_array = @@all.select do |object|
        object.name.split(" ").first.upcase == name.upcase
        end
        quote_array.first.name + ": " + quote_array.first.text 
    end
    
    def self.last_name(name)
       quote_array = @@all.select do |object|
           object.name.split(" ").last.upcase == name.upcase
       end
       quote_array.last.name + ": " + quote_array.last.text
    end

    def self.get_name
        @@all.map.with_index(1) do |object, number|
            "#{number}. #{object.name}"
        end
    end
    
    def self.first_letter(letter)
        @@all.select do |object|
            object.name.split(" ").first[0] == letter.upcase
        end
        
     end

     
     
     def self.last_letter(letter)
        @@all.select do |object|
            object.name.split(" ").last[0] == letter.upcase
        end
        
     end
     
     def reject_name
        @@all.reject{}
    end
    
    
    def self.all
        @@all
    end
    
    
    
    def save
        @@all << self
    end
   
end 
