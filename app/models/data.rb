class Data
  API_ENDPOINT = "http://hamburg.onruby.dev:5000/api.json"

  attr_reader :events
  def initialize(data)
    @data = BW::JSON.parse(data)
    @events = @data[:events].map { |data| Event.new(data) }
  end

  def empty?
    @data.nil?
  end

  def self.from_uri(uri=API_ENDPOINT, &block)
    BW::HTTP.get(uri) do |response|
      data = response.body.to_str
      block.call(new(data))
    end
  end
end
