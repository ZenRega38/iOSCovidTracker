//
//  Api.swift
//  CovidTracker
//
//  Created by Rega Rizkan Azizan on 12/11/20.
//
import Alamofire
import Foundation

class ApiCovid: ObservableObject {
    @Published var covidApi = [Country]()
    
    func getDataCovid() {
        AF.request("https://api.covid19api.com/summary")
            .responseDecodable(of: Countries.self){(data) in
                guard let dataCovid = data.value else {return}
                self.covidApi = dataCovid.countries
                print(self.covidApi)
            }
    }
}
