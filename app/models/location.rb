class Location < ApplicationRecord
    has_many :rooms, dependent: :destroy

    def self.search(search)
        if search
            location = Location.where('name like ?', '%' + search.capitalize + '%')
            if location
                self.where(id: location)
            else
                Location.none
            end
        else
            Location.none
        end
    end
end
