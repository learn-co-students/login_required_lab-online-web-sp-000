class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |f|
      f.string :name
    end
  end
end
