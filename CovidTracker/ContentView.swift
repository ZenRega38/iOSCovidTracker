//
//  ContentView.swift
//  CovidTracker
//
//  Created by Rega Rizkan Azizan on 12/11/20.
//
import SwiftWebImage
import SwiftUI

struct ContentView: View {
    @ObservedObject var api = ApiCovid()
    var body: some View {
       
        VStack{
            HStack{
                Spacer()
                Text("Confirmed").foregroundColor(.blue)
                Spacer()
                Text("Recovered").foregroundColor(.green)
                Spacer()
                Text("Deaths").foregroundColor(.red)
                Spacer()
            }.padding(.vertical)
            
        NavigationView{
        List(api.covidApi){ dataCov in
            NavigationLink(destination: DetailCovidView(modelCovid: dataCov)){
            VStack(alignment: .leading){
                HStack{
                    SwiftImage("https://www.countryflags.io/\(dataCov.countryCode)/flat/64.png") { imageView in
                      imageView
                        .resizable()
                        .frame(width: 40, height: 35)
                        .aspectRatio(1, contentMode: .fit)
                    }.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: 40, height: 35)
                Text(dataCov.country)
                
                }
            HStack{
                Text(String(dataCov.totalConfirmed)).foregroundColor(.blue)
                Spacer()
                Text(String(dataCov.totalRecovered)).foregroundColor(.green)
                Spacer()
                Text(String(dataCov.totalDeaths)).foregroundColor(.red)
            }
            .padding(.top, 5)
            }
            .padding(10)
            }
        }
        }
            .onAppear{
        self.api.getDataCovid()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
