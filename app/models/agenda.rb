class Agenda < ApplicationRecord
  validates :data, presence: true
  validates :hora, presence: true
end
