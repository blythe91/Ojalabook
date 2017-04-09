require 'test_helper'

class RutasPersonalizadasTest < ActionDispatch::IntegrationTest
  
  	test "el /login abre la pagina de inicio de sesion" do
  		get '/inicio'
  		assert_response :success
  	end

  	test "el /logout debe cerrar sesion" do
  		get '/desconectar'
  		assert_response :success
  		assert_redirected_to '/'
  	end

  	test "el /registrar abre la pagina de registrar usuario" do
  		get '/registrar'
  		assert_response :success
  	end
  		
end
