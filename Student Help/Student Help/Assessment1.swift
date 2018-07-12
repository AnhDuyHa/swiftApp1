//
//  Assessment1.swift
//  Student Help
//
//  Created by AnhDuy Ha on 17/5/18.
//  Copyright © 2018 AnhDuy Ha. All rights reserved.
//

import UIKit
//every code in here will be and work the same as in the homework1 viewcontroller
var myAssessment:Array = [String]()

class Assessment1: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
       @IBOutlet weak var my2ndTableView: UITableView!
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return(myAssessment.count)
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell2")
        cell.textLabel?.text = myAssessment[indexPath.row]
        
        return(cell)
    }
    
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            myAssessment.remove(at: indexPath.row)
            my2ndTableView.reloadData()
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row //the number of myIndex will be equal to the number of row that you are pressing on
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        my2ndTableView.reloadData()
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
