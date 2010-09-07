export DRIVE=C
export CYGROOT=/cygdrive/c
export PF="Program Files (x86)"
export SDKVER="v7.0A"
export VSVER="10.0"

export CommonProgramFiles="${DRIVE}:\${PF}\Common Files"
export ComSpec="${DRIVE}:\WINDOWS\system32\cmd.exe"
export DevEnvDir="${DRIVE}:\${PF}\Microsoft Visual Studio ${VSVER}\Common7\IDE"
export Framework35Version="v3.5"
export FrameworkDir="${DRIVE}:\WINDOWS\Microsoft.NET\Framework"
export FrameworkVersion="v2.0.50727"
export HOMEDRIVE="${DRIVE}:"
export INCLUDE="${DRIVE}:\${PF}\Microsoft Visual Studio ${VSVER}\VC\INCLUDE;${DRIVE}:\${PF}\Microsoft SDKs\Windows\${SDKVER}\include"
export LIB="${DRIVE}:\${PF}\Microsoft Visual Studio ${VSVER}\VC\LIB;${DRIVE}:\${PF}\Microsoft SDKs\Windows\${SDKVER}\lib"
export LIBPATH="${DRIVE}:\WINDOWS\Microsoft.NET\Framework\v3.5;${DRIVE}:\WINDOWS\Microsoft.NET\Framework\v2.0.50727;${DRIVE}:\${PF}\Microsoft Visual Studio ${VSVER}\VC\LIB;"

export PATH="`pwd`/bin:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/Common7/IDE:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/VC/BIN:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/Common7/Tools:/cygdrive/${DRIVE}/WINDOWS/Microsoft.NET/Framework/v3.5:/cygdrive/${DRIVE}/WINDOWS/Microsoft.NET/Framework/v2.0.50727:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/VC/VCPackages:/cygdrive/${DRIVE}/${PF}/Microsoft SDKs/Windows/${SDKVER}/bin:/cygdrive/${DRIVE}/WINDOWS/system32:/cygdrive/${DRIVE}/WINDOWS:/cygdrive/${DRIVE}/bin:/cygdrive/${DRIVE}/usr/bin:/cygdrive/${DRIVE}/usr/local/bin:/usr/local/bin"

export PATHEXT=".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH"
export PROCESSOR_ARCHITECTURE="x86"
export PROCESSOR_IDENTIFIER="x86 Family 6 Model 13 Stepping 6, GenuineIntel"
export PROCESSOR_LEVEL="6"
export PROCESSOR_REVISION="0d06"
export ProgramFiles="${DRIVE}:\${PF}"
export SystemDrive="${DRIVE}:"
export SystemRoot="${DRIVE}:/WINDOWS"
export VCINSTALLDIR="${DRIVE}:\${PF}/Microsoft Visual Studio ${VSVER}/VC"
export VS100COMNTOOLS="${DRIVE}:\${PF}/Microsoft Visual Studio ${VSVER}/Common7/Tools/"
#export VS80COMNTOOLS="${DRIVE}:\${PF}/Microsoft Visual Studio 8/Common7/Tools/"
#export VS90COMNTOOLS="${DRIVE}:\${PF}/Microsoft Visual Studio ${VSVER}/Common7/Tools/"
export VSINSTALLDIR="${DRIVE}:\${PF}/Microsoft Visual Studio ${VSVER}"
export windir="${DRIVE}:\WINDOWS"
export WindowsSdkDir="${DRIVE}:\${PF}/Microsoft SDKs/Windows/${SDKVER}/"

unalias mc 2>/dev/null
