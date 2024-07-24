::Aligns photos in RC and trains in PostShot

:: path to RealityCapture and PostShot directories
set RealityCaptureExe="C:\Program Files\Capturing Reality\RealityCapture\RealityCapture.exe"
set PostShotEXE="C:\Program Files\Jawset Postshot\bin\postshot-cli.exe"

:: root path of project (%~dp0 means the flder in which this script is stored)
set RootFolder=%~dp0

:: set path to the folder with your images
set Images="%RootFolder%images"

:: set the path to RealityCapture settings
set SettingsFolder="X:\FILES\RC\RC_CLI\Settings"

:: set the path, where project is going to be saved, and its name
set Project="%RootFolder%\RC.rcproj"

:: run RealityCapture
%RealityCaptureExe% -newScene ^
	-set "appIncSubdirs=true" ^
        -addFolder %Images% ^
        -save %Project% ^
        -align ^
        -selectMaximalComponent ^
        -exportRegistration %Images%\registeration.csv "%SettingsFolder%\3DGS_reg.xml" ^
	-exportSparsePointCloud %Images%\pointcloud.ply "%SettingsFolder%\3DGS_ply.xml" ^
	-save ^
	-quit 