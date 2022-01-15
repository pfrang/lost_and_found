class Pet < ApplicationRecord
  validates :name, presence:true
  validates :species, presence:true, inclusion: { in: ['Dog', 'Cat', 'Fish', 'Bird', 'Lizard'] }
end
