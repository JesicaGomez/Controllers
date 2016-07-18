class AddApellidoToUser < ActiveRecord::Migration[5.0]
  def change
  	#crear una columna seguido de nombre de la tabla  luego nombre de la columna y tipo de dato
  	add_column :users, :apellido, :string
  end
end
