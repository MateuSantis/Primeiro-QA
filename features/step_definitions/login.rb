Dado('que o usuario queira se logar') do
    @test.load
    @test.userLogin
  end
  
  Quando('ele digitar as credenciais validas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
  end
  
  Entao('deve acessar o site com sucesso') do
    @home.checkLoginSuccessful
  end