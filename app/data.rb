class Data
  def initialize(data)
    @data = data
  end

  def empty?
    @data.nil?
  end

  def self.from_uri(uri="http://hamburg.onruby.dev:5000/api.json", &block)
    BW::HTTP.get(uri) do |response|
      data = response.body.to_str
      block.call(new(data))
    end
  end
end