class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :role, :limit => 50
      t.string :first_name
      t.string :virtual_name, :limit => 50
      t.string :username_email, :limit => 50
      t.string :gender, :limit => 50
      t.integer :chat_limit, :length => 18
      t.string :email_limit, :limit => 10
      t.string :is_multisession_allow, :limit => 10
      t.integer :select_volume, :length => 18
      t.string :select_ring_type

      t.timestamps
    end
  end
end
