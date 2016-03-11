class VasResponsesController < ApplicationController
  before_action :set_vas_response, only: [:show, :edit, :update, :destroy]

  # GET /vas_responses
  # GET /vas_responses.json
  def index
    @vas_responses = VasResponse.all
  end

  # GET /vas_responses/1
  # GET /vas_responses/1.json
  def show
  end

  # GET /vas_responses/new
  def new
    @vas_response = VasResponse.new
  end

  # GET /vas_responses/1/edit
  def edit
  end

  # POST /vas_responses
  # POST /vas_responses.json
  def create
    @vas_response = VasResponse.new(vas_response_params)

    respond_to do |format|
      if @vas_response.save
        format.html { redirect_to @vas_response, notice: 'Vas response was successfully created.' }
        format.json { render :show, status: :created, location: @vas_response }
      else
        format.html { render :new }
        format.json { render json: @vas_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vas_responses/1
  # PATCH/PUT /vas_responses/1.json
  def update
    respond_to do |format|
      if @vas_response.update(vas_response_params)
        format.html { redirect_to @vas_response, notice: 'Vas response was successfully updated.' }
        format.json { render :show, status: :ok, location: @vas_response }
      else
        format.html { render :edit }
        format.json { render json: @vas_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vas_responses/1
  # DELETE /vas_responses/1.json
  def destroy
    @vas_response.destroy
    respond_to do |format|
      format.html { redirect_to vas_responses_url, notice: 'Vas response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vas_response
      @vas_response = VasResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vas_response_params
      params.require(:vas_response).permit(:value, :user_id)
    end
end
