//
//  DetailInteractor.swift
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

protocol DetailBusinessLogic
{
    func doSomething(request: Detail.GetDetail.Request)
}

protocol DetailDataStore
{
  var countryName: Country! { get set }
}

class DetailInteractor: DetailBusinessLogic, DetailDataStore
{
  var presenter: DetailPresentationLogic?
  var worker: DetailWorker?
  var countryName: Country!
  
  // MARK: Do something
  
  func doSomething(request: Detail.GetDetail.Request)
  {
    worker = DetailWorker()
    worker?.doSomeWork()
    
      let response = Detail.GetDetail.Response(country: request)
    presenter?.presentSomething(response: response)
  }
}
