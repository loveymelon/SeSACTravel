//
//  Protocol.swift
//  SeSACTravel
//
//  Created by 김진수 on 1/15/24.
//

import Foundation

protocol ReusableProtocol {
    static var identifier: String { get }
} // 오타 방지를 위한 규격화
// identifier는 데이터를 쓰기만 할거기 때문에 읽기전용으로 선언
