//
//  ViewController.swift
//  testp
//
//  Created by Sina Taherkhani on 6/4/1400 AP.
//

import UIKit

class VC_counter: UIViewController {
    @IBOutlet var lbl_count: UILabel!
    @IBOutlet var plusBTN: UIButton!
    @IBOutlet var MinusBTN: UIButton!
    var count:Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupview()
        lbl_count.text="0"
        print("view did load")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("view did layout subviews")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("view will layout subviews")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disapear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    func setupview(){
        self.plusBTN.layer.cornerRadius=self.plusBTN.frame.height/2
        self.MinusBTN.layer.cornerRadius=self.MinusBTN.frame.height/2
    }
    @IBAction func plus_btn(_ sender: Any) {
        count+=1
        lbl_count.text=String(self.count)
    }
    @IBAction func minus_btn(_ sender: Any) {
        count-=1
        lbl_count.text=String(self.count)
    }
}
