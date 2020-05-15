class ChangeColumnTypes < ActiveRecord::Migration[6.0]
  def change
  	change_column :invoices, :invoice_date, :date
  	change_column :invoices, :amount, :float
  	change_column :collections, :collection_date, :date
  	change_column :collections, :amount, :float
  end
end
