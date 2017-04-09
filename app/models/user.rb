class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :primer_nombre, :primer_apellido, :nickname,
  						:email, :encrypted_password, :password, :password_confirmation
end
