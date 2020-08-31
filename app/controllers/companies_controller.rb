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

    private

    def company_params
        params.require(:company).permit(:name)
    end
end