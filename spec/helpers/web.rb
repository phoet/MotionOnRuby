module Web
  def self.stub_api(context)
    context.extend WebStub::SpecHelpers

    context.before do
      json = Fixtures.load("data.json")
      stub_request(:get, Api::API_ENDPOINT).to_return(body: json, content_type: "application/json")
    end
  end
end
