require 'rails_helper'

RSpec.describe City, type: :model do
  context 'Validations' do
    it 'name should be present' do
      should validate_presence_of :name
    end

    it 'cod should be present' do
      should validate_presence_of :cod
    end
  end
end
