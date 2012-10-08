class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(events_list_controller)
    @window.makeKeyAndVisible
  end

  def events_list_controller
    @events_list_controller ||= EventsListController.new
  end

  def event_details_controller
    @beer_details_controller ||= EventDetailsController.new
  end
end
