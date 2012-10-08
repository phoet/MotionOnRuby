describe "The Event list controller" do
  extend WebStub::SpecHelpers
  tests EventsListController

  before do
    json = File.open("#{App.resources_path}/fixtures/data.json", "r") { |f| f.read }
    stub_request(:get, "http://hamburg.onruby.dev:5000/api.json").to_return(json: json)
  end

  it "has a navigation bar title" do
    view('Ruby Usergroup Hamburg - August 2012').should.not == nil
  end
end
