//
//  LabelView.swift
//  UIKitIssue
//
//  Created by Wai-Wai Ng on 08/06/2023.
//

import Foundation
import UIKit

@IBDesignable
class LabelView: UIView {
    
    var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }

    private func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView

        view.frame = bounds

        addSubview(view)

        self.view = view
    }
    
}
