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
        $Defines = "-D__MK64FX512__ -DTEENSYDUINO=153 -DARDUINO_TEENSY35 -DF_CPU=$CPUSpeed -DUSB_SERIAL -DLAYOUT_US_ENGLISH"
    }
    4 {
        $BoardName = 'Teensy 3.6'
        $BoardID = 'TEENSY36'
        $BoardProcessor = 'mk66fx1m0'
        $CPUType = 'cortex-m4'
        $CPUSpeed = '256000000'
        $FPU = 'fpv4-sp-d16'
        $Defines = "-D__MK66FX1M0__ -DTEENSYDUINO=153 -DARDUINO_TEENSY36 -DF_CPU=$CPUSpeed -DUSB_SERIAL -DLAYOUT_US_ENGLISH"
    }
    5 {
        $BoardName = 'Teensy 4.0'
        $BoardID = 'TEENSY40'
        $BoardProcessor = 'imxrt1062'
        $CPUType = 'cortex-m7'
        $CPUSpeed = '600000000'
        $FPU = 'fpv5-d16'
        $Defines = "-D__IMXRT1062__ -DTEENSYDUINO=153 -DARDUINO_TEENSY40 -DF_CPU=$CPUSpeed -DUSB_SERIAL -DLAYOUT_US_ENGLISH"
    }
    6 {
        $BoardName = 'Teensy 4.1'
        $BoardID = 'TEENSY41'
        $BoardProcessor = 'imxrt1062_t41'
        $CPUType = 'cortex-m7'
        $CPUSpeed = '600000000'
        $FPU = 'fpv5-d16'
        $Defines = "-D__IMXRT1062__ -DTEENSYDUINO=153 -DARDUINO_TEENSY41 -DF_CPU=$CPUSpeed -DUSB_SERIAL -DLAYOUT_US_ENGLISH"
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

$Optimization = Read-Host -Prompt "What is the level of optimazation that the commpiler will output? "

Write-Progress -Id 1 -Activity Updating -Status 'Creating Makefile' -PercentComplete 40 -CurrentOperation OuterLoop

$LibraryDir = Read-Host -Prompt "Where are your libraries located in? "
$Libraries = (Get-ChildItem -Path $LibraryDir -Directory)

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

ifeq (`$(OS),Windows_NT)
    SHELL           := cmd.exe
    export SHELL
    DateTime        := `$(shell powershell [int](Get-Date -UFormat +%s)[0])
else
    SHELL           := bash
    export SHELL
    DateTime        := `$(shell date +%s)
endif

TARGET_NAME         := $ProjectName
BOARD_ID            := $BoardID
MCU                 := $BoardProcessor

LIBS_DIR            := $LibraryDir
LIBS                := $Libraries


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Flags
#-------------------------------------------------------------------------------------------------------------------------------------------------

FLAGS_CPU           := -mthumb -mcpu=$CPUType -mfloat-abi=hard -mfpu=$FPU -fsingle-precision-constant
FLAGS_OPTIMAZATION  := $Optimization
FLAGS_COMPILER      := -g -Wall -ffunction-sections -fdata-sections -nostdlib -MMD
FLAGS_LSP           := 

FLAGS_COMPILER_C    := 
FLAGS_COMPILER_CXX  := -fno-exceptions -fpermissive -felide-constructors -std=gnu++14 -Wno-error=narrowing -fno-rtti
FLAGS_COMPILER_S    := -x assembler-with-cpp
FLAGS_COMPILER_LD   := -Wl,--print-memory-usage,--gc-sections,--relax,--defsym=__rtc_localtime=`$(DateTime) -T$BoardProcessor.ld

DEFINES             := $Defines

C_FLAGS             := `$(FLAGS_CPU) `$(FLAGS_OPTIMAZATION) `$(FLAGS_COMPILER) `$(DEFINES) `$(FLAGS_COMPILER_C)
CXX_FLAGS           := `$(FLAGS_CPU) `$(FLAGS_OPTIMAZATION) `$(FLAGS_COMPILER) `$(DEFINES) `$(FLAGS_COMPILER_CXX)
S_FLAGS             := `$(FLAGS_CPU) `$(FLAGS_OPTIMAZATION) `$(FLAGS_COMPILER) `$(DEFINES) `$(FLAGS_COMPILER_S)
LD_FLAGS            := `$(FLAGS_CPU) `$(FLAGS_OPTIMAZATION) `$(FLAGS_LSP) `$(FLAGS_COMPILER_LD)


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
# Files & Folders
#-------------------------------------------------------------------------------------------------------------------------------------------------
SRC                 := src
LIBS_SRC            := `$(LIBS_DIR)

BIN                 := bin
SRC_BIN             := bin/src
LIB_BIN             := bin/lib

OUTPUT_HEX          := bin/`$(TARGET_NAME).hex
OUTPUT_ELF          := bin/`$(TARGET_NAME).elf
TARGET_DATA_LIST_F  := bin/`$(TARGET_NAME).lst


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Source Files & Library Files
#-------------------------------------------------------------------------------------------------------------------------------------------------
RWildCardSRC         = `$(wildcard `$1`$2) `$(foreach d,`$(wildcard `$1*),`$(call RWildCardSRC,`$d/,`$2))

SRC_C_FILES         := `$(call RWildCardSRC,`$(SRC)/,*.c)
SRC_CXX_FILES       := `$(call RWildCardSRC,`$(SRC)/,*.cpp)
SRC_S_FILES         := `$(call RWildCardSRC,`$(SRC)/,*.S)
SRC_OBJ             := `$(SRC_S_FILES:`$(SRC)/%.S=`$(SRC_BIN)/%.o) `$(SRC_C_FILES:`$(SRC)/%.c=`$(SRC_BIN)/%.o) `$(SRC_CXX_FILES:`$(SRC)/%.cpp=`$(SRC_BIN)/%.o)

LIB_DIRS            := `$(foreach d, `$(LIBS), `$(LIBS_DIR)/`$d/ `$(LIBS_DIR)/`$d/utility `$(LIBS_DIR)/`$d/src/ `$(dir `$(call rwildcard,`$(LIBS_DIR)/`$d/src/,*/.)) `$(LIBS_DIR)/`$d/`$(MCU))
LIB_C_FILES         := `$(foreach d, `$(LIB_DIRS),`$(call wildcard,`$d/*.c))
LIB_CXX_FILES       := `$(foreach d, `$(LIB_DIRS),`$(call wildcard,`$d/*.cpp))
LIB_S_FILES         := `$(foreach d, `$(LIB_DIRS),`$(call wildcard,`$d/*.S))
LIB_OBJ             := `$(LIB_C_FILES:`$(LIBS_DIR)/%.c=`$(LIB_BIN)/%.o) `$(LIB_CXX_FILES:`$(LIBS_DIR)/%.cpp=`$(LIB_BIN)/%.o) `$(LIB_S_FILES:`$(LIBS_DIR)/%.S=`$(LIB_BIN)/%.o)

#-------------------------------------------------------------------------------------------------------------------------------------------------
# Includes
#-------------------------------------------------------------------------------------------------------------------------------------------------
INCLUDE             := -I./`$(SRC) -Iinclude
INCLUDE             += `$(foreach d, `$(LIB_DIRS), -I`$d)


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Creation of Directories
#-------------------------------------------------------------------------------------------------------------------------------------------------
DIRECTORIES         := `$(sort `$(dir `$(SRC_OBJ) `$(LIB_OBJ)))
GENDIRECTORIES      := `$(foreach d, `$(DIRECTORIES), `$(shell if not exist `"`$d`" mkdir `"`$d`"))


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Targets
#-------------------------------------------------------------------------------------------------------------------------------------------------
.PHONY: all

all: `$(TARGET_DATA_LIST_F) `$(OUTPUT_HEX)


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Source Targets
#-------------------------------------------------------------------------------------------------------------------------------------------------
`$(SRC_BIN)/%.o: `$(SRC)/%.c
`t@`"`$(CC)`" `$(C_FLAGS) `$(INCLUDE) -o `$@ -C `$<

`$(SRC_BIN)/%.o: `$(SRC)/%.cpp
`t@`"`$(CXX)`" `$(CXX_FLAGS) `$(INCLUDE) -o `$@ -C `$<

`$(SRC_BIN)/%.o: `$(SRC)/%.S
`t@`"`$(CC)`" `$(S_FLAGS) `$(INCLUDE) -o `$@ -C `$<


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Library Targets
#-------------------------------------------------------------------------------------------------------------------------------------------------
`$(LIB_BIN)/%.o: `$(LIBS_DIR)/%.c
`t@`"`$(CC)`" `$(C_FLAGS) `$(INCLUDE) -o `$@ -C `$<

`$(LIB_BIN)/%.o: `$(LIBS_DIR)/%.cpp
`t@`"`$(CXX)`" `$(CXX_FLAGS) `$(INCLUDE) -o `$@ -C `$<

`$(LIB_BIN)/%.o: `$(LIBS_DIR)/%.S
`t@`"`$(CC)`" `$(S_FLAGS) `$(INCLUDE) -o `$@ -C `$<


#-------------------------------------------------------------------------------------------------------------------------------------------------
# Linking Targets
#-------------------------------------------------------------------------------------------------------------------------------------------------
`$(OUTPUT_ELF): `$(LIB_OBJ) `$(SRC_OBJ)
`t@`$(CC) `$(LD_FLAGS) -o `"`$@`" `$(SRC_OBJ) `$(LIB_OBJ) `$(LIBS)

%.lst: %.elf
`t@`$(OBJDUMP) -d -S --demangle --no-show-raw-insn --syms `"`$<`" > `"`$@`"

%.hex: %.elf
`t@`$(OBJCOPY) -O ihex -R.eeprom `"`$<`" `"`$@`""

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