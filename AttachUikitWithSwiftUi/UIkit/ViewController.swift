//
//  ViewController.swift
//  AttachUikitWithSwiftUi
//
//  Created by Diab on 01/01/2024.
//

import UIKit


protocol PassColorDelegate:AnyObject{
    func passColor(color:UIColor)
}

class ViewController: UIViewController {

    var color:[UIColor] = [.systemIndigo,.systemMint,.systemOrange,.systemPurple,.systemPink,.systemRed,.systemYellow]
    weak var delegate:PassColorDelegate?
    
    
    static func create(delegate:PassColorDelegate?) -> ViewController{
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(identifier: "ViewController") as? ViewController
        vc!.delegate = delegate
        return vc!
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
     
    }
    
    
  
    
    
    @IBAction func changeColorAction(_ sender: Any) {
        delegate?.passColor(color: color.randomElement() ?? .red)
        self.dismiss(animated: true)
    }
    
    
    


}
