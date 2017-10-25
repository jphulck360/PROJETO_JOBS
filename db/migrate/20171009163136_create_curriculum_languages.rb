class CreateCurriculumLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculum_languages do |t|
      t.references :curriculum, foreign_key: true
      t.references :language, foreign_key: true
      t.timestamps
    end
  end
end
