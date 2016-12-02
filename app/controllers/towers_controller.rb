class TowersController < ApplicationController

	before_action :set_tower, only: [:show, :update, :edit, :destroy]	

  	#GET HTTP METHOD
  	def index
  		@torres = Tower.all
  	end

  	#GET HTTP METOD
  	def new
  		@torre = Tower.new
  	end

  	#POST HTTP METHOD
  	def create
  		@torre = Tower.new(towers_params)

  		respond_to do |format|
  			if @torre.save
  				format.html {redirect_to towers_path, notice: 'Torre guardada en la base de datos'}
				format.json {render :index, status: :created}
			else
				format.html {render :new, notice: 'No se pudo guardar la torre, intenta de nuevo'}
				format.json {render json: @torre.errors, status: :unprocessable_entity}
			end
  		end	
  	end

  	def show
  	end

  	def edit
  	end

  	def update
  		respond_to do |format|
  			if @torre.update(towers_params)
  				format.html {redirect_to towers_path, notice: 'Torre fue actualizada' }
  				format.json {render :show, status: :ok}
  			else
  				format.html {render :edit}
  				format.json {render json: @torre.errors, status: :unprocessable_entity}
  			end
  		end
  	end

  	def destroy
  		@torre.destroy
  		respond_to do |format|
  			format.html {redirect_to towers_path, notice: 'Torre fue borrada'}
  			format.json {head :no_contents }
  		end
  	end






  	private
  	
  	def set_tower
  		@torre = Tower.find(params[:id])
  	end

  	def towers_params
  		params.require(:tower).permit(:nombre, :portero)
  	end


end


