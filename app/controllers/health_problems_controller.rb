class HealthProblemsController < ApplicationController
  before_action :set_health_problem, only: [:show, :edit, :update, :destroy]

  # GET /health_problems
  # GET /health_problems.json
  def index
    @health_problems = HealthProblem.find_by_sql ["SELECT * FROM health_problems WHERE \"userId\" = ?", params[:userId].to_i]
  end

  # GET /health_problems/1
  # GET /health_problems/1.json
  def show
  end

  # GET /health_problems/new
  def new
    @health_problem = HealthProblem.new
  end

  # GET /health_problems/1/edit
  def edit
  end

  # POST /health_problems
  # POST /health_problems.json
  def create
    @health_problem = HealthProblem.new(health_problem_params)

    respond_to do |format|
      if @health_problem.save
        format.html { redirect_to @health_problem, notice: 'Health problem was successfully created.' }
        format.json { render :show, status: :created, location: @health_problem }
      else
        format.html { render :new }
        format.json { render json: @health_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_problems/1
  # PATCH/PUT /health_problems/1.json
  def update
    respond_to do |format|
      if @health_problem.update(health_problem_params)
        format.html { redirect_to @health_problem, notice: 'Health problem was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_problem }
      else
        format.html { render :edit }
        format.json { render json: @health_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_problems/1
  # DELETE /health_problems/1.json
  def destroy
    @health_problem.destroy
    respond_to do |format|
      format.html { redirect_to health_problems_url, notice: 'Health problem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_problem
      @health_problem = HealthProblem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_problem_params
      params.require(:health_problem).permit(:dateEntered, :petID, :description, :dateOccurred)
    end
end
