class Portfolio < ApplicationRecord

    has_many :technologies
    
    validates_presence_of :title, :image, :thumbimage

    after_initialize :set_defaults

    def set_defaults
        self.image ||= "https://via.placeholder.com/600x400"
        self.thumbimage ||= "https://via.placeholder.com/350x200"

        if self.image == nil
            self.image = "https://via.placeholder.com/600x400"
    end

    end
end