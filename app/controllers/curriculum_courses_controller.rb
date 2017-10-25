class CurriculumCoursesController < ApplicationController
  before_action :set_curriculum_course, only: [:show, :edit, :update, :destroy]

  # GET /curriculum_courses
  # GET /curriculum_courses.json
  def index
    @curriculum_courses = CurriculumCourse.all
  end

  # GET /curriculum_courses/1
  # GET /curriculum_courses/1.json
  def show
  end

  # GET /curriculum_courses/new
  def new
    @curriculum_course = CurriculumCourse.new
  end

  # GET /curriculum_courses/1/edit
  def edit
  end

  # POST /curriculum_courses
  # POST /curriculum_courses.json
  def create
    @curriculum_course = CurriculumCourse.new(curriculum_course_params)

    respond_to do |format|
      if @curriculum_course.save
        format.html { redirect_to @curriculum_course, notice: 'Curriculum course was successfully created.' }
        format.json { render :show, status: :created, location: @curriculum_course }
      else
        format.html { render :new }
        format.json { render json: @curriculum_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curriculum_courses/1
  # PATCH/PUT /curriculum_courses/1.json
  def update
    respond_to do |format|
      if @curriculum_course.update(curriculum_course_params)
        format.html { redirect_to @curriculum_course, notice: 'Curriculum course was successfully updated.' }
        format.json { render :show, status: :ok, location: @curriculum_course }
      else
        format.html { render :edit }
        format.json { render json: @curriculum_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculum_courses/1
  # DELETE /curriculum_courses/1.json
  def destroy
    @curriculum_course.destroy
    respond_to do |format|
      format.html { redirect_to curriculum_courses_url, notice: 'Curriculum course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculum_course
      @curriculum_course = CurriculumCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curriculum_course_params
      params.require(
        :curriculum_course, 
        :instituicao, 
        :data_inicial,
        :data_final,
        curriculums_attributes:[:curriculum_id],
        courses_attributes:[:course_id,:nome]
      )
    end
end
