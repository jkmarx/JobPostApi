class Keyword < ActiveRecord::Base
  has_many :job_keywords
  has_many :jobs, through: :job_keywords
end
