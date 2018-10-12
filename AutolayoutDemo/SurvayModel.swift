//
//  SurvayModel.swift
//  AutolayoutDemo
//
//  Created by iosCan on 29/08/18.
//  Copyright © 2018 iosCan. All rights reserved.
//

import Foundation


enum LayoutType:String{

    case SingleChoice
    case MultiChoice
    case NumberRange
    case Number
    case Date
    case Comments
}
struct SurveyModel{
    
    let questionId:Int
    let question:String
    let response_type:LayoutType?
    let number_range_max:Int
    let number_range_min:Int
    let options:[String]
    var answer = [String]()
}
struct SurveyModelList{
    var surveyList = [SurveyModel]()
}
