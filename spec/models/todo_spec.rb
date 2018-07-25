require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  # Below is setup with the help of the SHOULDA MATCHERS
  it do
    should have_many(:items).dependent(:destroy)
  end
  # Validation tests
  # ensure columns title and created_by are present before saving
  it do
    should validate_presence_of(:title)
  end
  it do
    should validate_presence_of(:created_by)
  end
end
