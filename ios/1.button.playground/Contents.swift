import UIKit

let rect = CGRect(x: 0, y: 0, width: 200, height: 50)

let button = UILabel(frame: rect)

button.text = "点击我"
button.textColor = UIColor.white
button.backgroundColor = UIColor.orange
button.textAlignment = .center
button.layer.cornerRadius = 15
button.clipsToBounds = true

