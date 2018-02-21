require 'rails_helper'

RSpec.describe Account, type: :model do
  it { should validate_presence_of(:login) }
  it { should validate_uniqueness_of(:login) }
end
