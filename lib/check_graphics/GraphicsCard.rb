#class CheckGraphics::GraphicsCard
    class GraphicsCard
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
end