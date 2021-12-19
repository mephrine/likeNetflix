//
//  InjectRepository.swift
//  RepositoryInjectManager
//
//  Created by Mephrine on 2021/09/23.
//  Copyright © 2021 deepfine. All rights reserved.
//

import Swinject
import InjectPropertyWrapper
import ThirdPartyLibraryManager
import Data

public struct InjectDataSource {
  public init() {}

  public func register() {
    let container = InjectContainer.container

    container.register(LoginRemoteDataSource.self) { _ in
      LoginRemoteDataSourceImpl()
    }

    container.register(LoginLocalDataSource.self) { _ in
      LoginLocalDataSourceImpl()
    }
  }
}
