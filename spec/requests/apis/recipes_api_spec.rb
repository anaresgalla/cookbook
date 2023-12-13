require 'rails_helper'
  describe 'Recipes API' do
    context 'lista todas as receitas' do 
      user = create(:user, email: 'user@email.com', password: '123456', role: :user)
      recipe = Recipe.create!(title: 'Brigadeiro', cook_time: '10')

  end 
end 