class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :primer_nombre, :primer_apellido, :nickname,
  						:email, :password, :password_confirmation

  has_many :statuses


  validates :primer_nombre, presence: true
  validates :primer_apellido, presence: true
  validates :nickname, 	presence: true,
                     	uniqueness: true
                     	


  def nombre_completo

  	primer_nombre + " " + primer_apellido

  end


end
