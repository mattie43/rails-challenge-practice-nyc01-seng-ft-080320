class Office < ApplicationRecord
    belongs_to :building
    belongs_to :company
    validates :building, :company, :floor, presence: true
end
