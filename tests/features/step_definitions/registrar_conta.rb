Quando(/^eu faco cadastro$/) do
  user_page.load
  @pessoa = OpenStruct.new
  @pessoa.nome = Faker::Name.first_name
  @pessoa.sobrenome = Faker::Name.last_name
  @pessoa.endereco = Faker::Address.street_name
  @pessoa.email = Faker::Internet.free_email

  user_page.realizar_cadastro(@pessoa)
end

Então(/^eu verifico se o cadastro foi realizado$/) do
  @texto = find('#notice')
  expect(@texto.text).to eq 'Usuário Criado com sucesso'
end
