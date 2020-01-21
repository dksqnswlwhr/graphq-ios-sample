//
//  ViewModel.swift
//  graphQlTest
//
//  Created by Gregory Seunghyun Jin on 2020/01/20.
//  Copyright © 2020 Gregory Seunghyun Jin. All rights reserved.
//

import UIKit
import Apollo

protocol ViewModelProtocol {
    func fetchQuery(completion: @escaping (Bool) -> Void)
}

class ViewModel : ViewModelProtocol{

    var stores:[TestQuery.Data.Store] = []

    init() {
        
    }

    fileprivate func fetchQueryFromApollo(queryComplete:@escaping (Error?) -> Void) {
        
        Network.shared.apollo?.fetch(query: TestQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                self.stores = graphQLResult.data?.store ?? []
                queryComplete(nil)
            case .failure(let error):
                print("Failure! Error: \(error)")
                queryComplete(error)
            }
        }
    }
    
    func fetchQuery(completion: @escaping (Bool) -> Void) {
        self.fetchQueryFromApollo { (error:Error?) in
            
            if let err = error {
                print("Error : \(err.localizedDescription)")
                completion(false)
            }
            else {
                completion(true)
            }
        }
    }
}
