class PresentationsController < ApplicationController
  before_action :set_presentation, only: %i[ show edit update destroy ]

  # GET /presentations or /presentations.json
  def index
    @presentations = Presentation.all
  end

  # GET /presentations/1 or /presentations/1.json
  def show
  end

  # GET /presentations/new
  def new
    @presentation = Presentation.new
  end

  # GET /presentations/1/edit
  def edit
  end

  # POST /presentations or /presentations.json
  def create
    @presentation = Presentation.new(presentation_params)

    respond_to do |format|
      if @presentation.save
        format.html { redirect_to @presentation, notice: "Presentation was successfully created." }
        format.json { render :show, status: :created, location: @presentation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presentations/1 or /presentations/1.json
  def update
    respond_to do |format|
      if @presentation.update(presentation_params)
        format.html { redirect_to @presentation, notice: "Presentation was successfully updated." }
        format.json { render :show, status: :ok, location: @presentation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentations/1 or /presentations/1.json
  def destroy
    @presentation.destroy!

    respond_to do |format|
      format.html { redirect_to presentations_path, status: :see_other, notice: "Presentation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presentation
      @presentation = Presentation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def presentation_params
      params.expect(presentation: [ :title, :emails, :description, :grade, :graded ])
    end
end
