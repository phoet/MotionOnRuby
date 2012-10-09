describe "API" do
  Web.stub_api(self)
  it "should download infos" do
    Api.from_uri do |data|
      @results = data
      resume
    end
    wait_max(1) { @results.should.not.be.empty }
  end

  it "should load json data" do
    data = Api.new(Fixtures.load("data.json"))
    data.events.size.should.equal 24
  end
end
