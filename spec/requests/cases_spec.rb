caserequire 'rails_helper'

RSpec.describe 'Cases API', type: :request do
  # initialize test data
  let!(:cases) { create_list(:case, 10) }
  let(:case_id) { cases.first.id }

  # Test suite for GET /cases
  describe 'GET /cases' do
    # make HTTP get request before each example
    before { get '/cases' }

    it 'returns cases' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /cases/:id
  describe 'GET /cases/:id' do
    before { get "/cases/#{case_id}" }

    context 'when the record exists' do
      it 'returns the case' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(case_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:case_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Case/)
      end
    end
  end

  # Test suite for POST /cases
  describe 'POST /cases' do
    # valid payload
    let(:valid_attributes) { { url: 'www.nabu.io' } }

    context 'when the request is valid' do
      before { post '/cases', params: valid_attributes }

      it 'creates a case' do
        expect(json['url']).to eq('www.hannahsuttondesign.com')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/cases', params: { url: 'www.richard.com' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Created by can't be blank/)
      end
    end
  end

  # Test suite for PUT /cases/:id
  describe 'PUT /cases/:id' do
    let(:valid_attributes) { { url: 'www.canada.com' } }

    context 'when the record exists' do
      before { put "/cases/#{case_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /cases/:id
  describe 'DELETE /cases/:id' do
    before { delete "/cases/#{case_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
