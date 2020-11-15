# The MIT License (MIT)
# 
# Copyright (c) 2020 Orion 2 CanSat
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

function Is-Numeric ($Value) {
    return $Value -match "^[\d\.]+$"
}

$Orion2Logo = [char[]]"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMWNX0OOkkxk0KXNWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMWXOdlc;'.';;..;lodxO0XWWMMMMMMMMMWNXKKXNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMWNOl,...,'..':c::llllllclox0NMWNKOxollccc:l0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMWXk:..........',cllllllllcc:,;odolcloxMKXKOc,OMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMW0c.........',;cccllllllllll:,,:::x0kMMMMKo;;dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMNk:........,::ccccclllllllllll:,,,:ddcxMNk::okNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMXkc'..''..,:::cccccclllllllllllc,..,:;l0Oc:dXWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMNkl:..:cc:;:ccccccccclllllllllloc;;;:c;clcdKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMW0olc,',;:c:;:::cccccllllllllloddl;,,;;;:cdOOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMNxlllc:,',clc:::ccccllllllllloddc,'''''';cldMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMXdclllll:;;;,',,;:ccllllllllloddc,'''',:clOWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMXdcllllllc:'......,;:cllllllllc;;:cc:;lxockMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXXXXNWMMM
MMMMMMMMMNdclllllll;'.........,:clllc;'.,:ldxlcxkdlkMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMc::::lOWMM
MMMMMMMMMWkclooollc,'..........',,,'.';clooddodkkdlMMMMNNNNNNNNNWWMMMWNWWMMMWWNNNNWWMMMMWWWMMMMMMWNNMMMM:;;dNMM
MMMMMMMMMMKl:loooolc;''''''''''.....'coooooodxkOklxMMOddooooooodkXWMkoxKMWKkdoooodxONWMOdxKNMMMXkoxkM;;::MMMMMM
MMMMMMMMMWO:':loooool:;''','......';loooooodxkOkldXMNd::;:cccc::cxNMd:l0MMo:;:ccc::cxXMxcclxKWWKo:okM,;;;;:xNMM
MMMMMMMWOl:odc:looooool:,.....'',,;coooooodxkOxldXMMNd:ccoMMMxoc;oXMo;l0Mx::dXNNNOl;lKMx:;,;lxK0l;l0MOOOOOOKWMM
MMMMMWKl;o0WWKo::lool:,'...'',,;:cloooooodxkxolkNMMMXd;;,,,;;:;;:kWMo;c0Mx;:kWMMMKl;l0Md;:ll;;ldc;lKMMMMMMMMMMM
MMMMNx;cOWMMMMNk:,,''',;,',,;:cloooooddddxdlcdKWMMMMNo;;:oxc,,:oMMMMo,c0Mx;:xKXXXOl;cKMd;:kXOc,;:;lKMMMMMMMMMMM
MMMWx,oXMMWX0kdl:::,,;cl:,;cooddddddddolcclxKWMMMMMMXo,:lMMXx:,;lMMMl,:0MO:,;::::;,,dNMd,;kWMXx:,'cKMMMMMMMMMMM
MMMNo,oxxolccldkKNNXOdlc:,,:ccccccc:::clx0NWMMMMMMMMNkldkKMMWXxlldKMkldXMM0dllccclokNMMOloKMMMWKxldXMMMMMMMMMMM
MMMWKxdddxOKXWMMMMMMMMWX0kxdddoodddxOKNWMMMMMMMMMMMMMWWWWMMMMMWWWWWMWWWMMMMMWWWWWWWMMMMWWWWMMMMMWWWMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

"

Clear-Host

foreach ($char in $Orion2Logo)
{
    if ($char -eq 'M')
    {
        Write-Host ' ' -NoNewline
    }
    elseif ($char -eq "\n$")
    {
        Write-Host ''
    }
    elseif ('.,' -match $char)
    {
        Write-Host $char -ForegroundColor Magenta -NoNewline
    }
    elseif ('loc' -match $char)
    {
        Write-Host $char -ForegroundColor Red -NoNewline
    }
    else
    {
        Write-Host $char -ForegroundColor DarkRed -NoNewline
    }
}

Write-Host "Make me a Makefile
Created by Orion 2 CanSat


"

Write-Host 'Make me a Makefile will ask some questions to prepare your makefile.
'

$ProjectName = Read-Host -Prompt "What is your project Name? "

$BoardName = $null
$BoardID = $null
$BoardProcessor = $null
$CPUType = $null
$CPUSpeed = $null
$FPU = $null
$Defines = $null

Write-Host "Select board.
1) Teensy 3.1
2) Teensy 3.2
3) Teensy 3.5
4) Teensy 3.6
5) Teensy 4.0
5) Teensy 4.1
6) Other
"

$BoardNumber = ""
while (-Not (Is-Numeric $BoardNumber))
{
    $BoardNumber = Read-Host -Prompt "Select number of the board you want to complie with"
}
$BoardNumber = $BoardNumber -as [int]

switch ($BoardNumber)
{
    1 {
        $BoardName = "Teensy 3.2"
        $BoardID = "TEENSY32"
        $BoardProcessor = "mk20dx256"
        $CPUType = "cortex-m4"
        $CPUSpeed = "72000000"
        $FPU = ""
    }
    2 {
        $BoardName = "Teensy 3.2"
        $BoardID = "TEENSY32"
        $BoardProcessor = "mk20dx256"
        $CPUType = "cortex-m4"
        $CPUSpeed = "72000000"
        $FPU = ""
    }
    3 {
        $BoardName = "Teensy 3.5"
        $BoardID = "TEENSY35"
        $BoardProcessor = "mk64fx512"
        $CPUType = "cortex-m4"
        $CPUSpeed = "120000000"
        $FPU = "fpv4-sp-d16"
        $Defines = "-D__MK64FX512__ -DTEENSYDUINO=153 -DARDUINO_TEENSY35 -DF_CPU=$CPUSpeed -DUSB_SERIAL -DLAYOUT_US_ENGLISH -DARDUINO"
    }
    4 {
        $BoardName = 'Teensy 3.6'
        $BoardID = 'TEENSY36'
        $BoardProcessor = 'mk66fx1m0'
        $CPUType = 'cortex-m4'
        $CPUSpeed = '256000000'
        $FPU = 'fpv4-sp-d16'
        $Defines = "-D__MK66FX1M0__ -DTEENSYDUINO=153 -DARDUINO_TEENSY36 -DF_CPU=$CPUSpeed -DUSB_SERIAL -DLAYOUT_US_ENGLISH -DARDUINO"
    }
    5 {
        $BoardName = 'Teensy 4.0'
        $BoardID = 'TEENSY40'
        $BoardProcessor = 'imxrt1062'
        $CPUType = 'cortex-m7'
        $CPUSpeed = '600000000'
        $FPU = 'fpv5-d16'
        $Defines = "-D__IMXRT1062__ -DTEENSYDUINO=153 -DARDUINO_TEENSY40 -DF_CPU=$CPUSpeed -DUSB_SERIAL -DLAYOUT_US_ENGLISH -DARDUINO"
    }
    6 {
        $BoardName = 'Teensy 4.1'
        $BoardID = 'TEENSY41'
        $BoardProcessor = 'imxrt1062_t41'
        $CPUType = 'cortex-m7'
        $CPUSpeed = '600000000'
        $FPU = 'fpv5-d16'
        $Defines = "-D__IMXRT1062__ -DTEENSYDUINO=153 -DARDUINO_TEENSY41 -DF_CPU=$CPUSpeed -DUSB_SERIAL -DLAYOUT_US_ENGLISH -DARDUINO"
    }
}


if ($BoardName -eq $null)
{
    $BoardName = Read-Host -Prompt "What is your project's board Name? "
}

Write-Progress -Id 1 -Activity Updating -Status 'Creating Makefile' -PercentComplete 10 -CurrentOperation OuterLoop

if ($BoardID -eq $null)
{
    $BoardID = Read-Host -Prompt "What is your project's board ID? "
}

if ($BoardProcessor -eq $null)
{
    $BoardProcessor = Read-Host -Prompt "What is your project's board Processor? "
}

if ($CPUType -eq $null)
{
    $CPUType = Read-Host -Prompt "What is your CPU type? "
}

if ($CPUSpeed -eq $null)
{
    $CPUSpeed = Read-Host -Prompt "At what speed will your project's board be running? "
}

if ($FPU -eq $null)
{
    $FPU = Read-Host -Prompt "What FPU does your processor support? "
}

Write-Progress -Id 1 -Activity Updating -Status 'Creating Makefile' -PercentComplete 20 -CurrentOperation OuterLoop

if ($Defines -eq $null)
{
    $Defines = -Read-Host -Prompt "What defines would you like to use? "
}

Write-Progress -Id 1 -Activity Updating -Status 'Creating Makefile' -PercentComplete 30 -CurrentOperation OuterLoop

$Optimization = ""
While (-Not ((Is-Numeric($Optimization) -and ($Optimization -gt '0') -and ($Optimization -lt '3'))-or ($Optimization -eq 's')))
{
    Write-Host "What is the level of optimazation that the commpiler will output?`n0: No optimization (the default); generates unoptimized code but has the fastest compilation time.`n1: Moderate optimization; optimizes reasonably well but does not degrade compilation time significantly.`n2: Full optimization; generates highly optimized code and has the slowest compilation time.`n3: Full optimization as in 2; also uses more aggressive automatic inlining of subprograms within a unit (Inlining of Subprograms) and attempts to vectorize loops.`ns: Optimize space usage (code and data) of resulting program."
    $Optimization = Read-Host
}
$Optimization = '-O' + $Optimization

Write-Progress -Id 1 -Activity Updating -Status 'Creating Makefile' -PercentComplete 40 -CurrentOperation OuterLoop

$LibraryDir = Read-Host -Prompt "Where are your libraries located in? "
$Libraries = (Get-ChildItem -Path $LibraryDir -Directory)
$CoreLibraryDir = Read-Host -Prompt "Where do you have a core library? (If you do not have a core library leave empty) "
$Date = Get-Date -UFormat "%Y/%m/%d %R"

Write-Progress -Id 1 -Activity Updating -Status 'Creating Makefile' -PercentComplete 50 -CurrentOperation OuterLoop
$OutputString = "#-------------------------------------------------------------------------------------------------------------------------------------------------
# Generated by Make me a Makefile (https://github.com/Orion-CanSat/Make-me-a-Makefile)
#
# Board:            $BoardName
# CPU Speed:        $CPUSpeed
# Optimization:     $Optimization
# 
# Time of creation: $Date
#-------------------------------------------------------------------------------------------------------------------------------------------------

#MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMWNX0OOkkxk0KXNWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMWXOdlc;'.';;..;lodxO0XWWMMMMMMMMMWNXKKXNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMWNOl,...,'..':c::llllllclox0NMWNKOxollccc:l0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMWXk:..........',cllllllllcc:,;odolcloxMKXKOc,OMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMW0c.........',;cccllllllllll:,,:::x0kMMMMKo;;dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMNk:........,::ccccclllllllllll:,,,:ddcxMNk::okNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMXkc'..''..,:::cccccclllllllllllc,..,:;l0Oc:dXWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMNkl:..:cc:;:ccccccccclllllllllloc;;;:c;clcdKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMW0olc,',;:c:;:::cccccllllllllloddl;,,;;;:cdOOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMNxlllc:,',clc:::ccccllllllllloddc,'''''';cldMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMXdclllll:;;;,',,;:ccllllllllloddc,'''',:clOWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMXdcllllllc:'......,;:cllllllllc;;:cc:;lxockMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXXXXNWMMM
#MMMMMMMMMNdclllllll;'.........,:clllc;'.,:ldxlcxkdlkMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMc::::lOWMM
#MMMMMMMMMWkclooollc,'..........',,,'.';clooddodkkdlMMMMNNNNNNNNNWWMMMWNWWMMMWWNNNNWWMMMMWWWMMMMMMWNNMMMM:;;dNMM
#MMMMMMMMMMKl:loooolc;''''''''''.....'coooooodxkOklxMMOddooooooodkXWMkoxKMWKkdoooodxONWMOdxKNMMMXkoxkM;;::MMMMMM
#MMMMMMMMMWO:':loooool:;''','......';loooooodxkOkldXMNd::;:cccc::cxNMd:l0MMo:;:ccc::cxXMxcclxKWWKo:okM,;;;;:xNMM
#MMMMMMMWOl:odc:looooool:,.....'',,;coooooodxkOxldXMMNd:ccoMMMxoc;oXMo;l0Mx::dXNNNOl;lKMx:;,;lxK0l;l0MOOOOOOKWMM
#MMMMMWKl;o0WWKo::lool:,'...'',,;:cloooooodxkxolkNMMMXd;;,,,;;:;;:kWMo;c0Mx;:kWMMMKl;l0Md;:ll;;ldc;lKMMMMMMMMMMM
#MMMMNx;cOWMMMMNk:,,''',;,',,;:cloooooddddxdlcdKWMMMMNo;;:oxc,,:oMMMMo,c0Mx;:xKXXXOl;cKMd;:kXOc,;:;lKMMMMMMMMMMM
#MMMWx,oXMMWX0kdl:::,,;cl:,;cooddddddddolcclxKWMMMMMMXo,:lMMXx:,;lMMMl,:0MO:,;::::;,,dNMd,;kWMXx:,'cKMMMMMMMMMMM
#MMMNo,oxxolccldkKNNXOdlc:,,:ccccccc:::clx0NWMMMMMMMMNkldkKMMWXxlldKMkldXMM0dllccclokNMMOloKMMMWKxldXMMMMMMMMMMM
#MMMWKxdddxOKXWMMMMMMMMWX0kxdddoodddxOKNWMMMMMMMMMMMMMWWWWMMMMMWWWWWMWWWMMMMMWWWWWWWMMMMWWWWMMMMMWWWMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
#MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM


