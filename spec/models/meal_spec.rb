require 'rails_helper'

describe Meal do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories }
end
