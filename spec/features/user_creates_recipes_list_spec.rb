require 'rails_helper'

feature 'Usuário cria lista de receitas' do
  scenario 'com sucesso' do
    user = create(:user, email: 'user@email.com', password: '123456', role: :user)

    login_as user, scope: :user
    visit root_path

    click_on 'Minhas Listas'
    click_on 'Criar Lista'
    fill_in 'Nome da Lista', with: 'Lanches'
    
    expect(page).to have_content 'Lanches'
  end
end