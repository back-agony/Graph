//
//  StartViewController.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, StartControllerProtocol {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    var presenter: StartPresenterProtocol!
    
    // MARK: - View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addKeyboardNotification()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        removeKeyboardNotification()
    }
    
    // MARK: - Actions

    @IBAction func randomAction(_ sender: UIButton) {
        view.endEditing(true)
        presenter.goRandom(Int(textField.text!) ?? 0)
    }
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    // MARK: - Protocol
    
    func showError(_ error: String) {
        let alert = UIAlertController(title: "Ошибка", message: error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    func startLoad() {
        activity.startAnimating()
        view.isUserInteractionEnabled = false
    }
    
    func stopLoad() {
        activity.stopAnimating()
        view.isUserInteractionEnabled = true
    }

}
