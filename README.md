Two ways of exporting RealityCapture alignment for 3DGS Training in PostShot.

For more info, read my blog post: [https://azadux.blog/2024/07/21/realitycapturetopostshot/](https://azadux.blog/2024/07/21/realitycapturetopostshot/)

# RealityCapture to PostShot Bat script (starting from scratch)
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

What's the RCCMD file? It's an optional/secondary way to get RC to export the necessary files for 3DGS. It works by drag and drop the RCCMD file (it's set of RC CLI commands) onto RealityCapture if you have the project open and the images aligned. The script will export the files into a specific folder which I recommend making a folder for in your Documents and linking it in the RCCMD file. The Settings are included in this repo, so make sure you link to them as well. 
## Usage

Place the BAT file into the root of a project. Make sure the images are in a subfolder called "images". 

To run it, either double click on the BAT file, accept the permissions that windows asks, and see it run. OR, if it crashes and you want to see the error messages, run it via command line.




# RCCMMD (pre-existing RC projects)

If you already have a RealityCapture project with your images aligned, I recommend using this RealityCapture command file that you drag and drop onto RC, which executes a set of CLI commands. 

The script will export the files into a specific output folder that you can define. It cannot be a relative directory, so I recommend making a folder that you can easily access to copy the output files from. 

## Setup

Download the Settings folder and the 3dgs_export.rccmd from the repo.

Open the RCCMD file in Notepad, adjust the directories so that it's:

`-exportRegistration "[folder]\registeration.csv" "[folder]\Settings\3DGS_reg.xml" ^`
`-exportSparsePointCloud "[folder]\pointcloud.ply" "[folder]\Settings\3DGS_ply.xml"`

Make sure to put the Settings folder (and its contents) in the same directory too. 

## Usage
Once it's set up, you can just drag and drop the .rccmd file onto RealityCapture, which will output the Registration and PLY file into your specified folder.

You should copy those files, and put them into the input images' folder, then import that folder into PostShot.
Once it's set up, you can just drag and drop the .rccmd file onto RealityCapture, which will output the Registration and PLY file into your specified folder. 

You should copy those files, and put them into the input images' folder, then import that folder into PostShot.
