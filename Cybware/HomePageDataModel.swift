//
//  HomePageDataModel.swift
//  Cybware
//
//  Created by Batch-1 on 22/05/24.
//

import Foundation
import UIKit

struct Section1Data {
    var imageName : String
    var subjectName: String
}

struct Section2Data{
    var imageName : String
}

struct Section3Data {
    var imageName : String
    var title : String
    var date : Date
    var source : String
    var description : String
    
}

struct FirstSectionData {
    var imageName : String
    var textName : String = "Hi, Demo"
}

class DataModel {
    static var firstSection : [FirstSectionData] = [
        FirstSectionData(imageName: "profilePic", textName: "Hi, Aditya")
    ]
    
    static var section1:[Section1Data] = [
        Section1Data(imageName: "course1", subjectName: "Security Awareness")
    ]
    
    static var section2:[Section2Data] = [
        Section2Data(imageName: "cert1"),
        Section2Data(imageName: "cert1")
    ]
    
    static var section3: [Section3Data] = [
        Section3Data(imageName: "imgNews1", title: "Google Patches Yet Another Actively Exploited Chrome Zero-Day Vulnerability", date: Date(), source: "TheHackerNews", description: ""),
        Section3Data(imageName: "imgNews2", title: "Apple and Google Launch Cross-Platform Feature to Detect Unwanted Bluetooth Tracking Devices", date: Date(), source: "TheHackerNews", description: ""),
        Section3Data(imageName: "imgNews1", title: "Google Patches Yet Another Actively Exploited Chrome Zero-Day Vulnerability", date: Date(), source: "TheHackerNews", description: ""),
        
        Section3Data(imageName: "imgNews2", title: "Apple and Google Launch Cross-Platform Feature to Detect Unwanted Bluetooth Tracking Devices", date: Date(), source: "TheHackerNews", description: "")
    ]
}
