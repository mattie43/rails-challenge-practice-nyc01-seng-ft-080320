class Company < ApplicationRecord
    has_many :offices
    has_many :employees
    validates :name, presence: true

    def total_rent
        # change to .reduce
        rent = 0
        self.offices.each { |o| rent += o.building.rent_per_floor }
        rent
    end

end
