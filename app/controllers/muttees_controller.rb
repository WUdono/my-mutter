class MutteesController < ApplicationController
  before_action :set_muttee, only: [:show, :edit, :update, :destroy]

  # GET /muttees
  # GET /muttees.json
  def index
    @muttees = Muttee.all
  end

  # GET /muttees/1
  # GET /muttees/1.json
  def show
  end

  # GET /muttees/new
  def new
    @muttee = Muttee.new
  end

  # GET /muttees/1/edit
  def edit
  end

  # POST /muttees
  # POST /muttees.json
  def create
    @muttee = Muttee.new(muttee_params)

    respond_to do |format|
      if @muttee.save
        format.html { redirect_to @muttee, notice: 'Muttee was successfully created.' }
        format.json { render :show, status: :created, location: @muttee }
      else
        format.html { render :new }
        format.json { render json: @muttee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muttees/1
  # PATCH/PUT /muttees/1.json
  def update
    respond_to do |format|
      if @muttee.update(muttee_params)
        format.html { redirect_to @muttee, notice: 'Muttee was successfully updated.' }
        format.json { render :show, status: :ok, location: @muttee }
      else
        format.html { render :edit }
        format.json { render json: @muttee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muttees/1
  # DELETE /muttees/1.json
  def destroy
    @muttee.destroy
    respond_to do |format|
      format.html { redirect_to muttees_url, notice: 'Muttee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muttee
      @muttee = Muttee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muttee_params
      params.require(:muttee).permit(:title, :mutter)
    end
end
