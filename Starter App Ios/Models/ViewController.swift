//
//  ViewController.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Call the GetData function and handle the response
        GetData { responseData in
            if let data = responseData {
                // Handle the parsed data
                print(data)
                // For example, update the UI on the main thread
                DispatchQueue.main.async {
                    self.updateUI(with: data)
                }
            } else {
                print("Failed to fetch data")
            }
        }
    }
    
    func updateUI(with data: ResponseData) {
        // Update your UI with the fetched data
        // For example, update labels, tables, etc.
    }
}
