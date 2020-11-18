//
//  Controller.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import Foundation
import Alamofire

class ShowController {
    
    var arrayShows = [Show?]()
//    var tvShow = Show()
    
    func saveShows(arrayShows: [Show]) {
        self.arrayShows = arrayShows
    }
    
    func loadData(onLoadData: @escaping () -> Void ) {
        AF.request("https://api.tvmaze.com/shows?page=1").responseJSON { response in
//            print(response)
            if let arrayDictionaries = response.value as? [[String: Any]] {
                var arrayShows = [Show]()
                for dictionary in arrayDictionaries {
                    let customShow = Show(fromDictionary: dictionary)
                    arrayShows.append(customShow)
                }
                self.saveShows(arrayShows: arrayShows)
                onLoadData()
            }
        }
    }
}
