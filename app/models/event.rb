class Event
  def initialize(data)
    @data = data
  end

  def name
    @data['name']
  end

  def description
    @data['description']
  end

  def date
    @data['date']
  end
end