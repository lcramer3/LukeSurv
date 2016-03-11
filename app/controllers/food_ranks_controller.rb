class FoodRanksController < ApplicationController
  before_action :set_food_rank, only: [:show, :edit, :update, :destroy]

  # GET /food_ranks
  # GET /food_ranks.json
  def index
    @food_ranks = FoodRank.all
  end

  # GET /food_ranks/1
  # GET /food_ranks/1.json
  def show
  end

  # GET /food_ranks/new
  def new
    @food_rank = FoodRank.new
  end

  # GET /food_ranks/1/edit
  def edit
  end

  # POST /food_ranks
  # POST /food_ranks.json
  def create
    @food_rank = FoodRank.new(food_rank_params)

    respond_to do |format|
      if @food_rank.save
        format.html { redirect_to @food_rank, notice: 'Food rank was successfully created.' }
        format.json { render :show, status: :created, location: @food_rank }
      else
        format.html { render :new }
        format.json { render json: @food_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_ranks/1
  # PATCH/PUT /food_ranks/1.json
  def update
    respond_to do |format|
      if @food_rank.update(food_rank_params)
        format.html { redirect_to @food_rank, notice: 'Food rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_rank }
      else
        format.html { render :edit }
        format.json { render json: @food_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_ranks/1
  # DELETE /food_ranks/1.json
  def destroy
    @food_rank.destroy
    respond_to do |format|
      format.html { redirect_to food_ranks_url, notice: 'Food rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_rank
      @food_rank = FoodRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_rank_params
      params.require(:food_rank).permit(:rank)
    end
end
