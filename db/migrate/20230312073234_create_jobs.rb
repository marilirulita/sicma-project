class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :notas

      t.timestamps
    end
  end
end
