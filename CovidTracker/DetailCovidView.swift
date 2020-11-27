//
//  DetailCovidView.swift
//  CovidTracker
//
//  Created by Rega Rizkan Azizan on 12/11/20.
//
import SwiftWebImage
import SwiftUI

struct DetailCovidView: View {
    var modelCovid: Country
    var body: some View {
        VStack{
            HStack{
                Text(modelCovid.country)
                SwiftImage("https://www.countryflags.io/\(modelCovid.countryCode)/flat/64.png") { imageView in
                  imageView
                    .resizable()
                    .frame(width: 40, height: 35)
                    .aspectRatio(1, contentMode: .fit)
                }.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .frame(width: 40, height: 35)
            }
            
            
        }
    }
}


