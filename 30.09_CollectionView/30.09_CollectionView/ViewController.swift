//
//  ViewController.swift
//  30.09_CollectionView
//
//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewCars: UICollectionView!
    var arrayCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewCars.delegate = self
        collectionViewCars.dataSource = self
        
        arrayCars.append(Car(photo: "car1.jpg"))
        arrayCars.append(Car(photo: "car2.jpg"))
        arrayCars.append(Car(photo: "car3.jpg"))
        arrayCars.append(Car(photo: "car4.jpg"))
        
    }


}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionCell", for: indexPath) as! CarCollectionCollectionViewCell
        cell.setup(car: arrayCars[indexPath.row])
        return cell
    }
    
    
}
