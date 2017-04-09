require 'test_helper'

class UserTest < ActiveSupport::TestCase
 
 	test "un usuario debería entrar su nombre de perfil con formato" do
 		user = User.new
 		user.nickname = 'mi nombre con espacios'
 		assert !user.save

 		assert !user.errors[:nickname].empty?
 		assert user.errors[:nickname].include?("debe estar formateado correctamente.")
 	end
end
