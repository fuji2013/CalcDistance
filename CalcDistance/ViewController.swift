//
//  ViewController.swift
//  CalcDistance
//
//  Created by FUJISAWAHIROYUKI on 2015/05/03.
//  Copyright (c) 2015年 swift-studying. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet weak var distanceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 羽田空港のCLLocation
        let hanedaLocation = CLLocation(latitude: 35.549393, longitude: 139.779839)
        
        // 香港ビクトリアピークのCLLocation
        let peakLocation = CLLocation(latitude: 22.2760448, longitude: 114.1455266)
        
        // 羽田空港から香港ビクトリアピークまでの距離
        let distance = hanedaLocation.distanceFromLocation(peakLocation)
        
        // 1000mを超える場合はキロメートで表示
        let distanceText = distance / 1000.0 > 1.0 ?
            "\(floor(distance / 1000.0)) キロメートル"
            :
            "\(floor(distance)) メートル"
        
        distanceLabel.text = distanceText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

