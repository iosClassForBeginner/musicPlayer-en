# Code Together: Let's make iPhone app in an hour

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/sample.png" /></div>

  Thank you for visiting our account. We are going to make a simple photo frame app in an hour. If would you like to study yourself before hands-on, or review what you have learned in the session, please use the following material.

## Meetup
  We are providing free hands-on on a monthly basis<br>
  https://www.meetup.com/iOS-Development-Meetup-for-Beginner/

## Do you need a tutor?
  We also hold face-to-face or group lesson for individual interested in making iOS app themselves<br>
  http://ios-class-for-beginner.esy.es/

## Development Environment
  XCode 8.1 / Swift 3

## Full procedure

#### 0, Create your project

> 0-1. Open XCode  

> 0-2. Select "Create a new XCode project"

> 0-3. Select "Single View Application" and then tap "Next"

> 0-4. Fill "Product name" and then tap "Next"

> 0-5. Select the place for saving your project and then tap "Create"

#### 1, Collect photos → Drag & Drop your resources into your project
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/0.png" /></div>
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/1.gif" /></div>

#### 2, Design app
> 2-1. Drap & Drop "UIImageView" from UI components
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/2.gif" /></div>

> 2-2. Resize the imageView
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/3.gif" /></div>

> 2-3. Set "Autoresizing" for adjusting frame depending on devices
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/4.gif" /></div>

> 2-5. Specify the image name and content mode
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/5.gif" /></div>

> 2-5. Add UIButton in the same process from 2-1 to 2-3
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/6.gif" /></div>
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/7.gif" /></div>  
  
> 2-6. Connect UI components on Storyboard to ViewController.swift
  ★  control + drag in storyboard to create a control segue<br>
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/musicPlayer-en/blob/master/Resources/8.gif" /></div>

#### 3, Add code blocks in ViewController.swift
  ★  It's preferable to write following code yourself. It will help you to understand code more.

```Swift  
import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Get file path
        let filePath = Bundle.main.path(forResource: "music", ofType: "mp3")
        let audioPath = URL(fileURLWithPath: filePath!)
        
        do {
            // Initialize audio player
            audioPlayer = try AVAudioPlayer(contentsOf: audioPath)
            audioPlayer.prepareToPlay()
        } catch {
            print("Error")
        }
    }

    @IBAction func tappedPlay(_ sender: Any)
    {
        // Play
        audioPlayer.play()
    }
    
    @IBAction func tappedStop(_ sender: Any)
    {
        // Stop
        audioPlayer.stop()
    }
}
```
