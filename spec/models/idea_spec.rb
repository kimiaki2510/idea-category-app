require 'rails_helper'

RSpec.describe Idea, type: :model do
  before do
    @idea = FactoryBot.build(:idea)
  end
end
