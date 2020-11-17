class CheckGraphics::GraphicsCard
    attr_accessor :mfr, :card, :status

    @@all = []

    def initialize(mfr, card, status)
        @mfr = mfr
        @card = card
        @status = status
        @@all << self
    end

    def self.all
        @@all
    end

    def display_info
        "Seller: #{self.mfr}\nManufacturer: #{self.card}\nStatus: #{self.status}"
    end 
end