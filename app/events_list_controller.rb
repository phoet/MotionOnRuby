class EventsListController < UITableViewController
  def loadView
    self.tableView = UITableView.new
    @events = []
    Data.from_uri do |data|
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
    event = @events[indexPath.row]
    controller = UIApplication.sharedApplication.delegate.event_details_controller
    navigationController.pushViewController(controller, animated:true)
    controller.showEventDetails(event)
  end
end
