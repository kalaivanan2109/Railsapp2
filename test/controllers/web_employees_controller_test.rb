require "test_helper"

class WebEmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_employee = web_employees(:one)
  end

  test "should get index" do
    get web_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_web_employee_url
    assert_response :success
  end

  test "should create web_employee" do
    assert_difference("WebEmployee.count") do
      post web_employees_url, params: { web_employee: { age: @web_employee.age, designation: @web_employee.designation, gender: @web_employee.gender, name: @web_employee.name } }
    end

    assert_redirected_to web_employee_url(WebEmployee.last)
  end

  test "should show web_employee" do
    get web_employee_url(@web_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_employee_url(@web_employee)
    assert_response :success
  end

  test "should update web_employee" do
    patch web_employee_url(@web_employee), params: { web_employee: { age: @web_employee.age, designation: @web_employee.designation, gender: @web_employee.gender, name: @web_employee.name } }
    assert_redirected_to web_employee_url(@web_employee)
  end

  test "should destroy web_employee" do
    assert_difference("WebEmployee.count", -1) do
      delete web_employee_url(@web_employee)
    end

    assert_redirected_to web_employees_url
  end
end
