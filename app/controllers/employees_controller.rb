class EmployeesController < ApplicationController

    def new
        @employee = Employee.new
    end

    def update
        @employee = Employee.create(params.require(:employee).permit(:name))
        redirect_to company_path(employee.company)
    end

end