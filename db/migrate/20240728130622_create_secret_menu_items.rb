class CreateSecretMenuItems < ActiveRecord::Migration[7.1]
  def change
    create_table :secret_menu_items do |t|
t.string :menu_name
t.string :resturant_name
t.string :menu_description
      t.timestamps
    end
  end
end
