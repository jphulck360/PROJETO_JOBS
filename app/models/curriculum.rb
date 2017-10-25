class Curriculum < ApplicationRecord

	belongs_to :user
	has_many :experiences
	#has_many :phones

	has_many :curriculum_languages # verificar se tabela existe
	has_many :languages, :through => :curriculum_languages

	has_many :curriculum_courses # verificar se tabela existe
	has_many :courses, :through => :curriculum_courses

	# atributos que utilizam a 'gem cocoon'
	accepts_nested_attributes_for :curriculum_courses, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :experiences, :reject_if => :all_blank, :allow_destroy => true

	has_attached_file :foto_curr
	validates_attachment_content_type :foto_curr, :content_type => ["image/png", "image/jpeg", "image/jpg", "image/gif"]
end