require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'POST /posts' do
    it 'create a new post' do
      post :create, params: {content: 'something'}

      expect(Post.count).to eq(1)
    end

    it 'responds with a post' do
      post :create, params: {content: 'Something'}
      expected_response = {
        post: {
          conyent: 'Something'
        }
      }
      expect(response.body).to eq(expected_response.to_json)
    end
  end
end



