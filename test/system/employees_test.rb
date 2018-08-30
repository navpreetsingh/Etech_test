require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Chat Limit", with: @employee.chat_limit
    fill_in "Email Limit", with: @employee.email_limit
    fill_in "First Name", with: @employee.first_name
    fill_in "Gender", with: @employee.gender
    fill_in "Is Multisession Allow", with: @employee.is_multisession_allow
    fill_in "Select Ring Type", with: @employee.select_ring_type
    fill_in "Select Volume", with: @employee.select_volume
    fill_in "Username Email", with: @employee.username_email
    fill_in "Virtual Name", with: @employee.virtual_name
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Chat Limit", with: @employee.chat_limit
    fill_in "Email Limit", with: @employee.email_limit
    fill_in "First Name", with: @employee.first_name
    fill_in "Gender", with: @employee.gender
    fill_in "Is Multisession Allow", with: @employee.is_multisession_allow
    fill_in "Select Ring Type", with: @employee.select_ring_type
    fill_in "Select Volume", with: @employee.select_volume
    fill_in "Username Email", with: @employee.username_email
    fill_in "Virtual Name", with: @employee.virtual_name
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
