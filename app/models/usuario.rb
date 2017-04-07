class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  attr_protected 	:primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido,
  					:email, :encrypted_password
end
