require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { chat_limit: @employee.chat_limit, email_limit: @employee.email_limit, first_name: @employee.first_name, gender: @employee.gender, is_multisession_allow: @employee.is_multisession_allow, select_ring_type: @employee.select_ring_type, select_volume: @employee.select_volume, username_email: @employee.username_email, virtual_name: @employee.virtual_name } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { chat_limit: @employee.chat_limit, email_limit: @employee.email_limit, first_name: @employee.first_name, gender: @employee.gender, is_multisession_allow: @employee.is_multisession_allow, select_ring_type: @employee.select_ring_type, select_volume: @employee.select_volume, username_email: @employee.username_email, virtual_name: @employee.virtual_name } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
