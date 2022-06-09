@REM Adding the @ hides the commands from displaying in bash/ console window

@REM This is for the title name 
@title SANIDHYA'S SYSTEM CACHE CLEAR UTILITY SCRIPT

@REM Setting colur of the file [Black and White]
@color 07

@REM ECHO Set to Off [Mandatory to show ascii]
@ECHO OFF

SETLOCAL EnableDelayedExpansion

@REM SOME RANDOM ASCII
ECHO.
ECHO.
ECHO ----------------------------------------------- 
ECHO  #####  #     #  #####  ####### ####### #     #    
ECHO #     #  #   #  #     #    #    #       ##   ##    
ECHO #         # #   #          #    #       # # # #    
ECHO  #####     #     #####     #    #####   #  #  #    
ECHO       #    #          #    #    #       #     #    
ECHO #     #    #    #     #    #    #       #     #    
ECHO  #####     #     #####     #    ####### #     #    
ECHO -----------------------------------------------                                                  
ECHO  #####     #     #####  #     # #######            
ECHO #     #   # #   #     # #     # #                  
ECHO #        #   #  #       #     # #                  
ECHO #       #     # #       ####### #####              
ECHO #       ####### #       #     # #                  
ECHO #     # #     # #     # #     # #                  
ECHO  #####  #     #  #####  #     # #######            
ECHO -----------------------------------------------                                                
ECHO  #####  #       #######    #    ######             
ECHO #     # #       #         # #   #     #            
ECHO #       #       #        #   #  #     #            
ECHO #       #       #####   #     # ######             
ECHO #       #       #       ####### #   #              
ECHO #     # #       #       #     # #    #             
ECHO  #####  ####### ####### #     # #     #   
ECHO ----------------------------------------------- 
ECHO. 
ECHO                              -BY SANIDHYA SHARMA 
ECHO.
ECHO.
ECHO.
Echo NOTE : PLEASE BACKUP THE DESTOP APPILCATIONS, FILES AND FOLDERS 
ECHO AS THEY MIGHT DISAPPEAR WELL SOMETIMES ITS BETTER TO BACKUP
ECHO.
ECHO.
ECHO.

@REM Moving to C Drive Temp folder
::@CD "C:\Windows\Temp"

@SET TEMP_TARGET_FOLDER="C:\Windows\Temp"
@SET APP_TEMP_TARGET_FOLDER="%USERPROFILE%\AppData\Local\Temp"
@SET PREFETCH_TARGET_FOLDER="C:\Windows\Prefetch"

@REM: Viewing files in the folder
REM Clearing the Temp folder ....

@REM Calling the funtion [For Clearing TEMP Folder]
CALL :ClearFolder %TEMP_TARGET_FOLDER%
EXIT /B %ERRORLEVEL%

@REM Calling the funtion [For Clearing %TEMP% Folder]
CALL :ClearFolder %APP_TEMP_TARGET_FOLDER%
EXIT /B %ERRORLEVEL%

@REM Calling the funtion [For Clearing PREFETCH Folder]
CALL :ClearFolder %PREFETCH_TARGET_FOLDER%
EXIT /B %ERRORLEVEL%

@REM Clear Temp folder funtion
:ClearFolder
    
    @REM Moving to TARGET folder
    @CD %~1

    @REM Cleaning all the files and folders under ""
    FOR /F "delims=" %%i IN ('dir /b') DO (rmdir "%%i" /s/q 2>NUL || del "%%i" /s/q >NUL )

::EXIT /B 0

::GOTO clear prefech

@REM Checking for ERROR [ERRORLEVEL=1 its falied and ERRORLEVEL=0 is when its succesfull]
IF %errorlevel% NEQ 1 (

    @REM Setting colur of the file [Black and Red]
    @color 0C

    @REM Displaying the output to user any ECHO Message 
    @ECHO ON

    @REM Letting the user know the status 
    ECHO "TASK FAILED"

) ELSE (

    @REM Setting colur of the file [Black and Green]
    @color 0A

    @REM Displaying the output to user
    @ECHO ON

    @REM Letting the user know the status 
    ECHO "CLeared TEMP Folder "
)

@REM ECHO Set to Off 
@ECHO OFF

@REM Waiting for users click
@PAUSE
