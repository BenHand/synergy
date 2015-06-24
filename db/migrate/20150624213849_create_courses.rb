class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :max_count
      t.belongs_to :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
