describe Data do
  it "should download infos" do
    Data.from_uri do |data|
      data.should.not.be.empty
    end
  end
end
