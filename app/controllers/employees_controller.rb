class EmployeesController < ApplicationController

    def new
        @employee = Employee.new
        flash[:current_company_id] = flash[:current_company_id]
    end

    def create
        params[:employee][:company_id] = flash[:current_company_id]
        @employee = Employee.create(employee_params)
        redirect_to company_path(@employee.company)
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        params[:employee][:company_id] = flash[:current_company_id]
        @employee.update(employee_params)
        redirect_to company_path(@employee.company)
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to company_path(@employee.company)
    end

    private

    def employee_params
        params.require(:employee).permit(:name, :title, :company_id)
    end

end