# Classe para mapear os elementos da pagina home
class UserPage < SitePrism::Page
  set_url '/users/new'
  element :nome, '#user_name'
  element :sobrenome, '#user_lastname'
  element :endereco, '#user_address'
  element :email, '#user_email'
  element :universidade, '#user_university'
  element :profissao, '#user_profile'
  element :genero, '#user_gender'
  element :idade, '#user_age'
  element :botao_criar, 'input[value="Criar"]'
  element :botao_cancelar, 'a[href="/treinamento/home"]'

  def realizar_cadastro(pessoa)
    nome.set pessoa.nome
    sobrenome.set pessoa.sobrenome
    endereco.set pessoa.endereco
    email.set pessoa.email
    universidade.set 'Anhanguera'
    profissao.set 'analista' 
    genero.set 'Masculino'
    idade.set 28
    botao_criar.click
  end

end
