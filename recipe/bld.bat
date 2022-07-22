:: cmd

:: Isolate the build.
mkdir build
if errorlevel 1 exit 1

cmake ^
  -G"Ninja" ^
  -S %SRC_DIR% ^
  -B %SRC_DIR%\build ^
  -DCMAKE_INSTALL_PREFIX="%PREFIX%"

cd build
if errorlevel 1 exit /b 1

:: Build.
echo "Building..."
ninja
if errorlevel 1 exit /b 1

:: Install.
echo "Installing..."
ninja install
if errorlevel 1 exit /b 1


:: Error free exit.
echo "Error free exit!"
exit 0

