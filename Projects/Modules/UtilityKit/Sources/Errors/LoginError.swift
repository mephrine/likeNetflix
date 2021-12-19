//
//  NetworkError.swift
//  UtilityKit
//
//  Created by Mephrine on 2021/09/28.
//  Copyright © 2021 deepfine. All rights reserved.
//

import Foundation

public enum LoginError: Error {
  case loginInfoMismatch
  case noCachingLoginID
}
