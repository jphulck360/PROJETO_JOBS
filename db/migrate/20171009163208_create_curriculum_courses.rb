class CreateCurriculumCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculum_courses do |t|
      t.references :curriculum, foreign_key: true
      t.references :course, foreign_key: true
      t.string :instituicao
      t.date :data_inicial
      t.date :data_final
      t.timestamps
    end
  end
end
