class Idea < ApplicationRecord
  belongs_to :category, dependent: :destroy
end
