//
//  LearningTableViewController.swift
//  Cybware
//
//  Created by Batch-2 on 21/05/24.
//

import UIKit

class LearningTableViewController: UITableViewController {
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.tabBarItem.title = "Learning"
        self.tabBarItem.image = UIImage(systemName: "book")
    }

    
var courseList : [CourseDetails] = [CourseDetails(cImage: UIImage(named: "img1")!, title: "ABC", description: "ABB"),CourseDetails(cImage: UIImage(named: "img1")!, title: "ABC1", description: "ABB2"),CourseDetails(cImage: UIImage(named: "img1")!, title: "ABC", description: "ABB"),CourseDetails(cImage: UIImage(named: "img1")!, title: "ABC1", description: "ABB2"),CourseDetails(cImage: UIImage(named: "img1")!, title: "ABC", description: "ABB")]
    
    
    @IBOutlet var CTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return courseList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CourseTableViewCell
        
        let courseList1 = courseList[indexPath.row]
        cell.updateUI(with: courseList1)

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
