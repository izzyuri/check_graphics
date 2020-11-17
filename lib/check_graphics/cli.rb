class CheckGraphics::CLI
    def call
        list
        exit
    end

    def list
        input = nil
        puts "Which Graphics cards would you like to look at today?"
        puts "Enter the number of card you would like to see (ex. 3070, 3080, 3090) or enter exit to finish."
        while input != "exit"
            input = gets.strip.downcase
            case input
            when "3070"
                gc3070 = CheckGraphics::Scrape.scrape_site("rtx3070")
                puts gc3070.display_info
            when "3080"
                gc3080 = CheckGraphics::Scrape.scrape_site("rtx3080")
                puts gc3080.display_info
            when "3090"
                gc3090 = CheckGraphics::Scrape.scrape_site("rtx3090")
                puts gc3090.display_info
            when "exit"
                puts "Check in tomorrow for updates!"
            else
                puts "Please enter a number from the following (3070, 3080, 3090) or exit if finished."
            end
        end
    end
end