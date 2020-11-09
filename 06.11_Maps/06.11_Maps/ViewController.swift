//
//  ViewController.swift
//  06.11_Maps
//
//  Created by Dominique Nascimento Bezerra on 06/11/20.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet var collectionList: UICollectionView?
    @IBOutlet var mapView: MKMapView!
    
    var arrayLocations = [CustomLocation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionList?.delegate = self
        collectionList?.dataSource = self
        mapView.delegate = self
        
        let location = CLLocation(latitude: -23.544541, longitude: -46.627188)
        arrayLocations.append(CustomLocation(coordinate: location.coordinate,
                                             title: "Museu do Catavento",
                                             subtitle: "Consolação",
                                             category: "Restaurante"))
        let location2 = CLLocation(latitude: -23.544541, longitude: -46.627188)
        arrayLocations.append(CustomLocation(coordinate: location.coordinate,
                                             title: "Museu do Catavento",
                                             subtitle: "Consolação",
                                             category: "Hotel"))
        let location3 = CLLocation(latitude: -23.544541, longitude: -46.627188)
        arrayLocations.append(CustomLocation(coordinate: location.coordinate,
                                             title: "Museu do Catavento",
                                             subtitle: "Consolação",
                                             category: "Supermercado"))
        
        let location4 = CLLocation(latitude: -23.544541, longitude: -46.627188)
        arrayLocations.append(CustomLocation(coordinate: location.coordinate,
                                             title: "Museu do Catavento",
                                             subtitle: "Consolação",
                                             category: "Museu"))
        
    }


}
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 128, height: 191)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayLocations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionCell
        cell.setupLabel(location: arrayLocations[indexPath.row])
        return cell
    }
    
    
}

extension ViewController: MKMapViewDelegate {
    
}
