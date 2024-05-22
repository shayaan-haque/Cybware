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
    var date : String
    var source : String
}

class DataModel {
    static var section1:[Section1Data] = [Section1Data(imageName: "img1.jpg", subjectName: "Security Awareness")]
    
    static var section2:[Section2Data] = [Section2Data(imageName: "Certificate1")]
    
    static var section3: [Section3Data] = [Section3Data(imageName: "img1.jpg", title: "Breaking News", date: "13-03-2024", source: "TheHackerNews")]
}
