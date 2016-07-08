class AutoGatesController < ApplicationController
  before_action :set_auto_gate, only: [:show, :edit, :update, :destroy]

  # GET /auto_gates
  # GET /auto_gates.json
  def index
    @auto_gates = AutoGate.all
  end

  # GET /auto_gates/1
  # GET /auto_gates/1.json
  def show
  end

  # GET /auto_gates/new
  def new
    @auto_gate = AutoGate.new
  end

  # GET /auto_gates/1/edit
  def edit
  end

  # POST /auto_gates
  # POST /auto_gates.json
  def create
    @auto_gate = AutoGate.new(auto_gate_params)

    respond_to do |format|
      if @auto_gate.save
        format.html { redirect_to @auto_gate, notice: 'Auto gate was successfully created.' }
        format.json { render :show, status: :created, location: @auto_gate }
      else
        format.html { render :new }
        format.json { render json: @auto_gate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_gates/1
  # PATCH/PUT /auto_gates/1.json
  def update
    respond_to do |format|
      if @auto_gate.update(auto_gate_params)
        format.html { redirect_to @auto_gate, notice: 'Auto gate was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_gate }
      else
        format.html { render :edit }
        format.json { render json: @auto_gate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_gates/1
  # DELETE /auto_gates/1.json
  def destroy
    @auto_gate.destroy
    respond_to do |format|
      format.html { redirect_to auto_gates_url, notice: 'Auto gate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_gate
      @auto_gate = AutoGate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_gate_params
      params.require(:auto_gate).permit(:name, :open_code, :shared_secret)
    end
end
