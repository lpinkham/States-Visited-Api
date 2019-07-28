# frozen_string_literal: true

class StatesController < ProtectedController
  before_action :set_state, only: %i[show update destroy]

  # GET /states
  def index
    @states = current_user.states.all

    render json: @state
  end

  # GET /states/1
  def show
    render json: @state
  end

  # POST /states
  def create
    @state = current_user.states.build(state_params)

    if @state.save
      render json: @state, status: :created
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /states/1
  def update
    if @state.update(state_params)
      render json: @state
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  # DELETE /states/1
  def destroy
    @state.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_state
    @state = State.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def state_params
    params.require(:state).permit(:state_name, :date_visited, :highlight,
                                  :revisit)
  end

  private :set_state, :state_params
end
