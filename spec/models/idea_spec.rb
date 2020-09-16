require 'rails_helper'

RSpec.describe Idea, type: :model do
  before do
    @idea = FactoryBot.build(:idea)
  end

  it "category_idが空白は無効" do
    @idea.category_id = ' '
    expect(@idea).to be_invalid
  end

  it "bodyが空白は無効" do
    @idea.body = ' '
    expect(@idea).to be_invalid
  end
end
