class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :accout
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
