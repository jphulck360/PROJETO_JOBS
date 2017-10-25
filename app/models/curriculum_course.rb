class CurriculumCourse < ApplicationRecord
	belongs_to :curriculum
	belongs_to :course
end