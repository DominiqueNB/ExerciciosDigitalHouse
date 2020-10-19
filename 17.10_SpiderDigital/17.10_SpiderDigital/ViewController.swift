//
//  ViewController.swift
//  17.10_SpiderDigital
//
//  Created by Dominique Nascimento Bezerra on 17/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchBarView: UISearchBar!
    @IBOutlet var tableViewMovies: UITableView!
    
    var arrayMovies = [Movie]()
    var arrayCurrentMovies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = searchBarView
        searchBarView.delegate = self
        tableViewMovies.delegate = self
        tableViewMovies.dataSource = self
        
        
        arrayMovies.append(Movie(name: "Spider Man", year: "2001", rating: "4", genre: "Action", image: "spiderman"))
        arrayMovies.append(Movie(name: "Spider Man", year: "2001", rating: "4", genre: "Action", image: "spiderman"))
        arrayMovies.append(Movie(name: "Spider Man", year: "2001", rating: "4", genre: "Action", image: "spiderman"))
        arrayMovies.append(Movie(name: "Spider Man", year: "2001", rating: "4", genre: "Action", image: "spiderman"))
        arrayMovies.append(Movie(name: "Spider Man", year: "2001", rating: "4", genre: "Action", image: "spiderman"))
        
        arrayCurrentMovies = arrayMovies
    }


}

extension ViewController: UISearchBarDelegate {
    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCurrentMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        cell.setupCell(movie: arrayMovies[indexPath.row])
        return cell
    }
    
    
}
