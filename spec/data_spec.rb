describe Data do
  it "should download infos" do
    Data.from_uri do |data|
      @results = data
      resume
    end
    wait_max(1) { @results.should.not.be.empty }
  end

  before do
    @raw_json = File.open("#{App.resources_path}/fixtures/data.json", "r") { |f| f.read }
  end

  it "should load json data" do
    data = Data.new(@raw_json)
    data.events.size.should.equal 24
  end
end
