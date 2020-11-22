class Idea < ApplicationRecord
  belongs_to :category, dependent: :destroy
  validates :body, presence: true

end
