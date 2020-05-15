class AddStatusToInvoice < ActiveRecord::Migration[6.0]
  def change
  	add_column :invoices, :status, :string, default: :pending
  end
end
