class CreateFacturas < ActiveRecord::Migration[7.0]
  def change
    create_table :facturas do |t|
      t.belongs_to :cliente, null: false, foreign_key: true
      t.decimal :total

      t.timestamps
    end
  end
end
