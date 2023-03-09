# forzen_string_literal: true

require 'rails_helper'

RSpec.describe CountriesController do
  describe 'GET #index' do
    before { get '/countries' }
    it 'loads all countries' do
      countries = create_list(:country, 5)
      expect(assigns(:countries)).to match_array(countries)
    end

    it 'renders index page' do
      expect(response).to render_template(:index)
    end

    it 'responds with status ok' do
      expect(response).to have_http_status(:ok)
    end
  end
end
