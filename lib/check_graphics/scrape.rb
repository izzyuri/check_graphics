class CheckGraphics::Scrape
    def self.scrape_site(name)
        site = "https://www.nowinstock.net/computers/videocards/nvidia/#{name}/"
        doc = Nokogiri::HTML(open(site)).css("div#DisplayHistory").css("td")
        doc.children.each do |graphics|
            if graphics.text.slice(-3, graphics.text.length) != "EST"
                mfr, series = graphics.text.split(" : ")
                card, status = series.split(/(Out of Stock|In Stock|Preorder)/)
                if !CheckGraphics::GraphicsCard.all.find{|gc| gc.card == card && gc.mfr == mfr}
                    CheckGraphics::GraphicsCard.new(mfr, card, status, name)
                end
            end
        end
    end
end