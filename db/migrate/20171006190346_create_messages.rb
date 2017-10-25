class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :msg
      t.date :data
      t.time :hora
      t.integer :status
      t.integer :solicitante_id
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.timestamps
    end
  end
end
