class Course < ApplicationRecord
	has_many :curriculum_courses
	has_many :curriculums, :through => :curriculum_courses
end