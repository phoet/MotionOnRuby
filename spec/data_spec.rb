describe Data do
  # it "should download infos" do
  #   Data.from_uri do |data|
  #     data.should.not.be.empty
  #   end
  # end

  before do
    @raw_json = File.open("#{App.resources_path}/fixtures/data.json", "r") { |f| f.read }
  end

  it "should load json data" do
    data = Data.new(@raw_json)
    data.users.size.should.equal 259
  end
end
