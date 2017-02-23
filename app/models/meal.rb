class Meal < ActiveRecord::Base
  validates :name, :calories, presence: true

end
