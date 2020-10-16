//
//  ViewController.swift
//  10.05_ReviewExercicio3
//
//  Created by Dominique Nascimento Bezerra on 05/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewCars: UICollectionView!
    var arrayCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewCars.delegate = self
        collectionViewCars.dataSource = self
        
        arrayCars.append(Car(name: "Macqueen", photo: "car1.jpeg"))
        arrayCars.append(Car(name: "Tommate", photo: "car2.jpg"))
        arrayCars.append(Car(name: "Holley Shiftwell", photo: "car3.jpg"))
        arrayCars.append(Car(name: "Finn Mcmissil", photo: "car4.jpg"))
        arrayCars.append(Car(name: "Miguel Camino", photo: "car5.jpg"))
        arrayCars.append(Car(name: "Francesco Bernoulli", photo: "car6.jpg"))
        arrayCars.append(Car(name: "Carla Veloso", photo: "car7.jpeg"))
        arrayCars.append(Car(name: "Rod Redline", photo: "car8.jpg"))
        arrayCars.append(Car(name: "Sally Carrera", photo: "car9.jpg"))
        arrayCars.append(Car(name: "Flo", photo: "car10.jpg"))
    }


}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let detailView = UIStoryboard(name: "DetailView", bundle: nil).instantiateInitialViewController() as? DetailViewViewController {
            detailView.setCar(car: arrayCars[indexPath.row])
            navigationController?.pushViewController(detailView, animated: true)
        }
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCell", for: indexPath) as! CarCell
        
        cell.setup(car: arrayCars[indexPath.row])
        return cell
    }
    
    
}
