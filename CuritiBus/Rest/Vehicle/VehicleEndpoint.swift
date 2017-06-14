//
//  VehicleEndpoint.swift
//  CuritiBus
//
//  Created by Diego Trevisan Lara on 13/06/17.
//  Copyright © 2017 Diego Trevisan Lara. All rights reserved.
//

import Moya

enum VehicleEndpoint {
    case getVehicles(lineCod: String)
}

extension VehicleEndpoint: TargetType {
    
    var path: String {
        switch self {
        case .getVehicles(_):
            return Endpoints.getVeiculosLinha.url
        }
    }
    
    var method: Method {
        switch self {
        case .getVehicles(_):
            return .get
        }
    }
    
    var parameters: [String : Any]? {
        switch self {
        case .getVehicles(let lineCod):
            return ["linha": lineCod, "c": accessKey]
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
        case .getVehicles(_):
            return URLEncoding.queryString
        }
    }
    
}
