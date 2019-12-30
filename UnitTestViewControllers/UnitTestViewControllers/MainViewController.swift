//
//  ViewController.swift
//  UnitTestViewControllers
//
//  Created by huda elhady on 12/31/19.
//  Copyright © 2019 huda.elhady. All rights reserved.
//

import UIKit

protocol PresenterProtocol {
    func onViewDidLoad()
    func onEdit()
}

struct MainViewControllerProps {
    var fullNmae: String
    var title: String
}

protocol MainViewControllerComponent {
    func render(props: MainViewControllerProps)
}

class MainViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var fullNameLabel: UILabel!
    var presenter: PresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func onLoadView()  {
        presenter.onViewDidLoad()
    }
    
    func Edit() {
        presenter.onEdit()
    }
}

extension MainViewController: MainViewControllerComponent {
    func render(props: MainViewControllerProps) {
        titleLabel.text = props.title
        fullNameLabel.text = props.fullNmae
    }
}

