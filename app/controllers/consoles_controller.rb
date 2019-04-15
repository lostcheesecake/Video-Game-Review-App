# frozen_string_literal: true

class ConsolesController < OpenReadController
  before_action :set_console, only: %i[show update destroy]

  # GET /consoles
  def index
    @consoles = Console.all

    render json: @consoles
  end

  # GET /consoles/1
  def show
    render json: @console
  end

  # POST /consoles
  def create
    @console = current_user.consoles.create(console_params)

    if @console.save
      render json: @console, status: :created, location: @console
    else
      render json: @console.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consoles/1
  def update
    if @console.update(console_params)
      render json: @console
    else
      render json: @console.errors, status: :unprocessable_entity
    end
  end

  # DELETE /consoles/1
  def destroy
    @console.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_console
    @console = current_user.consoles.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def console_params
    params.require(:console).permit(:system, :text)
  end
end
