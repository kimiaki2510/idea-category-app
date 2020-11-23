class Category < ApplicationRecord
  has_many :ideas
  validates :name, presence: true, uniqueness: true
  accepts_nested_attributes_for :ideas, allow_destroy: true
end
