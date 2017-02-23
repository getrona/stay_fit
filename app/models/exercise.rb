class Exercise < ActiveRecord::Base
  validates :title, :calories_burned, presence: true
end
