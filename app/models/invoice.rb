class Invoice < ApplicationRecord
  has_many :collections, foreign_key: :reference, primary_key: :reference

  def balance
  	amount - collected
  end

  def collected
  	collections.pluck(:amount).sum
  end
end
