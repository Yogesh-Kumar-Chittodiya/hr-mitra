class EmployeesController < ApplicationController
    before_action :set_employee, only: [:edit, :update, :show, :destroy]

    def index
        @employees = Employee.all
    end

    def new 
        @employee = Employee.new
    end

    def create
        # @employee = Employee.new(first_name: params[:employee][:first_name],
        # middle_name_name: params[:employee][:middle_name_name],
        # last_name: params[:employee][:last_name],
        # personal_email: params[:employee][:personal_email],
        # address_line_1: params[:employee][:address_line_1],
        # address_line_2: params[:employee][:address_line_2],
        # city: params[:employee][:city],
        # state: params[:employee][:state],
        # country: params[:employee][:country],
        # pincode: params[:employee][:pincode])

        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employees_path, notice: 'Employees has been created successfully.'
        else
            render :new
        end
    end

    def edit
    end

    def update
        if(@employee.update(employee_params))
            redirect_to employees_path, notice: 'Employees has been updated successfully'
        else
            render :edit
        end
    end

    def show
    end

    def destroy
        if @employee.destroy
            redirect_to employees_path, notice: 'Employee has been deleted successfully'
        else
            render :new
        end
    end

    private
    def employee_params
        params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :address_line_1, :address_line_2, :city, :state, :country, :pincode)
    end

    def set_employee
        @employee = Employee.find(params[:id])
    end

end
