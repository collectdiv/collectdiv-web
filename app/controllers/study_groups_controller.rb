class StudyGroupsController < ApplicationController
  before_action :set_study_group, only: [:show, :edit, :update, :destroy]

  # GET /study_groups
  # GET /study_groups.json
  def index
    @study_groups = StudyGroup.all
  end

  # GET /study_groups/1
  # GET /study_groups/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @item }
    end
  end

  # GET /study_groups/new
  def new
    @study_group = StudyGroup.new
  end

  # GET /study_groups/1/edit
  def edit
  end

  # POST /study_groups
  # POST /study_groups.json
  def create
    @study_group = StudyGroup.new(study_group_params)

    respond_to do |format|
      if @study_group.save
        format.html { redirect_to @study_group, notice: 'Study group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @study_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @study_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_groups/1
  # PATCH/PUT /study_groups/1.json
  def update
    respond_to do |format|
      if @study_group.update(study_group_params)
        format.html { redirect_to @study_group, notice: 'Study group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @study_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_groups/1
  # DELETE /study_groups/1.json
  def destroy
    @study_group.destroy
    respond_to do |format|
      format.html { redirect_to study_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_group
      @study_group = StudyGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_group_params
      params[:study_group]
    end
end
