class CompaniesController < ApplicationController

    def show
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.create(company_params)
    end

    def new_employee
        @new_employee = Employee.new
        render :new_employee
    end

    def create_employee
        company = Company.find(params[:id])
        @new_employee = Employee.create(params.require(:employee).permit(:name, :title, company_id: company))
        redirect_to company_path(company)
    end

    private

    def company_params
        params.require(:company).permit(:name)
    end
end