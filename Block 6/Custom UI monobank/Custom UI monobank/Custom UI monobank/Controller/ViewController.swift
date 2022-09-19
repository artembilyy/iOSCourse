//
//  ViewController.swift
//  Custom UI monobank
//
//  Created by Артем Билый on 01.09.2022.
//

import UIKit

class ViewController: UIViewController, CustomMenuBlockDelegate {
    func menuElementPressed(typeBlock: typeBlock) {
        print("Menublock: \(typeBlock.rawValue)")
    }
    
    @IBOutlet weak var customCurrencyRate: CustomCurrencyRate!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var menuTop: CustomMenuBlock!
    @IBOutlet weak var menuRightBot: CustomMenuBlock!
    @IBOutlet weak var menuLeftBot: CustomMenuBlock!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        menuTop.configure(with: "Installment plan", image: UIImage(named: "money")!, color: .systemGreen, typeBlock: .plan)
        menuRightBot.configure(with: "Payments", image: UIImage(named: "part")!, color: .systemYellow, typeBlock: .payments)
        menuLeftBot.configure(with: "Archive", image: UIImage(named: "archive")!, color: .systemBlue, typeBlock: .archive)
        menuTop.delegate = self
        menuLeftBot.delegate = self
        menuRightBot.delegate = self
    }
}
