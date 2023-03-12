class CreateCotizacionDlls < ActiveRecord::Migration[7.0]
  def change
    create_table :cotizacion_dlls do |t|
      t.belongs_to :cliente, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :factura, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
