//
//  LineEndpoint.swift
//  CuritiBus
//
//  Created by Diego Trevisan Lara on 23/04/17.
//  Copyright © 2017 Diego Trevisan Lara. All rights reserved.
//

import Moya

enum LineEndpoint {
    case getAllLines
}

extension LineEndpoint: TargetType {
    
    var path: String {
        switch self {
        case .getAllLines:
            return Endpoints.getLinhas.url
        }
    }
    
    var method: Method {
        switch self {
        case .getAllLines:
            return .get
        }
    }
    
    var parameters: [String : Any]? {
        switch self {
        case .getAllLines:
            return ["c": accessKey]
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
        case .getAllLines:
            return URLEncoding.queryString
        }
    }
    
}
