//
//  HPControlXibDesignable.swift
//  Pods
//
//  Created by Huy Pham on 12/25/15.
//
//

import UIKit

@IBDesignable
open class HPControlXibDesignable: UIControl {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupNib()
    }
    
    fileprivate func setupNib() {
        let view = self.loadNib()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(view)
        
        let bindings = ["view": view]
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views: bindings))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views: bindings))
    }
    
    fileprivate func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName(), bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    
    open func nibName() -> String {
        return type(of: self).description().components(separatedBy: ".").last!
    }
}
