class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :code
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
