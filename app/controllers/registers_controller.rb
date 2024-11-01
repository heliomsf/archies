class RegistersController < ApplicationController
  before_action :set_register, only: %i[ show edit update destroy ]
  
  # GET /registers or /registers.json
  def index
    @registers = Register.all
  end
  
  def index
    if params[:search]
      @registers = Register.where("cdgpdf LIKE ? OR ref LIKE ? OR autorcargo LIKE ? OR destinatariocargo LIKE ? OR titulo LIKE ? OR local LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @registers = Register.all
    end
  end

  # GET /search
  def search
    @registers = Register.where("cdgpdf LIKE ? OR ref LIKE ? OR autorcargo LIKE ? OR destinatariocargo LIKE ? OR titulo LIKE ? OR local LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    render :index
  end

  # GET /registers/1 or /registers/1.json
  def show
    @register = Register.find(params[:id])
  end

  # GET /registers/new
  def new
    @register = Register.new
  end

  # GET /registers/1/edit
  def edit
  end

  # POST /registers or /registers.json
  def create
    @register = Register.new(register_params)

    respond_to do |format|
      if @register.save
        format.html { redirect_to register_url(@register), notice: "Register was successfully created." }
        format.json { render :show, status: :created, location: @register }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registers/1 or /registers/1.json
  def update
    respond_to do |format|
      if @register.update(register_params)
        format.html { redirect_to register_url(@register), notice: "Register was successfully updated." }
        format.json { render :show, status: :ok, location: @register }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registers/1 or /registers/1.json
  def destroy
    @register.destroy

    respond_to do |format|
      format.html { redirect_to registers_url, notice: "Register was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def register_params
      params.require(:register).permit(:cdgpdf, :ref, :autorcargo, :destinatariocargo, :titulo, :local, :data1, :data2, :data3, :acesso, :obs)
    end
end
