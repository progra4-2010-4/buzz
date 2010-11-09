Dado /^que no estoy autenticado$/ do
        #debería haber una ruta en nuestra aplicación a la cual ir para
        #des-autenticarse. Asumamos que existe y es /users/sign_out
        visit "/users/sign_out"
    end
