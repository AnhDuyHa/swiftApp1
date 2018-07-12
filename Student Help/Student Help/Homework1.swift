//
//  Homework1.swift
//  Student Help
//
//  Created by AnhDuy Ha on 13/5/18.
//  Copyright © 2018 AnhDuy Ha. All rights reserved.
//

import UIKit
//global array, to let its acessable for all and Homework1 ViewController
var list:Array = [String]()
var myIndex = 0

class Homework1: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var myTableView: UITableView!

    //tell how many rows we want in our tableView
   public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
   {
        return (list.count) //number of rows is equal to the number of items that is in the h/w list
    }
    
    
    
    //puting text in the tableView
   public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
   {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
    
        return(cell)
    }
    

    
    //This function let the user delete an item by swiping left
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    //The row that you tap on it will transfer the user you to another view controller
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row //the number of myIndex will be equal to the number of row that you are pressing on
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
    
    //each time the tableView appear its gonna reload the data
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }

    //Goes back to the tableView
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        
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
