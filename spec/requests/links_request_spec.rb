require "rails_helper"

describe "POST /api/v1/links" do
  it "loads links into the db and adds one read event" do
    params = {link: {'url': "https://google.com"}}
    post '/api/v1/links', params: params

    expect(response).to be_success
  end
 end
