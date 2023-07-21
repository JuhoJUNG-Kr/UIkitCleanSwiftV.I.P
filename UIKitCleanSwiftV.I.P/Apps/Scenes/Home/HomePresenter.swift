//
//  HomePresenter.swift
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

protocol HomePresentationLogic {
    func presentSomething(response: Home.FetchCountry.Response)
}

class HomePresenter: HomePresentationLogic {
  weak var viewController: HomeDisplayLogic?
  
  // MARK: Do something
  
    func presentSomething(response: Home.FetchCountry.Response) {
        var displayCountries: [Home.FetchCountry.ViewModel.displayCountryList] = []
        for country in response.countries {
            let displayedCountry = Home.FetchCountry.ViewModel.displayCountryList(name: country.name, unicodeFlag: country.unicodeFlag)
            displayCountries.append(displayedCountry)
            displayCountries.sort()
            
        }
        let viewModel = Home.FetchCountry.ViewModel(displayedCountryLists: displayCountries)
    viewController?.displaySomething(viewModel: viewModel)
  }
}