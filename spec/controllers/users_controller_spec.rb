require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views


  describe 'POST /users' do
        it 'create a user' do
          post :create, params: { username: 'Harry' }
    
          expect(User.count).to eq(1)
        end

        it 'responds with a user' do
          post :create, params: {username: 'Harry'}
          expected_response = {
            user: {
              username: 'Harry'
            }
          }
          expect(response.body).to eq(expected_response.to_json)
      end

    end
end


