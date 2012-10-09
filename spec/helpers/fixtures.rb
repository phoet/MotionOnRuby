module Fixtures
  def self.load(file)
    File.open("#{App.resources_path}/fixtures/#{file}", "r") { |f| f.read }
  end
end
