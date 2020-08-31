class Employee < ApplicationRecord
    belongs_to :company
    validates :name, :title, :company, presence: true

    def delete_employee
        self.destroy
    end

end
