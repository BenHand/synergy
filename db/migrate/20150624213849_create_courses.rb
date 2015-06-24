class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false, default: 'TBA'
      t.integer :max_count, null: false, default: 0
      t.belongs_to :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
