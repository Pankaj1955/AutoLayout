//
//  ViewController.swift
//  AutolayoutDemo
//
//  Created by iosCan on 29/08/18.
//  Copyright © 2018 iosCan. All rights reserved.
//

import UIKit
import  SceneKit

class ViewController: UIViewController {

    private let SCREEN_SIZE = UIScreen.main.bounds
    private let GAP_BETWEEN_VIEWS:CGFloat = 0.01

    var topLeftView = UIView()
    var topRightView = UIView()
    var bottomLeftView = UIView()
    var bottomRightView = UIView()
    
    var image1 = UIImageView()
    var image3 = UIImageView()
    var image5 = UIImageView()
    var image7 = UIImageView()
    
    var mainImage = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.image1.image = UIImage(named: "cloud")
        self.image3.image = UIImage(named: "desr")
        self.image5.image = UIImage(named: "fly")
        self.image7.image = UIImage(named: "imagesGame")

        self.mainImage.image = UIImage(named: "fly")
       // self.mainImage.frame = self.view.bounds
        
       // view.addSubview(mainImage)
        view.backgroundColor = UIColor.white
        addViews()
        addConstraints()

      

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addViews(){
        
        let heightOfSubView = SCREEN_SIZE.height / 2 - SCREEN_SIZE.height * GAP_BETWEEN_VIEWS / 2
        let widthOfSubView = SCREEN_SIZE.width / 2 - SCREEN_SIZE.height * GAP_BETWEEN_VIEWS / 2
        
        topLeftView = UIView(frame: CGRect(x: 0, y: 0, width: widthOfSubView, height: heightOfSubView))
        topRightView = UIView(frame: CGRect(x: widthOfSubView + (SCREEN_SIZE.height * GAP_BETWEEN_VIEWS), y: 0, width: widthOfSubView, height: heightOfSubView))
        
        bottomLeftView = UIView(frame: CGRect(x: 0, y: heightOfSubView + (SCREEN_SIZE.height * GAP_BETWEEN_VIEWS), width: widthOfSubView, height: heightOfSubView))

        bottomRightView = UIView(frame: CGRect(x: widthOfSubView + (SCREEN_SIZE.height * GAP_BETWEEN_VIEWS), y: heightOfSubView + (SCREEN_SIZE.height * GAP_BETWEEN_VIEWS), width: widthOfSubView, height: heightOfSubView))
        
        topLeftView.backgroundColor = UIColor.white
        topRightView.backgroundColor = UIColor.white
        bottomLeftView.backgroundColor = UIColor.white
        bottomRightView.backgroundColor = UIColor.white
        
        
        self.image1.frame = self.topLeftView.bounds
        self.image3.frame = self.topRightView.bounds
        self.image5.frame = self.bottomLeftView.bounds
        self.image7.frame = self.bottomRightView.bounds

        topLeftView.addSubview(image1)
        topRightView.addSubview(image3)
        bottomLeftView.addSubview(image5)
        bottomRightView.addSubview(image7)

        view.addSubview(topLeftView)
        view.addSubview(topRightView)
        view.addSubview(bottomLeftView)
        view.addSubview(bottomRightView)
    }
    func addtopLeftViewConstraints() {
        let topLeftViewLeadingConstraint = NSLayoutConstraint(item: topLeftView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.leading, multiplier: 1, constant: 0)
        
        let topLeftViewTopConstraint = NSLayoutConstraint(item: topLeftView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([topLeftViewLeadingConstraint, topLeftViewTopConstraint])
    }
    func addTopRightViewConstraints() {
        
        let topRightViewTrailingConstraint = NSLayoutConstraint(item: topRightView, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.trailing, multiplier: 1, constant: 0)
        
        let topRightViewTopConstraint = NSLayoutConstraint(item: topRightView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([topRightViewTrailingConstraint, topRightViewTopConstraint])
    }
    
    func addBottomLeftViewConstraints() {
        
        let bottomLeftViewLeadingConstraint = NSLayoutConstraint(item: bottomLeftView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.leading, multiplier: 1, constant: 0)
        
        let bottomLeftViewBottomConstraint = NSLayoutConstraint(item: bottomLeftView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([bottomLeftViewLeadingConstraint, bottomLeftViewBottomConstraint])
        
    }
    
    func addBottomRightViewConstraints() {
        
        let bottomRightViewTrailingConstraint = NSLayoutConstraint(item: bottomRightView, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.trailing, multiplier: 1, constant: 0)
        
        let bottomRightViewBottomConstraint = NSLayoutConstraint(item: bottomRightView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal
            , toItem: view, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([bottomRightViewTrailingConstraint, bottomRightViewBottomConstraint])
    }
    func addTopBottomConstraints() {
        let verticalSpacing1 = NSLayoutConstraint(item: bottomLeftView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: topLeftView, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: (SCREEN_SIZE.height * GAP_BETWEEN_VIEWS))
        
        let verticalSpacing2 = NSLayoutConstraint(item: bottomRightView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: topRightView, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: (SCREEN_SIZE.height * GAP_BETWEEN_VIEWS))
        
        NSLayoutConstraint.activate([verticalSpacing1, verticalSpacing2])
    }
    
    func addLeftRightConstraints() {
        let horizontalSpacing1 = NSLayoutConstraint(item: topRightView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: topLeftView, attribute: NSLayoutAttribute.trailing, multiplier: 1, constant: (SCREEN_SIZE.height * GAP_BETWEEN_VIEWS))
        
        let horizontalSpacing2 = NSLayoutConstraint(item: bottomRightView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: bottomLeftView, attribute: NSLayoutAttribute.trailing, multiplier: 1, constant: (SCREEN_SIZE.height * GAP_BETWEEN_VIEWS))
        
        NSLayoutConstraint.activate([horizontalSpacing1, horizontalSpacing2])
    }
    
    func addEqualWidthConstraints() {
        let topRightViewWidth = NSLayoutConstraint(item: topLeftView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: topRightView, attribute: NSLayoutAttribute.width, multiplier: 1, constant: 0)
        
        let bottomLeftViewWidth = NSLayoutConstraint(item: topLeftView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: bottomLeftView, attribute: NSLayoutAttribute.width, multiplier: 1, constant: 0)
        
        let bottomRightViewWidth = NSLayoutConstraint(item: topLeftView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: bottomRightView, attribute: NSLayoutAttribute.width, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([topRightViewWidth, bottomLeftViewWidth,bottomRightViewWidth ])
    }
    
    func addEqualHeightConstraints() {
        let topRightViewHeight = NSLayoutConstraint(item: topLeftView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: topRightView, attribute: NSLayoutAttribute.height, multiplier: 1, constant: 0)
        
        let bottomLeftViewHeight = NSLayoutConstraint(item: topLeftView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: bottomLeftView, attribute: NSLayoutAttribute.height, multiplier: 1, constant: 0)
        
        let bottomRightViewHeight = NSLayoutConstraint(item: topLeftView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: bottomRightView, attribute: NSLayoutAttribute.height, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([topRightViewHeight, bottomLeftViewHeight,bottomRightViewHeight ])
    }

    func disableAutoResizingMasks() {
        topLeftView.translatesAutoresizingMaskIntoConstraints = false
        topRightView.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftView.translatesAutoresizingMaskIntoConstraints = false
        bottomRightView.translatesAutoresizingMaskIntoConstraints = false
    }
    func addConstraints(){
        
        addtopLeftViewConstraints()
        addTopRightViewConstraints()
        addBottomLeftViewConstraints()
        addBottomRightViewConstraints()
        addTopBottomConstraints()
        addLeftRightConstraints()
        addEqualWidthConstraints()
        addEqualHeightConstraints()
        disableAutoResizingMasks()
        
    }
}

