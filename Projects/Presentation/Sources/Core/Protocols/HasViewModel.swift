//
//  HasViewModel.swift
//  UtilityKit
//
//  Created by Mephrine on 2021/09/23.
//  Copyright © 2021 deepfine. All rights reserved.
//

import Foundation

protocol HasViewModel {
  associatedtype ViewModel

  var viewModel: ViewModel { get }
}
