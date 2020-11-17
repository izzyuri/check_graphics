#class CheckGraphics::CLI
class CLI
    def call
        cards
        list
        exit
    end

    def cards
        
    end

    def list
        input = nil
        while input != "exit"
            puts "Which Graphics cards would you like to look at today?"
            puts "Enter the number of card you would like to see (ex. 3070, 3080, 3090) or enter exit to finish."
            input = gets.strip
            case input
            when "3070"
            puts "3070 table"
            when "3080"
            puts "3080 table"
            when "3090"
            puts "3090 table"
            else
            puts "Please enter a number from the following (3070, 3080, 3090) or exit if finished."
            end
        end
    end

    def exit
        puts "Check in tomorrow for updates!"
    end
end