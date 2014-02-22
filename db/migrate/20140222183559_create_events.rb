class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null:false
      t.string :description, null:false
      t.string :date, null:false
      t.string :location, default:'Core Gaming'

      t.timestamps
    end
  end
end
