//
//  HomeModels.swift
//  UIKitCleanSwiftV.I.P
//
//  Created by Juho JUNG on 13/07/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Home {
  // MARK: Use cases
  
  enum FetchCountry {
    struct Request {}
    struct Response {
        var countries: [Country]
    }
    struct ViewModel {
        struct displayCountryList: Comparable {
            var name: String
            var unicodeFlag: String
            
            static func < (lhs: Home.FetchCountry.ViewModel.displayCountryList, rhs: Home.FetchCountry.ViewModel.displayCountryList) -> Bool {
                return lhs.name < rhs.name
            }
        }
        var displayedCountryLists: [displayCountryList]
    }
  }
}