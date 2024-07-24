# RealityCapture-to-PostShot
This batch script is a super easy way to automate going from an unaligned set of images -> trained 3DGS with a single click by using RealityCapture and PostShot.

## Setup

Clone/Download repo: https://github.com/azadbal/RealityCapture-to-PostShot.git

The script requires that you have the project set up as the following:
- Project root folder
  - "images"

Open the `RC_3DGS_train.BAT` and change the directories, specifically the `RealityCaptureExe`, `PostShotEXE`, and `SettingsFolder` to local ones. Do the same for `RC_3DGS.BAT`

Difference between the two BAT files
- `RC_3DGS_train.BAT`: aligns in RC and trains in PostShot
- `RC_3DGS.BAT`: alings in RC

I recommend using the non "train" bat file if you'd like to see the PostShot training happening live. Calling PostShot training via CLI does it quietly which is better if you're processing multiple datasets. 
## Usage

Place the BAT file into the root of a project. Make sure the images are in a subfolder called "images". 

To run it, either double click on the BAT file, accept the permissions that windows asks, and see it run. OR, if it crashes and you want to see the error messages, run it via command line.
