📱 iOS Login Page (Swift + Storyboard)

This project implements a login screen for an iOS application based on the Figma design
.
It focuses on building a responsive and adaptive UI using AutoLayout, ensuring a consistent look across different iPhone screen sizes.

At this stage, the app is UI-only:
User input from UITextField is printed in the Xcode console.
No navigation or authentication logic is implemented yet.

✨ Features

🎨 Pixel-perfect layout following the provided Figma design.
🖼️ UIImageView for logos/icons.
🔤 UITextField for email and password input.
🏷️ UILabel for instructions and headings.
🔘 UIButton for login action.
📐 AutoLayout constraints to make UI responsive on all iPhone devices.
🖥️ Print entered text from UITextField to the Xcode console.

🛠️ Technologies & Tools

Swift (UIKit)
Storyboard (Interface Builder)
UIKit Components
UIImageView
UITextField
UILabel
UIButton
AutoLayout for responsive design
Xcode (development & simulator testing)

📂 Project Structure
LoginPage/
│── LoginPage.xcodeproj       # Xcode project
│── LoginPage/
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
│   ├── ViewController.swift  # Main login screen logic
│   ├── Main.storyboard       # UI layout with AutoLayout constraints
│   ├── Assets.xcassets       # App icons, images, colors
│   └── Info.plist
└── README.md                 # Project documentation

🚀 Getting Started
1. Clone the repository
git clone https://github.com/Bektur13/Neobis_Login_App.git
cd LoginPage

2. Open in Xcode

Open LoginPage.xcodeproj in Xcode.

3. Run on Simulator

Select an iPhone device (e.g., iPhone 15 Pro).

Press Run (▶) or Cmd + R.

4. Try it out

Enter text into the Email or Password field.

Click the Login button.

Check Xcode Console – the input will be printed there.

📌 Next Steps

Future improvements:
🔒 Add validation for email & password.
🔑 Implement authentication flow.
🌐 Connect with API for real login.
🖌️ Improve UI with animations.

👨‍💻 Author

Bektur Duishembekov
📧 Email: duyshenbekov2004@gmail.com
🌐 GitHub: Bektur13
