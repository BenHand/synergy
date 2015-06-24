class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, null: false, default: 'employee'
      t.string :hire_date, null: false, default: '1/1/1970'
      t.string :title, null: false, default: 'House Keeping'
      t.belongs_to :company, index: true, foreign_key: true
      t.belongs_to :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
