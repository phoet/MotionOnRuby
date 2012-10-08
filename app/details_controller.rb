class DetailsController < UIViewController
  def initialize(data)
    @data = data
  end

  def loadView
    self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.bounds).tap do |view|
      view.backgroundColor = UIColor.whiteColor
    end
  end
end
