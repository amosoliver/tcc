json.extract! pessoa, :id, :nome, :cpf, :data_nascimento, :telefone, :email, :endereco, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
