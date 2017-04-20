class RoutinesController < ApplicationController
  before_action :set_routine, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /routines
  # GET /routines.json
  def index
    @trainee = Trainee.find(params[:trainee_id])
    @routines = @trainee.routines.order(:name)
  end

  # GET /routines/1
  # GET /routines/1.json
  def show
  end

  # GET /routines/new
  def new
    @trainee = Trainee.find(params[:trainee_id])
    @routine = Routine.new
  end

  # GET /routines/1/edit
  def edit
    @trainee = Trainee.find(params[:trainee_id])
  end

  # POST /routines
  # POST /routines.json
  def create
    @routine = Routine.new(routine_params)
    @trainee = Trainee.find(params[:trainee_id])

    respond_to do |format|
      if @routine.save
        format.html { redirect_to trainee_routines_path(@trainee), notice: 'Routine was successfully created.' }
        format.json { render :show, status: :created, location: @routine }
      else
        format.html { render :new }
        format.json { render json: @routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routines/1
  # PATCH/PUT /routines/1.json
  def update
    @trainee = Trainee.find(params[:trainee_id])
    respond_to do |format|
      if @routine.update(routine_params)
        format.html { redirect_to trainee_routines_path(@trainee), notice: 'Routine was successfully updated.' }
        format.json { render :show, status: :ok, location: @routine }
      else
        format.html { render :edit }
        format.json { render json: @routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routines/1
  # DELETE /routines/1.json
  def destroy
    @routine.destroy
    @trainee = Trainee.find(params[:trainee_id])
    respond_to do |format|
      format.html { redirect_to trainee_routines_path(@trainee), notice: 'Routine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routine
      @routine = Routine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def routine_params
      params.require(:routine).permit(:name, :description, :start_date, :end_date, :trainee_id)
    end
end
