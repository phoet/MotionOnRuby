describe "Data" do
  Web.stub_api(self)
  it "should download infos" do
    Data.from_uri do |data|
      @results = data
      resume
    end
    wait_max(1) { @results.should.not.be.empty }
  end

  it "should load json data" do
    data = Data.new(Fixtures.load("data.json"))
    data.events.size.should.equal 24
  end
end
