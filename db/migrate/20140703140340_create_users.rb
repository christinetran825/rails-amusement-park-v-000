class CreateUsers < ActiveRecord::Migration
  # Write your migrations here
  create_table :user do |t|
    t.string  :name
    t.string  :password_digest
    t.integer :nausea
    t.integer :happiness
    t.integer :tickets
    t.integer :height
    t.boolean :admin
  end
end
