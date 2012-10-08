class Data
  attr_reader :users, :events
  def initialize(data)
    @data = BW::JSON.parse(data)
    @events = @data[:events].map { |data| Event.new(data) }
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
