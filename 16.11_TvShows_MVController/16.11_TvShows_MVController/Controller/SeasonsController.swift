//
//  EpisodeController.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 16/11/20.
//

import Foundation
import Alamofire

class SeasonsController {
    
    var arraySeasons = [Season?]()
    
    func saveSeasons(arraySeasons: [Season]) {
        self.arraySeasons = arraySeasons
    }
    
    func loadData(show: Show?, onLoadData: @escaping () -> Void) {
        if let tvShow = show {
            AF.request("http://api.tvmaze.com/shows/\(tvShow.id!)/seasons").responseJSON  { response in
//                print(response)
                
                if let arrayDictionary = response.value as? [[String: Any]] {
                    var arraySeasons = [Season]()
                    for dictionary in arrayDictionary {
                        let loadedData = Season(fromDictionary: dictionary)
                        arraySeasons.append(loadedData)
                        
                    }
                    print(arraySeasons)
                    self.saveSeasons(arraySeasons: arraySeasons)
                    onLoadData()
                }
            }
        }
    }
}
