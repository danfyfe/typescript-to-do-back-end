class ToDo < ApplicationRecord
  validates :title, presence: true, uniqueness: true



end
