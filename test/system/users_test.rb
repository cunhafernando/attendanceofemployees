require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Firstname", with: @user.firstname
    fill_in "Lastname", with: @user.lastname
    fill_in "Password digest", with: @user.password_digest
    fill_in "Registration", with: @user.registration
    fill_in "Role", with: @user.role
    fill_in "Username", with: @user.username
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Firstname", with: @user.firstname
    fill_in "Lastname", with: @user.lastname
    fill_in "Password digest", with: @user.password_digest
    fill_in "Registration", with: @user.registration
    fill_in "Role", with: @user.role
    fill_in "Username", with: @user.username
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
