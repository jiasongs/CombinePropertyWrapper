//
//  ExampleViewController.swift
//  CombinePropertyWrapperExample
//
//  Created by jiasong on 2023/6/1.
//

import UIKit
import Combine
import CombinePropertyWrapper

class ExampleViewController: UIViewController {
    
    lazy var exampleView: ExampleView = {
        return ExampleView()
    }()
    
    fileprivate var cancellableBag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.exampleView.$text
            .sink { [weak self] text in
                guard let self = self else { return }
                print("\(self.exampleView.text)")
                print("\(text)")
            }
            .store(in: &self.cancellableBag)
        
        self.exampleView.setText("123")
    }

}

