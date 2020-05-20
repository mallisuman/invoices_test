class Collection < ApplicationRecord
  belongs_to :invoice, foreign_key: :reference, primary_key: :reference

  after_save :set_invoice_status

  def set_invoice_status
  	if invoice.balance <= 0
    	invoice.status = "collected"
    	invoice.save!
    end
  end
end