ifeq (`$(OS),Windows_NT)
`tSHELL           := cmd.exe
`texport SHELL
`tDateTime        := `$(shell powershell [int](Get-Date -UFormat +%s)[0])
else
`tSHELL           := bash
`texport SHELL
`tDateTime        := `$(shell date +%s)
endif

TARGET_NAME         := $ProjectName
BOARD_ID            := $BoardID
MCU                 := $BoardProcessor

LIBS_DIR            := $LibraryDir
LIBS_NAMES          := $Libraries
CORE_BASE           := $CoreLibraryDir


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Flags
#-------------------------------------------------------------------------------------------------------------------------------------------------
FLAGS_CPU           := -mthumb -mcpu=$CPUType -mfloat-abi=hard -mfpu=$FPU -fsingle-precision-constant
FLAGS_OPT           := $Optimization
FLAGS_COM           := -g -Wall -ffunction-sections -fdata-sections -nostdlib -MMD
FLAGS_LSP           := 

FLAGS_CPP           := -fno-exceptions -fpermissive -felide-constructors -std=gnu++14 -Wno-error=narrowing -fno-rtti
FLAGS_C             := 
FLAGS_S             := -x assembler-with-cpp
FLAGS_LD            := -Wl,--print-memory-usage,--gc-sections,--relax,--defsym=__rtc_localtime=`$(shell powershell [int](Get-Date -UFormat +%s)[0]) -T`$(CORE_BASE)/$BoardProcessor.ld

LIBS                := -larm_cortexM4lf_math -lm -lstdc++
DEFINES             := $Defines

CPP_FLAGS           := `$(FLAGS_CPU) `$(FLAGS_OPT) `$(FLAGS_COM) `$(DEFINES) `$(FLAGS_CPP)
C_FLAGS             := `$(FLAGS_CPU) `$(FLAGS_OPT) `$(FLAGS_COM) `$(DEFINES) `$(FLAGS_C)
S_FLAGS             := `$(FLAGS_CPU) `$(FLAGS_OPT) `$(FLAGS_COM) `$(DEFINES) `$(FLAGS_S)
LD_FLAGS            := `$(FLAGS_CPU) `$(FLAGS_OPT) `$(FLAGS_LSP) `$(FLAGS_LD)
AR_FLAGS            := rcs


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Files & Folders
#-------------------------------------------------------------------------------------------------------------------------------------------------
SRC_SRC             := src
LIB_SRC             := `$(LIBS_DIR)
CORE_SRC            := `$(CORE_BASE)

BIN                 := bin
SRC_BIN             := `$(BIN)/src
CORE_BIN            := `$(BIN)/core
LIB_BIN             := `$(BIN)/lib
CORE_LIB            := `$(BIN)/core.a
TARGET_HEX          := `$(BIN)/`$(TARGET_NAME).hex
TARGET_ELF          := `$(BIN)/`$(TARGET_NAME).elf
TARGET_LST          := `$(BIN)/`$(TARGET_NAME).lst


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Toolchains
#-------------------------------------------------------------------------------------------------------------------------------------------------
CC                  := arm-none-eabi-gcc
CXX                 := arm-none-eabi-g++
AR                  := arm-none-eabi-gcc-ar
OBJCOPY             := arm-none-eabi-objcopy
SIZE                := arm-none-eabi-size
OBJDUMP             := arm-none-eabi-objdump


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Source Files & Library Files
#-------------------------------------------------------------------------------------------------------------------------------------------------
rwildcard           =`$(wildcard `$1`$2) `$(foreach d,`$(wildcard `$1*),`$(call rwildcard,`$d/,`$2))

SRC_C_FILES         := `$(call rwildcard,`$(SRC_SRC)/,*.c)
SRC_CPP_FILES       := `$(call rwildcard,`$(SRC_SRC)/,*.cpp)
SRC_S_FILES         := `$(call rwildcard,`$(SRC_SRC)/,*.S)
SRC_OBJ             := `$(SRC_S_FILES:`$(SRC_SRC)/%.S=`$(SRC_BIN)/%.o) `$(SRC_C_FILES:`$(SRC_SRC)/%.c=`$(SRC_BIN)/%.o) `$(SRC_CPP_FILES:`$(SRC_SRC)/%.cpp=`$(SRC_BIN)/%.o)

CORE_CPP_FILES      := `$(call rwildcard,`$(CORE_SRC)/,*.cpp)
CORE_C_FILES        := `$(call rwildcard,`$(CORE_SRC)/,*.c)
CORE_S_FILES        := `$(call rwildcard,`$(CORE_SRC)/,*.S)
CORE_OBJ            := `$(CORE_S_FILES:`$(CORE_SRC)/%.S=`$(CORE_BIN)/%.o) `$(CORE_C_FILES:`$(CORE_SRC)/%.c=`$(CORE_BIN)/%.o) `$(CORE_CPP_FILES:`$(CORE_SRC)/%.cpp=`$(CORE_BIN)/%.o)

LIB_DIRS            := `$(foreach d, `$(LIBS_NAMES), `$(LIBS_DIR)/`$d/ `$(LIBS_DIR)/`$d/utility/ )    # base and /utility
LIB_DIRS            += `$(foreach d, `$(LIBS_NAMES), `$(LIBS_DIR)/`$d/src/ `$(dir `$(call rwildcard,`$(LIBS_DIR)/`$d/src/,*/.)))

LIB_CPP_LOCAL       := `$(foreach d, `$(LIB_DIRS),`$(call wildcard,`$d/*.cpp))
LIB_C_LOCAL         := `$(foreach d, `$(LIB_DIRS_),`$(call wildcard,`$d/*.c))
LIB_S_LOCAL         := `$(foreach d, `$(LIB_DIRS),`$(call wildcard,`$d/*.S))

LIB_OBJ             := `$(LIB_CPP_LOCAL:`$(LIBS_DIR)/%.cpp=`$(LIB_BIN)/%.o)
LIB_OBJ             += `$(LIB_C_LOCAL:`$(LIBS_DIR)/%.c=`$(LIB_BIN)/%.o)
LIB_OBJ             += `$(LIB_S_LOCAL:`$(LIBS_DIR)/%.S=`$(LIB_BIN)/%.o)


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Includes
#-------------------------------------------------------------------------------------------------------------------------------------------------
INCLUDE             := -I./`$(SRC_SRC) -I`$(CORE_SRC) -Iinclude
INCLUDE             += `$(foreach d, `$(LIB_DIRS), -I`$d)


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Creation of Directories
#-------------------------------------------------------------------------------------------------------------------------------------------------
DIRECTORIES         :=  `$(sort `$(dir `$(CORE_OBJ) `$(SRC_OBJ) `$(LIB_OBJ)))
generateDirs        := `$(foreach d, `$(DIRECTORIES), `$(shell if not exist `"`$d`" mkdir `"`$d`"))


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Targets
#-------------------------------------------------------------------------------------------------------------------------------------------------
.PHONY: directories all rebuild clean cleanUser cleanCore


all:  `$(TARGET_LST) `$(TARGET_HEX)

rebuild: cleanUser all

clean:   cleanUser cleanCore cleanLib
`t@echo Cleaning done &&echo.


`$(CORE_BIN)/%.o: `$(CORE_SRC)/%.S
`t@echo CORE [ASM] `$(notdir `$<)
`t@`"`$(CC)`" `$(S_FLAGS) `$(INCLUDE) -o `$@ -c `$<

`$(CORE_BIN)/%.o: `$(CORE_SRC)/%.c
`t@echo CORE [CC]  `$(notdir `$<)
`t@`"`$(CC)`" `$(C_FLAGS) `$(INCLUDE) -o `$@ -c `$<

`$(CORE_BIN)/%.o: `$(CORE_SRC)/%.cpp
`t@echo CORE [CPP] `$(notdir `$<)
`t@`"`$(CXX)`" `$(CPP_FLAGS) `$(INCLUDE) -o `$@ -c `$<

`$(CORE_LIB) : `$(CORE_OBJ)
`t@echo CORE [AR]  `$@
`t@`$(AR) `$(AR_FLAGS) `$@ `$^
`t@echo Teensy core built successfully &&echo. 

`$(LIB_BIN)/%.o: `$(LIBS_DIR)/%.S
`t@echo LIB  [ASM] `$(notdir `$<)
`t@`"`$(CC)`" `$(S_FLAGS) `$(INCLUDE) -o `$@ -c `$<

`$(LIB_BIN)/%.o: `$(LIBS_DIR)/%.cpp
`t@echo LIB  [CPP] `$(notdir `$<)
`t@`"`$(CXX)`" `$(CPP_FLAGS) `$(INCLUDE) -o `$@ -c `$<

`$(LIB_BIN)/%.o: `$(LIBS_DIR)/%.c
`t@echo LIB  [CC]  `$(notdir `$<)
`t@`"`$(CC)`" `$(C_FLAGS) `$(INCLUDE) -o `$@ -c `$<

`$(SRC_BIN)/%.o: `$(SRC_SRC)/%.S
`t@echo SRC  [ASM] `$<
`t@`"`$(CC)`" `$(S_FLAGS) `$(INCLUDE) -o `$@ -c `$< 

`$(SRC_BIN)/%.o: `$(SRC_SRC)/%.c
`t@echo SRC  [CC]  `$(notdir `$<)
`t@`"`$(CC)`" `$(C_FLAGS) `$(INCLUDE) -o `"`$@`" -c `$<

`$(SRC_BIN)/%.o: `$(SRC_SRC)/%.cpp
`t@echo SRC  [CPP] `$(notdir `$<)
`t@`"`$(CXX)`" `$(CPP_FLAGS) `$(INCLUDE) -o `"`$@`" -c `$<

`$(TARGET_ELF): `$(CORE_LIB) `$(LIB_OBJ) `$(SRC_OBJ)
`t@echo [LD]  `$@
`t@`$(CC) `$(LD_FLAGS) -o `"`$@`" `$(SRC_OBJ) `$(LIB_OBJ) `$(CORE_LIB)
`t@echo Src code built and linked to libraries &&echo.

%.lst: %.elf
`t@echo [LST] `$@
`t@`$(OBJDUMP) -d -S --demangle --no-show-raw-insn --syms `"`$<`"  > `"`$@`"	
`t@echo Sucessfully built project &&echo.

%.hex: %.elf
`t@echo [HEX] `$@ 
`t@`$(OBJCOPY) -O ihex -R.eeprom `"`$<`" `"`$@`"
`t@echo Sucessfully build project HEX file&&echo.
	
	
#-------------------------------------------------------------------------------------------------------------------------------------------------
# Cleaning
#-------------------------------------------------------------------------------------------------------------------------------------------------
cleanUser:
`t@echo Cleaning user binaries...
`t@if exist `$(SRC_BIN) rd /s/q `"`$(SRC_BIN)`"
`t@if exist `"`$(TARGET_LST)`" del `$(subst /,\,`$(TARGET_LST))

cleanCore:
`t@echo Cleaning core binaries...
`t@if exist `$(CORE_BIN) rd /s/q `"`$(CORE_BIN)`"
`t@if exist `$(CORE_LIB) del  `$(subst /,\,`$(CORE_LIB))	

cleanLib:
`t@echo Cleaning user library binaries...
`t@if exist `$(LIB_BIN) rd /s/q `"`$(LIB_BIN)`"



-include `$(CORE_OBJ:.o=.d)
-include `$(SRC_OBJ:.o=.d)
-include `$(LIB_OBJ:.o=.d)
"

Write-Progress -Id 1 -Activity Updating -Status 'Creating Makefile' -PercentComplete 75 -CurrentOperation OuterLoop

try
{
    Set-Content -Path "Makefile" -Value $OutputString
}
catch
{
    Write-Error "Could not write succesfully to path"
}

Write-Progress -Id 1 -Activity Updating -Status 'Creating Makefile' -PercentComplete 100 -CurrentOperation OuterLoop