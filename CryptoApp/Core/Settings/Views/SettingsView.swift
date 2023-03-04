//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Julien Onorato on 14/09/2022.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://www.google.com")!
    
    var body: some View {
        NavigationView {
            List {
                nickSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(.blue)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    private var nickSection: some View {
        Section(header: Text("Swiftful Thinking")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The core of this app was made by following a @SwiftulThinking course using MVVM architecture with Core Data and Combine.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on Youtube", destination: youtubeURL)
            Link("Support Nick", destination: coffeeURL)
        }
    }
    private var coinGeckoSection: some View {
        Section(header: Text("Coin Gecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data used in this app is provided by CoinGecko, a free API.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko", destination: coingeckoURL)
        }
    }
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was enhanced by Julien Onorato using Swift(UI)")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Get in touch", destination: personalURL)
        }
    }
    private var applicationSection: some View {
        Section(header: Text("Developer")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
}
