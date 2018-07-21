class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def consultar_temperatuas
    @cities = City.all
    @cities.each do |c|
      response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?id=#{c.cod}&appid=137492662fc17ecc1f110f540f86fc9e")
      c.temperatures.create(temp: response["main"]["temp"]) if response["main"].present?
    end
    redirect_to cities_path
  end

  def show
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_city
      @city = City.find(params[:id])
    end

    def city_params
      params.require(:city).permit(:name, :cod)
    end
end
