class ProjectsEditionsController < ApplicationController
  before_action :set_projects_edition, only: [:show, :edit, :update, :destroy]

  # GET /projects_editions
  # GET /projects_editions.json
  def index
    @projects_editions = ProjectsEdition.all
  end

  # GET /projects_editions/1
  # GET /projects_editions/1.json
  def show
  end

  # GET /projects_editions/new
  def new
    @projects_edition = ProjectsEdition.new
  end

  # GET /projects_editions/1/edit
  def edit
  end

  # POST /projects_editions
  # POST /projects_editions.json
  def create
    @projects_edition = ProjectsEdition.new(projects_edition_params)

    respond_to do |format|
      if @projects_edition.save
        format.html { redirect_to @projects_edition, notice: 'Projects edition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @projects_edition }
      else
        format.html { render action: 'new' }
        format.json { render json: @projects_edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_editions/1
  # PATCH/PUT /projects_editions/1.json
  def update
    respond_to do |format|
      if @projects_edition.update(projects_edition_params)
        format.html { redirect_to @projects_edition, notice: 'Projects edition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projects_edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_editions/1
  # DELETE /projects_editions/1.json
  def destroy
    @projects_edition.destroy
    respond_to do |format|
      format.html { redirect_to projects_editions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_edition
      @projects_edition = ProjectsEdition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_edition_params
      params.require(:projects_edition).permit(:project_id, :edition_id)
    end
end
