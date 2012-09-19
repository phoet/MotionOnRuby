class Data
  def initialize(data)
    @data = BW::JSON.parse(data)
  end

  def users
    @data[:users]
  end

  def events
    @data[:events]
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
