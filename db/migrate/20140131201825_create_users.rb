class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :country_club
      t.datetime :birthday
      t.string :email
      t.string :password
      t.string :picture
      t.integer :handicap

      t.timestamps
    end
  end
end
