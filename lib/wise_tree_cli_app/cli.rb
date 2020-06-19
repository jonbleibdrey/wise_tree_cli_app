require_relative '../environment'

class Cli


    attr_reader :list
    

    def initialize
        puts " "
        puts "    
             
'##:::::'##:'####::'######::'########::::'########:'########::'########:'########::::
##:'##: ##:. ##::'##... ##: ##.....:::::... ##..:: ##.... ##: ##.....:: ##.....:::::
##: ##: ##:: ##:: ##:::..:: ##::::::::::::: ##:::: ##:::: ##: ##::::::: ##::::::::::
##: ##: ##:: ##::. ######:: ######::::::::: ##:::: ########:: ######::: ######::::::
##: ##: ##:: ##:::..... ##: ##...:::::::::: ##:::: ##.. ##::: ##...:::: ##...:::::::
##: ##: ##:: ##::'##::: ##: ##::::::::::::: ##:::: ##::. ##:: ##::::::: ##::::::::::
. ###. ###::'####:. ######:: ########::::::: ##:::: ##:::. ##: ########: ########::::
:...::...:::....:::......:::........::::::::..:::::..:::::..::........::........:::::
                                                                                    
                         .                                                              
                         (..(*,,(. .                                   
                          * ., ./  * /( (                              
                         ,.( ((  .* (( * ,/*   .                       
                  #   / .#  .** * ,   .*,/, (                          
               *  .   * (, ,. ( ,*.*  (,*( *  (./                      
              **   .,*(  / . * ( .*/,,.. / ( (* ,                      
               ,.  .. /  . ,*( //(*  ...  , /,. /                      
            /*     .   ,. *.    /*   .  , (   . *                      
            .* .,,,,  *.,/* .,  /,  * *, ..,,, ,*         .            
            .,,   *,///,,* /..../ *  . ,,** .* * ,*                    
            *. ,    * * .  *.  /*  ,   ,    ,, ,. /        .           
            . ., .., *,.*,  ***** * */**,. *    .*                     
                  ,..,   ,, , ****,,,   ,  * *                         
.                         ,    * , ***  .. *,,                              
                              ***                                      
            .                ,***,                                     
                           .******,  
                            
                           
                           "
        #API.new
        # Quote.new
        puts"WELCOME TO WISE TREE APP"
        puts " "
        puts "Where you can ask the tree of wisdom for just a bit, of his wisdom."
        puts ""
        puts "~~~~Story Time~~~~"
        puts ""
        puts "One day tiny buddha was sitting under his tree of wisdom." 
        puts "He was having a rough day with his studies, he needed a little help from his freinds."
        puts "So he looked at the wise tree and asked..." 
        puts "Please HELP me!" 
        puts "I would like to know famous words from all the wise men."
        puts "Dead or alive. From past, or future!"
        puts ""
        puts "~~~~your wish is my command~~~~"
        puts ""
        Quote.populate_all
        main_menu
    end

    def main_menu
        puts "please choose one"
        puts "if you want a quote randomly type: 1" 
        puts "if you want to search by first name type: 2"
        puts "if you want to search by last name type: 3"
        puts "if you want to search by first letter type: 4"
        puts "if you want to search by last letter type: 5"
        puts "if you want a a whole list type: 6"
        puts "if you want to exit type: Goodbye"
        user_input = gets.strip
        
        if user_input.to_i == 1
            random = Quote.get_random 
            puts ""
            puts random
            puts""
            magic_maker
    
            
            

        elsif user_input.to_i == 2
            puts" Type first name of historical figure"   
            user_input = gets.strip
            puts""
            if Quote.all.any?{|quote| quote.name.split(" ").first == user_input.capitalize}
            firstname = Quote.first_name(user_input)
            puts ""
            puts firstname
            else 
            puts""
            puts "~~~~ wrong input, but just like life this brings you back around so you can have a second chance. ~~~~"
            end
            puts ""
            magic_maker
        
    

        elsif user_input.to_i == 3
            puts" Type last name of historical figure"   
           user_input = gets.strip
           if Quote.all.any?{|quote| quote.name.split(" ").last == user_input.capitalize}
           lastname = Quote.last_name(user_input)
           puts ""
           puts lastname
           puts""
           else 
           puts""
           puts "~~~~ wrong input, but just like life this brings you back around so you can have a second chance. ~~~~"
           end
           puts""
           magic_maker

        elsif user_input.to_i == 4
           puts" Type first letter of historical figure"   
           user_input = gets.strip
           firstletter = Quote.first_letter(user_input)
           firstletter.each do |quote|
            puts ""
            puts quote.name + ": " +quote.text
            end
            puts ""
            puts "~~~~so close, but away we go~~~~~"
            puts ""
            magic_maker
           

        elsif user_input.to_i == 5
            puts" Type last letter of historical figure"   
            user_input = gets.strip
            lastletter = Quote.last_letter(user_input)
            lastletter.each do |quote|
             puts ""
             puts quote.name + ": " +quote.text
             end
            puts ""
            puts "~~~~so close, but away we go~~~~~"
            puts ""
             magic_maker

        elsif user_input.to_i == 6
            
            all_quotes = Quote.all
            all_quotes.each do |quote|
            puts""
            puts quote.name + ": " +quote.text
            puts""
            end
            puts ""
            puts "WOW THAT WAS FUN, HAPPY READING!"
            puts ""
            magic_maker
        

        elsif user_input == "Goodbye"
            puts ""
            puts "Goodbye, go with the wisdom of the world."
            puts ""
            exit

        else
            puts ""
            puts "My young child, you didnt ask the right question. Please try again" 
            puts ""
            main_menu
        end
        

        
            
        
    
        


    end

        def magic_maker
        puts  "if you want to go back to the main menu type: 0"
            user_input = gets.strip
            if user_input == "0"
            main_menu
        
            else 
            puts "~~~~ Wrong answer my child ~~~~"
            puts  "if you want to go back to the main menu type: anything"
            user_input = gets.strip
            main_menu
            end
        end      
end        

         




   