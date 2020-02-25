//
//  ViewController.swift
//  Challenge22CodeLayout
//
//  Created by Herve Desrosiers on 2020-02-25.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var largePadding: CGFloat = 50
    private var smallPadding: CGFloat = 25

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        if greenView.superview == nil {
            view.addSubview(greenView)
            let width = view.bounds.width - 2 * largePadding
            let height = view.bounds.height - 2 * largePadding
            greenView.frame = CGRect(x: largePadding, y: largePadding, width: width, height: height)
        }
        
        if redView.superview == nil {
            greenView.addSubview(redView)
            let width = greenView.frame.width - 2 * smallPadding
            let redHeight: CGFloat = 100
            let centerY = greenView.bounds.height / 2 - redHeight / 2
            redView.frame = CGRect(x: smallPadding, y: centerY, width: width, height: 100)
        }
    }
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.autoresizingMask = [.flexibleWidth, .flexibleTopMargin, .flexibleBottomMargin]
        return view
    }()

    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
}
