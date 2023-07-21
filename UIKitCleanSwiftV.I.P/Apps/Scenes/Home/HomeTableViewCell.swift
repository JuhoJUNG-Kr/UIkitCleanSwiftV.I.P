//
//  HomeTableViewCell.swift
//  UIKitCleanSwiftV.I.P
//
//  Created by Juho JUNG on 13/07/2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
  static let identifier = "HomeTableViewCell"

  @IBOutlet var countryLabel: UILabel!
  @IBOutlet var Flag: UILabel!
    
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }
}
