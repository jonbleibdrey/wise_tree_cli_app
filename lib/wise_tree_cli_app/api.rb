
class API

    BASE_URL = "https://type.fit/api/quotes"



    def self.get_quotes
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response)

        #self.createquotes(data)creates
    end

    def self.createquotes(data)
        data.map do |quote|
            Quote.new(quote["author"], quote["text"])
        end
    end

#binding.pry
end

