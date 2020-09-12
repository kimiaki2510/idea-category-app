require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @category = FactoryBot.build(:category)
  end

  it 'nameが空白は無効' do
    @category.name = ' '
    expect(@category).to be_invalid
  end
end
