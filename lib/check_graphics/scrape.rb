# require_relative '../check_graphics_env'
#class CheckGraphics::Scrape
class Scrape
    def scrape_site
    site = "https://www.nowinstock.net/computers/videocards/nvidia/rtx3070/"
    # doc = Nokogiri::HTML(open(site)).css("div#DisplayHistory").css("tr")
    doc = Nokogiri::HTML(open(site)).css("div#DisplayHistory").css("td")
    # doc.each {|graphics| puts graphics.text}
        doc.children.each do |graphics|
            if graphics.text.slice(-3, graphics.text.length) != "EST"
                mfr, series = graphics.text.split(" : ")
                card, status = series.split("-8GD ")
                #CheckGraphics::GraphicsCard.new(mfr, card, status)
                if !GraphicsCard.all.find{|gc| gc.card == card && gc.mfr == mfr}
                GraphicsCard.new(mfr, card, status)
                end
            end
        end
    end
binding.pry
end