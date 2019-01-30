//
//  NibLoadable.swift
//  DuoFit
//
//  Created by Naveen Magatala on 1/17/19.
//  Copyright © 2019 Naveen Magatala. All rights reserved.
//

import UIKit

protocol NibLoadable { }

extension NibLoadable where Self: UIView {
    
    var identifier: String {
        return String(describing: Self.self)
            .components(separatedBy: ".").first ?? ""
    }
    
    func loadView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: identifier, bundle: bundle)
        guard let view = nib.instantiate(withOwner: self,
                                         options: nil).first as? UIView
            else { return }
        addSubview(view)
        view.frame = self.bounds
    }
}
