//
//  AssessmentView.swift
//  Student Help
//
//  Created by AnhDuy Ha on 21/5/18.
//  Copyright © 2018 AnhDuy Ha. All rights reserved.
//

import UIKit

class AssessmentView: UIViewController {

    @IBOutlet weak var assessmentExpandedView: UITextView!
    
    @IBAction func saveChangeAction(_ sender: Any) {
        myAssessment.remove(at: myIndex)
        myAssessment.insert(assessmentExpandedView.text, at: myIndex)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         assessmentExpandedView.text = myAssessment[myIndex]
        
        
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
