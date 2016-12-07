class PeopleController < ApplicationController

	before_action :set_person, only: [:show, :edit, :update, :destroy]
	#GET HTTP METHOD
	def index
		@personas = Person.all 
	end


	#GET HTTP METOD
	def new
		@persona = Person.new
	end

	#POST HTTP METHOD
	def create
		@persona = Person.new(people_params)
		respond_to do |format|
			if @persona.save
				format.html {redirect_to people_path, notice: 'Persona guardada en la base de datos'}
				format.json {render :index, status: :created}
				
			else 
				format.html {render :new, notice: 'no se pudo guardar, intenta de nuevo'}
				format.json {render json: @personas.errors, status: :unprocessable_entity}
			end
		end
	end


	def show
	end

	def edit
	end

	def update
		respond_to do |format|
			if @persona.update(people_params)
				format.html {redirect_to people_path, notice: 'Persona fue actualizada'}
				format.json {render index, status: :ok}
			else
				format.html {render :edit, notice: 'No se pudo actualizar, intenta de nuevo'}
				format.json {render json: @persona.errors, status: :unprocessable_entity}
			end
		end
	end

	def destroy
		@persona.destroy
		respond_to do |format|
			format.html {redirect_to people_path, notice: 'Persona fue borrada'}
			format.jsom {head :no_contents}
		end
	end




	private
	def set_person
		@persona = Person.find(params[:id])
	end


	def people_params
		params.require(:person).permit(:name, :identificacion, :apartamento)
	end



end
