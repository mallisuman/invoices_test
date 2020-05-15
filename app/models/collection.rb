class Collection < ApplicationRecord
  belongs_to :invoice, foreign_key: :reference, primary_key: :reference
end
