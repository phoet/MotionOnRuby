class EventsListController < UITableViewController
  def loadView
    self.tableView = UITableView.new
    navigationItem.title = "Events"
    @events = []
  end

  def viewDidLoad
    Api.from_uri do |data|
      @events = data.events
      self.tableView.reloadData
    end
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @events.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: "action_cell").tap do |cell|
      cell.accessoryType  = UITableViewCellAccessoryDetailDisclosureButton
      cell.textLabel.text = @events[indexPath.row].name
    end
  end

  def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    controller = UIApplication.sharedApplication.delegate.event_details_controller
    controller.event = @events[indexPath.row]
    navigationController.pushViewController(controller, animated:true)
  end
end
