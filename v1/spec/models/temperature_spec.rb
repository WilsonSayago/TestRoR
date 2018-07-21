require 'rails_helper'

RSpec.describe Temperature, type: :model do
  context 'Validations' do
    it 'temp should be present' do
      should validate_presence_of :temp
    end
  end
end
