require 'rails_helper'

RSpec.describe Idea, type: :model do
  before do
    @idea = FactoryBot.build(:idea)
  end

  it '@ideaが有効であることの確認' do
    expect(@idea).to be_valid
  end

  it 'bodyが空白は無効' do
    @idea.body = ' '
    expect(@idea).to be_valid
  end
end
