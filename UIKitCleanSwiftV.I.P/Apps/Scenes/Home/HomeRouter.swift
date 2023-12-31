//
//  HomeRouter.swift
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

@objc protocol HomeRoutingLogic {
  func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol HomeDataPassing {
  var dataStore: HomeDataStore? { get }
}

class HomeRouter: NSObject, HomeRoutingLogic, HomeDataPassing {
    
  weak var viewController: HomeViewController?
  var dataStore: HomeDataStore?
  
  // MARK: Routing
  
  func routeToSomewhere(segue: UIStoryboardSegue?){
    if let segue = segue {
        let destinationVC = segue.destination as! DetailViewController
      var destinationDS = destinationVC.router!.dataStore!
        passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    } else {
      
        let destinationVC = viewController?.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
      var destinationDS = destinationVC.router!.dataStore!
        passDataToSomewhere(source: dataStore!, destination: &destinationDS)
        navigateToDetailVC(source: viewController!, destination: destinationVC)
    }
  }

  // MARK: Navigation
  
  func navigateToDetailVC(source: HomeViewController, destination: DetailViewController) {
      source.show(source, sender: nil)
  }
  
  // MARK: Passing data
  
  func passDataToSomewhere(source: HomeDataStore, destination: inout DetailDataStore) {
      let test = viewController?.HomeTableView.indexPathForSelectedRow?.row
      destination.countryName = source.countries?[test!]
  }
}
