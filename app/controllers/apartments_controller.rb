class ApartmentsController < ApplicationController

	before_action :set_apartment, only: [:show, :update, :edit, :destroy]	

  	#GET HTTP METHOD
  	def index
  		@apartamentos = Apartment.all
  	end

  	#GET HTTP METOD
  	def new
  		@apartamento = Apartment.new
  	end

  	#POST HTTP METHOD
  	def create
  		@apartamento = Apartment.new(apartments_params)

  		respond_to do |format|
  			if @apartamento.save
  				format.html {redirect_to apartments_path, notice: 'Apartamento guardado en la base de datos'}
				format.json {render :index, status: :created}
			else
				format.html {render :new, notice: 'No se pudo guardar el apartamento, intenta de nuevo'}
				format.json {render json: @apartamento.errors, status: :unprocessable_entity}
			end
  		end	
  	end

  	def show
  	end

  	def edit
  	end

  	def update
  		respond_to do |format|
  			if @apartamento.update(apartments_params)
  				format.html {redirect_to apartments_path, notice: 'Apartamento fue actualizado' }
  				format.json {render :show, status: :ok}
  			else
  				format.html {render :edit}
  				format.json {render json: @apartamento.errors, status: :unprocessable_entity}
  			end
  		end
  	end

  	def destroy
  		@apartamento.destroy
  		respond_to do |format|
  			format.html {redirect_to apartments_path, notice: 'Apartamento fue borrado'}
  			format.json {head :no_contents }
  		end
  	end






  	private
  	
  	def set_apartment
  		@apartamento = Apartment.find(params[:id])
  	end

  	def apartments_params
  		params.require(:apartment).permit(:nombre, :torre, :piso)
  	end








end
