class ProgramCategoriesController < ApplicationController
  before_action :set_program_category, only: [:show, :edit, :update, :destroy]

  # GET /program_categories
  # GET /program_categories.json
  def index
    @program_categories = ProgramCategory.all
  end

  # GET /program_categories/1
  # GET /program_categories/1.json
  def show
  end

  # GET /program_categories/new
  def new
    @program_category = ProgramCategory.new
  end

  # GET /program_categories/1/edit
  def edit
  end

  # POST /program_categories
  # POST /program_categories.json
  def create
	params[:program_category]['category'] = Category.where(:id => params[:program_category]['category']).first
	params[:program_category]['program'] = Program.where(:id => params[:program_category]['program']).first
    @program_category = ProgramCategory.new(program_category_params)

    respond_to do |format|
      if @program_category.save
        format.html { redirect_to @program_category, notice: 'Program category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @program_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @program_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_categories/1
  # PATCH/PUT /program_categories/1.json
  def update
    respond_to do |format|
      if @program_category.update(program_category_params)
        format.html { redirect_to @program_category, notice: 'Program category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @program_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_categories/1
  # DELETE /program_categories/1.json
  def destroy
    @program_category.destroy
    respond_to do |format|
      format.html { redirect_to program_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_category
      @program_category = ProgramCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_category_params
      params.require(:program_category).permit(:program_id, :category_id)
    end
end
