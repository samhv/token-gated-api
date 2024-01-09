class CreatePages < ActiveRecord::Migration[7.1]
  def change
    create_table :pages do |t|
      t.string :owner_address
      t.string :collection_address
      t.string :title
      t.text :description
      t.integer :template

      t.timestamps
    end
  end
end
