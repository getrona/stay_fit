require 'rails_helper'

describe Exercise do
  it { should validate_presence_of :title}
  it { should validate_presence_of :calories_burned}
end
