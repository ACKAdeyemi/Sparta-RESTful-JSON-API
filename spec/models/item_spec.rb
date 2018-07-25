require 'rails_helper'

# Test suite for the Item model
RSpec.describe Item, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it do
    should belong_to(:todo)
  end
  # Validation test
  # ensure column name is present before saving
  it do
    should validate_presence_of(:name)
  end
end
