class CreateJobKeywords < ActiveRecord::Migration
  def change
    create_table :job_keywords do |t|
      t.belongs_to :job, index: true
      t.belongs_to :keyword, index: true

      t.timestamps null: false
    end
    add_foreign_key :job_keywords, :jobs
    add_foreign_key :job_keywords, :keywords
  end
end
