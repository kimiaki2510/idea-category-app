class Idea < ApplicationRecord
  #assosiation
  belongs_to :category, dependent: :destroy
  #validation
  validates :body, presence: true  
end
