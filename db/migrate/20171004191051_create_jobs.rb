class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.float :valor
      t.date :data_inicial
      t.date :data_final
      t.string :solicitacao
      t.text :descricao
      t.integer :status
      t.integer :solicitante_id
      t.references :user, foreign_key: false
      t.references :career, foreign_key: false
      t.timestamps
    end
  end
end
