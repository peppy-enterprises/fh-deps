:: Fahrenheit `extern` build, Stage 7 : ImGui.NET code generator run & copy
:: 24/9/24 00:28 fkelava

@echo off
@set NETTFM=net9.0

@set SRCDIR=..\fh\artifacts\build\Fahrenheit.Core.ImGui.NET.CG\Debug\%NETTFM%
@set DESTDIR=%~dp0..\fh\src\imgui\Generated

:: Clean any existing generated output, then remake the generated directory.
rd /s /q %DESTDIR%
mkdir %DESTDIR%
:: Then inform the code generator to place its output in the destination directory.
cd %SRCDIR%
dotnet fhimguicg.dll %DESTDIR%
 
