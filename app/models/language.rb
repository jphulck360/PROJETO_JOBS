class Language < ApplicationRecord
	has_many :curriculum_languages # verificar se tabela existe
	has_many :curriculums, :through => :curriculum_languages
end
