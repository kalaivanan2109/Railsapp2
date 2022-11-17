require "application_system_test_case"

class WebEmployeesTest < ApplicationSystemTestCase
  setup do
    @web_employee = web_employees(:one)
  end

  test "visiting the index" do
    visit web_employees_url
    assert_selector "h1", text: "Web employees"
  end

  test "should create web employee" do
    visit web_employees_url
    click_on "New web employee"

    fill_in "Age", with: @web_employee.age
    fill_in "Designation", with: @web_employee.designation
    fill_in "Gender", with: @web_employee.gender
    fill_in "Name", with: @web_employee.name
    click_on "Create Web employee"

    assert_text "Web employee was successfully created"
    click_on "Back"
  end

  test "should update Web employee" do
    visit web_employee_url(@web_employee)
    click_on "Edit this web employee", match: :first

    fill_in "Age", with: @web_employee.age
    fill_in "Designation", with: @web_employee.designation
    fill_in "Gender", with: @web_employee.gender
    fill_in "Name", with: @web_employee.name
    click_on "Update Web employee"

    assert_text "Web employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Web employee" do
    visit web_employee_url(@web_employee)
    click_on "Destroy this web employee", match: :first

    assert_text "Web employee was successfully destroyed"
  end
end
