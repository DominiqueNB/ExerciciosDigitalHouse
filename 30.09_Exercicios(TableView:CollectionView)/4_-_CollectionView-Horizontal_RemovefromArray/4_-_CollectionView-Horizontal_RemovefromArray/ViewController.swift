//
//  ViewController.swift
//  4_-_CollectionView-Horizontal_RemovefromArray
//
//- Tenha uma collectionview com 20 nomes na horizontal;
//- Cada célula deve ter um nome numa label, e o background da celula ser cinza fraco;
//- Ao tocar na celula, reve remover ela da collectionview, do array e recarregar.

//  Created by Dominique Nascimento Bezerra on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewNames: UICollectionView!
    var arrayNames = [Name]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayNames.append(Name(name: "Aurélio"))
        arrayNames.append(Name(name: "Barbara"))
        arrayNames.append(Name(name: "Claudio"))
        arrayNames.append(Name(name: "Dayana"))
        arrayNames.append(Name(name: "Esther"))
        arrayNames.append(Name(name: "Fabricio"))
        arrayNames.append(Name(name: "Gabriela"))
        arrayNames.append(Name(name: "Heitor"))
        arrayNames.append(Name(name: "Iana"))
        arrayNames.append(Name(name: "Jessica"))
        arrayNames.append(Name(name: "Kauã"))
        arrayNames.append(Name(name: "Laura"))
        arrayNames.append(Name(name: "Marcio"))
        arrayNames.append(Name(name: "Neidio"))
        arrayNames.append(Name(name: "Ofelia"))
        arrayNames.append(Name(name: "Paulo"))
        arrayNames.append(Name(name: "Raí"))
        arrayNames.append(Name(name: "Sebastiana"))
        arrayNames.append(Name(name: "Teddy"))
        arrayNames.append(Name(name: "Valeria"))
        
        collectionViewNames.delegate = self
        collectionViewNames.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arrayNames.remove(at: indexPath.row)
        collectionViewNames.reloadData()
        
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NameCell", for: indexPath) as! NameCell
        cell.setLabel(name: arrayNames[indexPath.row])
        return cell
    }
    
    
}
