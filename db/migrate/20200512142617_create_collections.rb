class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :collection_date
      t.string :amount
      t.string :reference

      t.timestamps
    end
  end
end
