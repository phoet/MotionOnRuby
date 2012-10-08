class EventDetailsController < UIViewController
  extend IB

  attr_accessor :event

  outlet :name, UILabel
  outlet :description, UILabel
  outlet :date, UILabel

  def loadView
    self.view = NSBundle.mainBundle.loadNibNamed('EventDetailsView', owner:self, options:nil).first
  end

  def viewDidLoad
    name.text = event.name
    description.text = event.description
    date.text = event.date
  end
end
