class Issuance < ApplicationRecord
  has_many :investments
  validates :volume, numericality: { greater_than_or_equal_to: 1000 }, presence: true
  validates :name, presence: true

   def investable?
    total = self.investments.sum(:amount_of_money)

    return "Yes" if total <= self.volume

    return "No"
  end

  def total_investments
    return self.investments.sum(:amount_of_money)
  end
end
