//
//  ViewController.swift
//  LocalizationProj
//
//  Created by mac on 12/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var val = "wecome".localized("en")
        print(val)
        val = "wecome".localized("ar")
        print(val)
        
        // Do any additional setup after loading the view.
    }


}

extension String {
func localized(_ lang:String) ->String {

    
    let path = Bundle.main.path(forResource: lang, ofType: "lproj")
    let bundle = Bundle(path: path!)

    return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
}}
