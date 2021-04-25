@echo.
@echo ============================================
@echo =   This is the installation program of OpenBr made by Zzx.
@echo.
@echo =   Please follow the instruction and wait patiently.
@echo =   Remember to quit your antivirus program !!!
@echo.
@echo ============================================
@echo.


cd ".\openbr-master"
mkdir build-msvc2019
cd build-msvc2019
cmake -G "CodeBlocks - NMake Makefiles" -DCMAKE_PREFIX_PATH="./opencv/build-msvc2019/install; ./msvc2019" -DCMAKE_INSTALL_PREFIX="./install" -DBR_INSTALL_DEPENDENCIES=ON -DCMAKE_BUILD_TYPE=Release ..
nmake


@echo.
@echo ****************************************************************************************************
@echo.
@echo *** Please open "openbr-master/build-msvc2019/openbr/cmake_install.cmake" and replace all the code
@echo ***            "/openbr-master/openbr/NOTFOUND/../bin/"
@echo ***   with
@echo ***            "/opencv/build-msvc2019/install/x86/vc16/bin/"
@echo.
@echo ****************************************************************************************************
@echo.
@echo 		Press if you finished
@echo.

pause
nmake install

@echo.
@echo ======================================================
@echo ======================================================
@echo =		The build of OpenBR is now finished.
@echo.
@echo =   	You can now hack OpenBR.
@echo =   	To begin with, open your qtcreator.exe
@echo.
@echo =   	From the Qt Creator "Tools" menu select "Options..."
@echo =   	Under "Kits" select "Desktop (default)"
@echo =   	For "Compiler:" select "Microsoft Visual C++ Compiler 11.0 (x86_amd64)" and click "OK"
@echo =   	From the Qt Creator "File" menu select "Open File or Project...".
@echo =   	Select "\OpenBr_install\openbr-master\CMakeLists.txt" then "Open".
@echo =   	Browse to your pre-existing build directory "\OpenBr_install\openbr-master\build-msvc2019" then select "Next".
@echo =   	Select "Run CMake" then "Finish".
@echo =   	You're all set! 
@echo.
@echo ======================================================
@echo ======================================================
@echo.
@echo.
@echo.
@echo 		Press to quit.
pause





