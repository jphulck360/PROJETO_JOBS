class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :empresa
      t.date :data_inicial
      t.date :data_final
      t.text :descricao
      t.references :career, foreign_key: true
      t.references :curriculum, foreign_key: true
      t.timestamps
    end
  end
end
