class CheckGraphics::CLI
    def call
        list
        exit
    end

    def list
        input = nil
        puts "Which Graphics cards would you like to look at today?"
        puts "Enter the number of card you would like to see (ex. 3070, 3080, 3090) or enter exit to finish."
            input = gets.strip.downcase
            case input
            when "3070"
                CheckGraphics::Scrape.scrape_site("rtx3070")
                CheckGraphics::GraphicsCard.specify("rtx3070")
            when "3080"
                CheckGraphics::Scrape.scrape_site("rtx3080")
                CheckGraphics::GraphicsCard.specify("rtx3080")
            when "3090"
                CheckGraphics::Scrape.scrape_site("rtx3090")
                CheckGraphics::GraphicsCard.specify("rtx3090")
            when "exit"
                puts "Check in tomorrow for updates!"
            else
                puts "Please enter a number from the following (3070, 3080, 3090) or exit if finished."
            end
            if input != "exit"
                list
            end
    end
end