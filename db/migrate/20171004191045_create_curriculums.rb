class CreateCurriculums < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculums do |t|
      t.string :cidade
      t.string :endereco
      t.string :uf
      t.string :cpf
      t.string :telefone_resid
      t.string :telefone_com
      t.integer :idade
      t.date :dt_nasc
      t.integer :status_curriculo, default: 0
      t.references :user, foreign_key: false
      t.timestamps
    end
  end
end
