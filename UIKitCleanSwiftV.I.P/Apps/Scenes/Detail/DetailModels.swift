//
//  DetailModels.swift
//  UIKitCleanSwiftV.I.P
//
//  Created by Juho JUNG on 20/07/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Detail {
  // MARK: Use cases
    
  enum GetDetail {
    struct Request {}

    struct Response {
      var country: Country
    }

    struct ViewModel {
      struct DisplayedCountry {
        var name: String
      }

      var displayedCountry: DisplayedCountry
    }
  }
}
