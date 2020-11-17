class CheckGraphics::CLI
    def call
        #cards
        list
        exit
    end

    def cards
        
    end

    def list
        input = nil
        puts "Which Graphics cards would you like to look at today?"
        puts "Enter the number of card you would like to see (ex. 3070, 3080, 3090) or enter exit to finish."
        while input != "exit"
            input = gets.strip
            case input
            when "3070"
                gc3070 = CheckGraphics::Scrape.scrape_site("rtx3070")
                #binding.pry
                puts gc3070.display_info
            when "3080"
                gc3080 = CheckGraphics::Scrape.scrape_site("rtx3080")
                puts gc3080.display_info
            when "3090"
                gc3090 = CheckGraphics::Scrape.scrape_site("rtx3090")
                puts gc3090.display_info
            else
                puts "Please enter a number from the following (3070, 3080, 3090) or exit if finished."
            end
        end
    end

    def exit
        puts "Check in tomorrow for updates!"
    end
end