//
//  SaveData.swift
//  Student Help
//
//  Created by AnhDuy Ha on 15/5/18.
//  Copyright © 2018 AnhDuy Ha. All rights reserved.
//

import Foundation

//Homework save and fetch Data
//This function is perform in the AppDelegate and it save the list array into UserDefaults when when app terminate and or enter background
func saveHomeworkData(list:[String]) {
    UserDefaults.standard.set(list, forKey: "Homework")
}

//This function is perform in the AppDelegate and pull data out of UserDefault and put it into the array and tableView when app is launch
func fetchHomeworkData() -> [String]? {
    if let saveHomework = UserDefaults.standard.array(forKey: "Homework") as? [String] {
        return saveHomework
    }
    else {
        return nil
    }
}


//Assessment save and fetch data
//This function is perform in the AppDelegate and it save the myAssessment array into UserDefaults when when app terminate and or enter background
func saveAssessmentData(myAssessment:[String]) {
    UserDefaults.standard.set(myAssessment, forKey: "Assessment")
}

func fetchAssessmentData() -> [String]? {
    if let saveAssessment = UserDefaults.standard.array(forKey: "Assessment") as? [String] {
        return saveAssessment
        
    }
    else {
        return nil
    }
}
