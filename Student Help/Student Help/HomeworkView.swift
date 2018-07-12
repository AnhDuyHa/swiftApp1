//
//  HomeworkView.swift
//  Student Help
//
//  Created by AnhDuy Ha on 21/5/18.
//  Copyright © 2018 AnhDuy Ha. All rights reserved.
//

import UIKit

class HomeworkView: UIViewController {

    @IBOutlet weak var homeworkExpandedView: UITextView!
    
    //Edit mistake when user add new homework and save new to the table in the same row position
    //when is button is click it will remove the old homework row and add the new one you just edited in
    @IBAction func setEditAction(_ sender: Any) {
        
        if homeworkExpandedView.text != ""
        {
            list.remove(at: myIndex)//remove old
            list.insert(homeworkExpandedView.text, at: myIndex)//add new
            
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        homeworkExpandedView.text = list[myIndex] // The textView in the HomeworkView viewcontroller is now the homework tableView with correct items
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
