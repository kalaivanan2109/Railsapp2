class WebEmployeesController < ApplicationController
  before_action :set_web_employee, only: %i[ show edit update destroy ]

  # GET /web_employees or /web_employees.json
  def index
    @web_employees = WebEmployee.all
  end

  # GET /web_employees/1 or /web_employees/1.json
  def show
  end

  # GET /web_employees/new
  def new
    @web_employee = WebEmployee.new
  end

  # GET /web_employees/1/edit
  def edit
  end

  # POST /web_employees or /web_employees.json
  def create
    @web_employee = WebEmployee.new(web_employee_params)

    respond_to do |format|
      if @web_employee.save
        format.html { redirect_to web_employee_url(@web_employee), notice: "Web employee was successfully created." }
        format.json { render :show, status: :created, location: @web_employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @web_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_employees/1 or /web_employees/1.json
  def update
    respond_to do |format|
      if @web_employee.update(web_employee_params)
        format.html { redirect_to web_employee_url(@web_employee), notice: "Web employee was successfully updated." }
        format.json { render :show, status: :ok, location: @web_employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @web_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_employees/1 or /web_employees/1.json
  def destroy
    @web_employee.destroy

    respond_to do |format|
      format.html { redirect_to web_employees_url, notice: "Web employee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_employee
      @web_employee = WebEmployee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def web_employee_params
      params.require(:web_employee).permit(:name, :age, :gender, :designation)
    end
end
