//
//  EpisodesController.swift
//  16.11_TvShows_MVController
//
//  Created by Dominique Nascimento Bezerra on 17/11/20.
//

import Foundation
import Alamofire

class EpisodesController {
    
    var arrayEpisodes = [Episode?]()
    
    func saveEpisodes(arrayEpisodes: [Episode]) {
        self.arrayEpisodes = arrayEpisodes
    }
    
    func loadData(season: Season?, onLoadData: @escaping () -> Void) {
        if let season = season, let id = season.id {
            AF.request("http://api.tvmaze.com/seasons/\(id)/episodes").responseJSON  { response in
                print(response)
                if let arrayDictionary = response.value as? [[String: Any]] {
                    var arrayEpisodes = [Episode]()
                    for dictionary in arrayDictionary {
                        let loadedData = Episode(fromDictionary: dictionary)
                        arrayEpisodes.append(loadedData)
                        
                    }
                    print(arrayEpisodes)
                    self.saveEpisodes(arrayEpisodes: arrayEpisodes)
                    onLoadData()
                }
            }
        }
    }
    
}
