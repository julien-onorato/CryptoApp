//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Julien Onorato on 01/09/2022.
//

import Foundation

// JSON Data
/*
 URL:
 https://api.coingecko.com/api/v3/global
 
 JSON Response :
 {
   "data": {
     "active_cryptocurrencies": 12928,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 564,
     "total_market_cap": {
       "btc": 50994748.44596495,
       "eth": 649952344.0799236,
       "ltc": 18166164908.4527,
       "bch": 8813955254.516016,
       "bnb": 3682324913.458683,
       "eos": 697230442698.6167,
       "xrp": 3124420324296.3833,
       "xlm": 9810737040466.162,
       "link": 152796134573.94498,
       "dot": 145007719932.70853,
       "yfi": 112479477.97212157,
       "usd": 1021383829118.9819,
       "aed": 3751568338949.7485,
       "ars": 141625081745638.1,
       "aud": 1495799254219.6523,
       "bdt": 97095260421653.95,
       "bhd": 385121965223.7744,
       "bmd": 1021383829118.9819,
       "brl": 5311604464950.362,
       "cad": 1344460812259.0964,
       "chf": 1001062376454.8331,
       "clp": 918224062377963.5,
       "cny": 7045403514879.824,
       "czk": 24994284703754.438,
       "dkk": 7593727295239.357,
       "eur": 1021011024021.3551,
       "gbp": 883003683798.453,
       "hkd": 8015738580219.442,
       "huf": 409521797389294.75,
       "idr": 15189123973914716,
       "ils": 3435160992213.7856,
       "inr": 81284383783396,
       "jpy": 142370628104405.72,
       "krw": 1382087184035539.5,
       "kwd": 314902848355.67316,
       "lkr": 372965232227925.4,
       "mmk": 2145751469143973.2,
       "mxn": 20600356839449.63,
       "myr": 4576820938282.158,
       "ngn": 429649265772468.2,
       "nok": 10226563712316.84,
       "nzd": 1673426073174.0764,
       "php": 57783764663042.1,
       "pkr": 222063641237999.06,
       "pln": 4814468356570.93,
       "rub": 61706399472611.88,
       "sar": 3838449290222.269,
       "sek": 10980764766960.38,
       "sgd": 1429169280127.0771,
       "thb": 37459762624853.25,
       "try": 18593337615230.832,
       "twd": 31235451612969.812,
       "uah": 37734050145244.01,
       "vef": 102271162809.68347,
       "vnd": 23964218090704096,
       "zar": 17507630096705.424,
       "xdr": 756131470080.6105,
       "xag": 57461818351.80056,
       "xau": 599572735.369426,
       "bits": 50994748445964.945,
       "sats": 5099474844596495
     },
     "total_volume": {
       "btc": 3165118.0088699264,
       "eth": 40340935.720751986,
       "ltc": 1127528960.4530678,
       "bch": 547060420.0548768,
       "bnb": 228552806.97086552,
       "eos": 43275370460.080414,
       "xrp": 193925047913.28558,
       "xlm": 608928202086.7338,
       "link": 9483678456.383741,
       "dot": 9000270807.6992,
       "yfi": 6981323.218705282,
       "usd": 63394770050.46026,
       "aed": 232850575264.59177,
       "ars": 8790318815196.823,
       "aud": 92840563027.80807,
       "bdt": 6026462855525.85,
       "bhd": 23903568600.456505,
       "bmd": 63394770050.46026,
       "brl": 329678162170.41406,
       "cad": 83447359949.43161,
       "chf": 62133467705.53645,
       "clp": 56991898275363.695,
       "cny": 437290784331.06976,
       "czk": 1551333481299.583,
       "dkk": 471323886264.0379,
       "eur": 63371630959.39194,
       "gbp": 54805856419.71363,
       "hkd": 497517083774.40814,
       "huf": 25418005881823.33,
       "idr": 942751387032275.1,
       "ils": 213211953214.05023,
       "inr": 5045120817202.082,
       "jpy": 8836593035160.535,
       "krw": 85782735856702.69,
       "kwd": 19545241554.25739,
       "lkr": 23149030227256.047,
       "mmk": 133181490732191,
       "mxn": 1278613237807.7854,
       "myr": 284071964596.1124,
       "ngn": 26667268101834.984,
       "nok": 634737535944.663,
       "nzd": 103865420697.74353,
       "php": 3586495467255.667,
       "pkr": 13782941409003.775,
       "pln": 298822152533.2931,
       "rub": 3829963715582.162,
       "sar": 238243061194.62415,
       "sek": 681548931492.3911,
       "sgd": 88705005203.5664,
       "thb": 2325034888985.6567,
       "try": 1154042514658.6313,
       "twd": 1938707287087.691,
       "uah": 2342059237508.8574,
       "vef": 6347718325.152574,
       "vnd": 1487399792308922.5,
       "zar": 1086655332174.7031,
       "xdr": 46931211663.12572,
       "xag": 3566513055.367125,
       "xau": 37213997.915021256,
       "bits": 3165118008869.9263,
       "sats": 316511800886992.6
     },
     "market_cap_percentage": {
       "btc": 37.53026055852505,
       "eth": 18.514861036921754,
       "usdt": 6.6220281889796615,
       "usdc": 5.128350558454068,
       "bnb": 4.4340729878837655,
       "busd": 1.8956768492133416,
       "xrp": 1.5889825033074363,
       "ada": 1.4812113297298302,
       "sol": 1.0726319059476943,
       "doge": 0.798012928650601
     },
     "market_cap_change_percentage_24h_usd": -1.348771609207866,
     "updated_at": 1662035545
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return item.value.formattedWithAbbreviations() + " €"
        }
        return ""
    }
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return item.value.formattedWithAbbreviations() + " €"
        }
        return ""
    }
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
