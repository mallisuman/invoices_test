# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "json"

puts "Loading invoices..."
invoices_file_path = File.open Rails.root.join("jsons/new_invoices.json")
data = JSON.load invoices_file_path

data.each do |invoice_hash|
  Invoice.create!(invoice_hash)
  print '.'
end

puts "Loading collections..."
collection_file_path = File.open Rails.root.join("jsons/collections.json")
data = JSON.load collection_file_path

data.each do |collection_hash|
  begin
  	Collection.create!(collection_hash)
  	print '.'
  rescue
  	puts "Skipping row - unable to load"
  end
end