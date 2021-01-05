class KullanicisController < ApplicationController
  before_action :set_kullanici, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /kullanicis
  # GET /kullanicis.json
  def index
    @kullanicis = Kullanici.all
  end

  # GET /kullanicis/1
  # GET /kullanicis/1.json
  def show
  end

  # GET /kullanicis/new
  def new
    @kullanici = Kullanici.new
  end

  # GET /kullanicis/1/edit
  def edit
  end

  # POST /kullanicis
  # POST /kullanicis.json
  def create
    @kullanici = Kullanici.new(kullanici_params)

    respond_to do |format|
      if @kullanici.save
        format.html { redirect_to @kullanici, notice: 'Kullanici was successfully created.' }
        format.json { render :show, status: :created, location: @kullanici }
      else
        format.html { render :new }
        format.json { render json: @kullanici.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kullanicis/1
  # PATCH/PUT /kullanicis/1.json
  def update
    respond_to do |format|
      if @kullanici.update(kullanici_params)
        format.html { redirect_to @kullanici, notice: 'Kullanici was successfully updated.' }
        format.json { render :show, status: :ok, location: @kullanici }
      else
        format.html { render :edit }
        format.json { render json: @kullanici.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kullanicis/1
  # DELETE /kullanicis/1.json
  def destroy
    @kullanici.destroy
    respond_to do |format|
      format.html { redirect_to kullanicis_url, notice: 'Kullanici was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kullanici
      @kullanici = Kullanici.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kullanici_params
      params.require(:kullanici).permit(:ad, :soyad, :emial, :telefon_numarası, :okudugunuz_okul, :calıstıgınız_is_yerleri, :user_id)
    end
end
