class Employee < ApplicationRecord
    belongs_to :company
    validates :name, :title, :company, presence: true
    validates :name, length: { minimum: 6 }

    def delete_employee
        self.destroy
    end

end