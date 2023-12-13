require 'rails_helper'
  describe 'Recipes API' do
    context 'GET /api/v1/recipes' do 
      it 'lista todas as receitas' do
        user = create(:user, email: 'user@email.com', password: '123456', role: :user)
        recipe = Recipe.create!(title: 'Brigadeiro', cook_time: '10')

        get "api/v1/recipes"
        expect(response.status).to eq 200
        expect(response.content_type).to include 'application/json'
        json_response = JSON.parse(response.body)
        
        expect(json-response.length).to eq 1
      end 
  end 
end 