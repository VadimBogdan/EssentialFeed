//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Vadym Bohdan on 09.05.2023.
//

import SwiftUI

class Score: ObservableObject {
    @Published var points = 0
}

struct ScoreView: View {
    @State private var score = Score()
    let teamName: String
    var body: some View {
        Button("\(teamName): \(score.points)") { score.points += 1 }
    }
}

struct BasketballGameView: View {
    @State private var quarter = 1
    var body: some View {
        VStack {
            if quarter <= 4 {
                Button(quarter < 4 ? "Next Quarter" : "End Game") { quarter += 1 }
                HStack {
                    ScoreView(teamName: "Team A")
                    ScoreView(teamName: "Team B")
                }
                Text("Quarter: \(quarter)")
            } else {
                Text("Game Ended")
            }
        }
    }
}

import UIKit

public final class ErrorView: UIView {
    @IBOutlet private var label: UILabel!
    
    public var message: String? {
        get { return isVisible ? label.text : nil }
        set { setMessageAnimated(newValue) }
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = nil
        alpha = 0
    }
    
    private var isVisible: Bool {
        return alpha > 0
    }
    
    private func setMessageAnimated(_ message: String?) {
        if let message = message {
            showAnimated(message)
        } else {
            hideMessageAnimated()
        }
    }
    
    private func showAnimated(_ message: String) {
        label.text = message
        
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
    
    @IBAction private func hideMessageAnimated() {
        UIView.animate(
            withDuration: 0.25,
            animations: { self.alpha = 0 },
            completion: { completed in
                if completed { self.label.text = nil }
            })
    }
}
