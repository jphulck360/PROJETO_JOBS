class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :telefone
      t.string :tipo
      #t.references :curriculum, foreign_key: true
      t.timestamps
    end
  end
end
