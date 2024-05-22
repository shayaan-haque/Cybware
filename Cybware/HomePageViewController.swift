//
//  HomePageViewController.swift
//  Cybware
//
//  Created by Batch-2 on 21/05/24.
//

import UIKit

class HomePageViewController: UIViewController {
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.tabBarItem.title = "Homepage"
        self.tabBarItem.image = UIImage(systemName: "homekit")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}