set MSBuild="%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe"
set NoPause=true
%MSBuild% NemerleAll.nproj /target:DevBuildQuick /p:Configuration=Debug /verbosity:n /p:NTargetName=Build  /tv:4.0 /p:TargetFrameworkVersion=v4.5

rem /verbosity:n /p:TargetName=Build
IF %errorlevel% == 0 call Reg-bins-2-4.5.cmd
pause