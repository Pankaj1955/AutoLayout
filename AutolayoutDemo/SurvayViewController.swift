//
//  SurvayViewController.swift
//  AutolayoutDemo
//
//  Created by iosCan on 29/08/18.
//  Copyright © 2018 iosCan. All rights reserved.
//

import UIKit

class SurvayViewController: UIViewController {

    @IBOutlet var surveyTableView: UITableView!

    var surveyListViewModel:SurveyModelList = SurveyModelList(){
        didSet {
            
            self.surveyTableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        surveyTableView.rowHeight = UITableViewAutomaticDimension
        surveyTableView.estimatedRowHeight = 50
        surveyTableView.separatorStyle = .none
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
extension SurvayViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "Survay")
        let surveyQustion = surveyListViewModel.surveyList[indexPath.row]
        
        if let layOutType = surveyQustion.response_type{
            switch  layOutType{
            case .SingleChoice:
             
                 let cellText = Bundle.main.loadNibNamed("SingalTableViewCell", owner: self, options: nil)? [0] as! SingalTableViewCell
                cellText.questionLabel.text = "This is very best example of ios app i have ever seen......."
                cellText.answerTextView.text = "-"
                cell = cellText
                
            default:
                break
                
            }
            
        cell?.selectionStyle = .none
        
        if let cell = cell{
            
            return cell
            
         }
        }
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selc:\(indexPath.row)")
    }
    
    
    // UITableViewAutomaticDimension calculates height of label contents/text
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//        let surveyQustion = surveyListViewModel.surveyList[indexPath.row]
//
//        if let layOutType = surveyQustion.response_type{
//
//            switch  layOutType{
//            case .MultiChoice:
//                return CGFloat((50 * surveyQustion.options.count) + 50)
//
//            case .SingleChoice:
//                return CGFloat((50 * surveyQustion.options.count) + 50)
//
//            default:
//                return UITableViewAutomaticDimension
//            }
//        }
//
//        return UITableViewAutomaticDimension
//
//    }
    
 }

