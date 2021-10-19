class Investment < ApplicationRecord
  belongs_to :issuance
  validates :amount_of_money, numericality: { greater_than_or_equal_to: 100 }, presence: true
end
