//
//  InterfaceController.swift
//  WatchApp Extension
//
//  Created by Cem Olcay on 02/08/16.
//  Copyright © 2016 Prototapp. All rights reserved.
//

import WatchKit
import Foundation

enum State {
  case Animating
  case NotAnimating
}

class InterfaceController: WKInterfaceController {
  @IBOutlet weak var imageView: WKInterfaceImage?
  @IBOutlet weak var group: WKInterfaceGroup?
  @IBOutlet weak var button: WKInterfaceButton?

  var state: State = .Animating {
    didSet {
      stateDidChange()
    }
  }

  override func willActivate() {
    super.willActivate()
    stateDidChange()
  }

  func stateDidChange() {
    switch state {
    case .Animating:
      imageView?.startActivityIndicator()
      group?.startActivityIndicator()
      button?.setTitle("Stop")
    case .NotAnimating:
      imageView?.stopActivityIndicator()
      group?.stopActivityIndicator()
      button?.setTitle("Start")
    }
  }

  @IBAction func buttonPressed() {
    state = state == .Animating ? .NotAnimating : .Animating
  }
}
