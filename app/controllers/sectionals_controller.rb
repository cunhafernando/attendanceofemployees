class SectionalsController < ApplicationController
  before_action :set_sectional, only: %i[ show edit update destroy ]

  # GET /sectionals or /sectionals.json
  def index
    @sectionals = Sectional.all
  end

  # GET /sectionals/1 or /sectionals/1.json
  def show
  end

  # GET /sectionals/new
  def new
    @sectional = Sectional.new
  end

  # GET /sectionals/1/edit
  def edit
  end

  # POST /sectionals or /sectionals.json
  def create
    @sectional = Sectional.new(sectional_params)
    @sectional.user_id = current_user.id if current_user

    respond_to do |format|
      if @sectional.save
        format.html { redirect_to sectional_url(@sectional), notice: "Sectional was successfully created." }
        format.json { render :show, status: :created, location: @sectional }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sectional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sectionals/1 or /sectionals/1.json
  def update
    respond_to do |format|
      if @sectional.update(sectional_params)
        format.html { redirect_to sectional_url(@sectional), notice: "Sectional was successfully updated." }
        format.json { render :show, status: :ok, location: @sectional }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sectional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sectionals/1 or /sectionals/1.json
  def destroy
    @sectional.destroy

    respond_to do |format|
      format.html { redirect_to sectionals_url, notice: "Sectional was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectional
      @sectional = Sectional.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sectional_params
      params.require(:sectional).permit(:name, :user_id)
    end
end
