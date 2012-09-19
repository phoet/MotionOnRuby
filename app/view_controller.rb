class ViewController < UITableViewController
  def loadView
    self.tableView = UITableView.new
    @rows = []
    Data.from_uri do |data|
      @rows = data.events.map { |event| event[:name] }
      self.tableView.reloadData
    end
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @rows.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: "action_cell").tap do |cell|
      cell.accessoryType  = UITableViewCellAccessoryDetailDisclosureButton
      cell.textLabel.text = @rows[indexPath.row]
    end
  end

  def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    controller = DetailsController.new
    navigationController.pushViewController(controller, animated:true)
  end
end
