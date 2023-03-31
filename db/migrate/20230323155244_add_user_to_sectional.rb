class AddUserToSectional < ActiveRecord::Migration[7.0]
  def change
    add_reference :sectionals, :user, null: false, foreign_key: true
  end
end
