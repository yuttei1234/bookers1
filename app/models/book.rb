class Book < ApplicationRecord

  validates :title, presence: true
  validates :Body, presence: true

end
