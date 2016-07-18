class UsersController < ApplicationController
	#creo una variable que me llame a todo lo que hay en el controlador, estamos llamando al modelo dentro del controlador
	def index
		@users = User.all
	end
	#me va a mostrar un nuevo formulario. Solo lo inicializo
	def new
		@user = User.new
	end
	#Utilizar parametros con los Id para determinar cual estamos editando
	def edit
		@user = User.find(params(:id))
	end
	#LLamar a un usuario especifico, caracteristicas del objeto
	def show
		@user = User.find(params(:id))
	end
	def destroy
		@user = User.find(params(:id))
		@user.destroy
		redirect_to users_url
	end
	def create
		@user = User.new(user_params)
		respond_to do |format|
			if @user.save
				format.html {redirect_to users_url, notice: "se ha guardado el mensaje"}
				format.json {render json: users_url, status: :create, location: users_url}
			else
				format.html {render}
			end
		end
	end
	#cambiar la info del objeto. le doy un metodo que voy a definir posteriormente
	def update
		@user = User.find(params(:id))
		@user.update(user_params)
	end
	def user_params
		params.require(:user).permit(:name, :email, :apellido, :id)
	end
end
