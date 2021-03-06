//
//  ScoreViewController.swift
//  SampleQuiz
//
//  Created by 田久保竜馬 on 2021/11/22.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var shareButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    
    var correct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(correct)問正解！"
        shareButton.layer.borderWidth = 2
        returnButton.layer.borderWidth = 2
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let activityItems = ["\(correct)問正解しました。","#クイズアプリ"]
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        self.present(activityVC, animated: true)
    }
    
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?
            .presentingViewController?
            .dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
