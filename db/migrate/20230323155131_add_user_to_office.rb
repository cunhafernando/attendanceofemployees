class AddUserToOffice < ActiveRecord::Migration[7.0]
  def change
    add_reference :offices, :user, null: false, foreign_key: true
  end
end
