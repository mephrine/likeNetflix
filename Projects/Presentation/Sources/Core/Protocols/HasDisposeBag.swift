//
//  HasDisposeBag.swift
//  UtilityKit
//
//  Created by Mephrine on 2021/09/23.
//  Copyright © 2021 deepfine. All rights reserved.
//

import RxSwift

protocol HasDisposeBag {
  var disposeBag: DisposeBag { get set }
}
