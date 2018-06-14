//
//  OnboardViewController.swift
//  Side Menu
//
//  Created by Christian Vargas on 6/7/18.
//  Copyright © 2018 Christian O. Vargas. All rights reserved.
//

import UIKit
import paper_onboarding

class OnboardViewController: UIViewController {
 
    //outlets
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var OnboardingView: OnboardingViewClass!
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
    OnboardingView.dataSource = self
    OnboardingView.delegate = self
 
    }



 
}



extension OnboardViewController: PaperOnboardingDataSource, PaperOnboardingDelegate {

    func onboardingItemsCount() -> Int {
        return 3
    }
 
 
 

    func onboardingItem(at index: Int) -> OnboardingItemInfo {

        //for the background color
        let BGOne = #colorLiteral(red: 0.4062895179, green: 0.2437506914, blue: 0.06659346819, alpha: 1)
        let BGTwo = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        let BGThree = #colorLiteral(red: 0.9983721375, green: 0.9353169799, blue: 0.7877422571, alpha: 1)
 
        //for the informationImage
        let illus = #imageLiteral(resourceName: "illustration")
        let post = #imageLiteral(resourceName: "post-1")
        let card = #imageLiteral(resourceName: "card-1")
 
        
        //for the pageIcon
        let circle = #imageLiteral(resourceName: "active")
        
        //for the
        let textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

        let titleFont = UIFont(name: "AvenirNext-Bold", size: 18)!
        let descFont = UIFont(name: "AvenirNext-Regular", size: 14)!

 
        return  [(#imageLiteral(resourceName: "illustration"), "Beer", "Beer is Awesome.", #imageLiteral(resourceName: "active"), BGOne, textColor, textColor, titleFont, descFont),
                 (#imageLiteral(resourceName: "post-1"), "Post", "Post is more Awesome.", #imageLiteral(resourceName: "active"), BGTwo, textColor, textColor, titleFont, descFont),
                 (#imageLiteral(resourceName: "card-1"), "Card", "Card is Awesomesome.", #imageLiteral(resourceName: "active"), BGThree, textColor, textColor, titleFont, descFont)][index]


    }


    //    Error: Cannot convert return expression of type '(UIImage, String, String, UIImage, UIColor, UIColor, UIColor, UIFont, UIFont)' to return type 'OnboardingItemInfo'

}


