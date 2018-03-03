//
//  ViewControllerMap.swift
//  sample
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 [redcode]. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerMap: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initialLocation = CLLocation(latitude: -16.669960, longitude: -49.219608)
        
        centerMapOnLocation(location: initialLocation)
    }
    
    private func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

