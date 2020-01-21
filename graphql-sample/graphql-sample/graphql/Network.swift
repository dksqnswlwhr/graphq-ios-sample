//
//  Network.swift
//  kogome
//
//  Created by Gregory Seunghyun Jin on 2020/01/12.
//  Copyright © 2020 Gregory Seunghyun Jin. All rights reserved.
//

import UIKit
import Apollo


class Network {
    static let shared = Network()
    var apollo:ApolloClient?
    private var networkTransport:HTTPNetworkTransport?
    
    func initialize() {
        //        let authPayloads = [  ]
        let authPayloads:[AnyHashable:Any] = [ "x-hasura-admin-secret": "skwlatmd1","x-hasura-role": "anonymous" ]
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = authPayloads
        self.networkTransport = HTTPNetworkTransport(url: URL(string: "http://everybodylies.iptime.org:33333/v1/graphql")!,
                                                     session: URLSession(configuration: configuration))
        self.apollo = ApolloClient(networkTransport: self.networkTransport!)
    }
}
