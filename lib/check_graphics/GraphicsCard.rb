class CheckGraphics::GraphicsCard
    attr_accessor :mfr, :card, :status, :type

    @@all = []

    def initialize(mfr, card, status, type)
        @mfr = mfr
        @card = card
        @status = status
        @type = type
        @@all << self
    end

    def self.all
        @@all
    end

    def display_info
        "Seller: #{self.mfr}\nManufacturer: #{self.card}\nStatus: #{self.status}"
    end 

    def self.select_info(type)
        self.all.select {|gb| gb.type == type}
    end

    def self.specify(type)
        self.select_info(type).each {|gc| puts gc.display_info}
    end
end