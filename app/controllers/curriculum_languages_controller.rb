class CurriculumLanguagesController < ApplicationController
  before_action :set_curriculum_language, only: [:show, :edit, :update, :destroy]

  # GET /curriculum_languages
  # GET /curriculum_languages.json
  def index
    @curriculum_languages = CurriculumLanguage.all
  end

  # GET /curriculum_languages/1
  # GET /curriculum_languages/1.json
  def show
  end

  # GET /curriculum_languages/new
  def new
    @curriculum_language = CurriculumLanguage.new
  end

  # GET /curriculum_languages/1/edit
  def edit
  end

  # POST /curriculum_languages
  # POST /curriculum_languages.json
  def create
    @curriculum_language = CurriculumLanguage.new(curriculum_language_params)

    respond_to do |format|
      if @curriculum_language.save
        format.html { redirect_to @curriculum_language, notice: 'Curriculum language was successfully created.' }
        format.json { render :show, status: :created, location: @curriculum_language }
      else
        format.html { render :new }
        format.json { render json: @curriculum_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curriculum_languages/1
  # PATCH/PUT /curriculum_languages/1.json
  def update
    respond_to do |format|
      if @curriculum_language.update(curriculum_language_params)
        format.html { redirect_to @curriculum_language, notice: 'Curriculum language was successfully updated.' }
        format.json { render :show, status: :ok, location: @curriculum_language }
      else
        format.html { render :edit }
        format.json { render json: @curriculum_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculum_languages/1
  # DELETE /curriculum_languages/1.json
  def destroy
    @curriculum_language.destroy
    respond_to do |format|
      format.html { redirect_to curriculum_languages_url, notice: 'Curriculum language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculum_language
      @curriculum_language = CurriculumLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curriculum_language_params
      params.require(:curriculum_language).permit(
        languages_attributes:[:language_id], 
        curriculums_attributes:[:curriculum_id]
      )
    end
end
