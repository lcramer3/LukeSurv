class VasQuestionsController < ApplicationController
  before_action :set_vas_question, only: [:show, :edit, :update, :destroy]

  # GET /vas_questions
  # GET /vas_questions.json
  def index
    @vas_questions = VasQuestion.all
  end

  # GET /vas_questions/1
  # GET /vas_questions/1.json
  def show
  end

  # GET /vas_questions/new
  def new
    @vas_question = VasQuestion.new
  end

  # GET /vas_questions/1/edit
  def edit
  end

  # POST /vas_questions
  # POST /vas_questions.json
  def create
    @vas_question = VasQuestion.new(vas_question_params)

    respond_to do |format|
      if @vas_question.save
        format.html { redirect_to @vas_question, notice: 'Vas question was successfully created.' }
        format.json { render :show, status: :created, location: @vas_question }
      else
        format.html { render :new }
        format.json { render json: @vas_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vas_questions/1
  # PATCH/PUT /vas_questions/1.json
  def update
    respond_to do |format|
      if @vas_question.update(vas_question_params)
        format.html { redirect_to @vas_question, notice: 'Vas question was successfully updated.' }
        format.json { render :show, status: :ok, location: @vas_question }
      else
        format.html { render :edit }
        format.json { render json: @vas_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vas_questions/1
  # DELETE /vas_questions/1.json
  def destroy
    @vas_question.destroy
    respond_to do |format|
      format.html { redirect_to vas_questions_url, notice: 'Vas question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vas_question
      @vas_question = VasQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vas_question_params
      params.require(:vas_question).permit(:prompt, :order)
    end
end
