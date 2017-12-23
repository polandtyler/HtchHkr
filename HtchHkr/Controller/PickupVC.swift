//
//  PickupVC.swift
//  HtchHkr
//
//  Created by Tyler Poland on 12/15/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import UIKit
import MapKit

class PickupVC: UIViewController {
    var regionRadius: CLLocationDistance = 2000
    var pin: MKPlacemark? = nil
    var pickupCoordinate: CLLocationCoordinate2D!
    var passengerKey: String!
    var locationPlacemark: MKPlacemark?

    @IBOutlet weak var pickupMapView: RoundMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        pickupMapView.delegate = self

        locationPlacemark = MKPlacemark(coordinate: pickupCoordinate)
        dropPinFor(placemark: locationPlacemark!)
        centerMapOnLocation(location: (locationPlacemark?.location)!)
    }

    func initData(coordinate: CLLocationCoordinate2D, passengerKey: String) {
        self.pickupCoordinate = coordinate
        self.passengerKey = passengerKey
    }

    @IBAction func cancelBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func acceptTripBtnWasPressed(_ sender: Any) {
    }
}

// MARK: MKMapViewDelegate
extension PickupVC: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "pickupPoint"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)

        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        } else {
            annotationView?.annotation = annotation
        }
        annotationView?.image = UIImage(named: "destinationAnnotation")

        return annotationView
    }

    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        pickupMapView.setRegion(coordinateRegion, animated: true)
    }

    func dropPinFor(placemark: MKPlacemark) {
        pin = placemark

        for annotation in pickupMapView.annotations {
            pickupMapView.removeAnnotation(annotation)
        }

        let annotation = MKPointAnnotation()
        annotation.coordinate = placemark.coordinate

        pickupMapView.addAnnotation(annotation)
    }
}
