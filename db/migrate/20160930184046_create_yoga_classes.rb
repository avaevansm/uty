class CreateYogaClasses < ActiveRecord::Migration
  def change
    create_table :yoga_classes do |t|
      t.string :name
      t.integer :class_id
      t.boolean :open

      t.timestamps null: false
    end
  end
end
