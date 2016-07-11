//
//  AlarmDetailTableViewController.swift
//  Alarm
//
//  Created by Joseph Hansen on 7/11/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class AlarmDetailTableViewController: UITableViewController {
    
    var alarm: Alarm?
    
    
    @IBOutlet weak var alarmDatePicker: UIDatePicker!
    @IBOutlet weak var alarmTextField: UITextField!
    
    @IBOutlet weak var alarmEnableButton: UIButton!
    
    func updateWithAlarm(alarm: Alarm) {
        guard let thisMorningAtMidnight = DateHelper.thisMorningAtMidnight else {return}
        alarmDatePicker.setDate(NSDate(timeInterval: alarm.fireTimeFromMidnight, sinceDate: thisMorningAtMidnight), animated: false)
        alarmTextField.text = alarm.name
        self.title = alarm.name
    }
    
    @IBAction func enableButtonTapped(sender: AnyObject) {
        
    }
    
    @IBOutlet weak var saveButtonTapped: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let alarm = alarm {
            updateWithAlarm(alarm)
        }
        setupView()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    func setupView() {
        if alarm == nil {
            alarmEnableButton.hidden = true
        } else {
            alarmEnableButton.hidden = false
            if alarm?.enabled == true {
                alarmEnableButton.setTitle("Disable", forState: .Normal)
                alarmEnableButton.setTitleColor(.whiteColor(), forState: .Normal)
                alarmEnableButton.backgroundColor = .redColor()
            } else {
                alarmEnableButton.setTitle("Enable", forState: .Normal)
                alarmEnableButton.setTitleColor(.blueColor(), forState: .Normal)
                alarmEnableButton.backgroundColor = .greenColor()
            }
        }
    }
    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
