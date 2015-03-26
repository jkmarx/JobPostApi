class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.belongs_to :location, index: true
      t.integer :category
      t.integer :position_type
      t.string :company

      t.timestamps null: false
    end
    add_foreign_key :jobs, :locations
  end
end
