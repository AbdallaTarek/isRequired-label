# isRequired-label

isRequired-label is an extension to UILabel that creates required labels with a red star style.

## Screenshots

![Extension screenshot](https://github.com/AbdallaTarek/isRequired-label/blob/main/Screen%20shot/Screenshot-1.png)

## Usage/Examples

- All you need is add the extension file to your project.

```swift
//
//  isRequiredLabelExtension.swift
//
//  Created by Abdullah Tarek
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
```

- After adding the extension navigate to attributes inspector and you will find the style option activated.
![Usage](https://github.com/AbdallaTarek/isRequired-label/blob/main/Screen%20shot/Screenshot-2.png)

## Feedback

If you have any feedback, please reach out to us at abdalla.taarek@gmail.com or on linkedin [3bdullahtarek](https://www.linkedin.com/in/3bdullahtarek/)
