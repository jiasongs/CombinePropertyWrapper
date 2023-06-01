//
//  ExampleView.swift
//  CombinePropertyWrapperExample
//
//  Created by jiasong on 2023/6/1.
//

import UIKit
import CombinePropertyWrapper

class ExampleView: UIView {

    @CurrentValueSubjected fileprivate(set) var text: String = "1"

}

extension ExampleView {
    
    func setText(_ text: String) {
        self.text = text
    }
    
}
