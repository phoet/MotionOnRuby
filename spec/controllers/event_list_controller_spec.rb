describe "The Event list controller" do
  Web.stub_api(self)
  tests EventsListController

  it "has a navigation bar title" do
    view('Ruby Usergroup Hamburg - Mocktober 2012').should.not == nil
  end
end
