//
//  isRequiredLableExtension.swift
//
//  Created by Abdullah Tarek
//  https://www.linkedin.com/in/3bdullahtarek/
//

import UIKit
extension UILabel {
    @IBInspectable var isRequired: Bool {
        get {
            let isrequired = self.isRequired
            return isrequired
        }

        set {
            if newValue == true {
                // The style for the first part is the text currently added to the label, and its attributes are the storyboard attributes.
                let firstAttributes: [NSAttributedString.Key: Any] = [
                    .foregroundColor: textColor!,
                    .font: font!,
                ]

                // The style for the second part is the star mark , set your custom attributes.
                let secondAttributes: [NSAttributedString.Key: Any] = [
                    .foregroundColor: UIColor.red,
                    .font: font!,
                ]

                let firstString = NSMutableAttributedString(string: text ?? "", attributes: firstAttributes)
                let secondString = NSAttributedString(string: "  *", attributes: secondAttributes)

                firstString.append(secondString)

                attributedText = firstString
            }
        }
    }
}
