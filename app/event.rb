class Event
  def initialize(data)
    @data = data
  end

  def name
    @data['name']
  end
end