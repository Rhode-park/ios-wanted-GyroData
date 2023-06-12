//
//  DataStyle.swift
//  GyroData
//
//  Created by Rhode on 2023/06/12.
//

enum DataStyle {
    case accelerometer
    case gyro
    
    var title: String {
        switch self {
        case .accelerometer:
            return "Accelerometer"
        case .gyro:
            return "Gyro"
        }
    }
}
