class Job < ActiveRecord::Base
  belongs_to :location
  has_many :job_keywords
  has_many :keywords, through: :job_keywords

  enum position_type: [ :full_time, :contract, :freelance, :intership ]

  enum category: [ :design, :development ]
end
