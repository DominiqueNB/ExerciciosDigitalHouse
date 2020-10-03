//
//  ViewController.swift
//  3_-_CollectionView-Carros
//
//- Tenha uma collectionview com 10 carros na vertical;
//- Cada célula deve ter o nome e a imagem do carro; (pode repetir a mesma imagem)
//- Quando tocar numa celula, deve abrir uma tela via navigation (push), nessa tela deve haver a imagem grande.

//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var CollectionViewCars: UICollectionView!
    var arrayCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionViewCars.delegate = self
        CollectionViewCars.dataSource = self
        
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
        print("selected row: \(indexPath.row)")
        if let detailView = UIStoryboard(name: "DetailView", bundle: nil).instantiateInitialViewController() as? DetailViewViewController {
            detailView.setCar(car: arrayCars[indexPath.row])
            navigationController?.pushViewController(detailView, animated: true)
//            detailView.setCar(car: arrayCars[indexPath.row])
        }
        
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCell", for: indexPath) as! CollectionViewCell
        cell.setupCell(car: arrayCars[indexPath.row])
        return cell
    }
    
    
}
