export DRIVE=C
export CYGROOT=/cygdrive/c
if [ -x "$DRIVE/Program Files (x86)" ] ; then
    export PF="Program Files (x86)"
else
    export PF="Program Files"
fi
export SDKVER="v7.0A"
export VSVER="10.0"
ARCH=`./getarch`

export CommonProgramFiles="${DRIVE}:\${PF}\Common Files"
export ComSpec="${DRIVE}:\WINDOWS\system32\cmd.exe"
export DevEnvDir="${DRIVE}:\${PF}\Microsoft Visual Studio ${VSVER}\Common7\IDE"
export HOMEDRIVE="${DRIVE}:"
export INCLUDE="${DRIVE}:\\${PF}\\Microsoft Visual Studio ${VSVER}\\VC\\INCLUDE;${DRIVE}:\\${PF}\\Microsoft SDKs\\Windows\\${SDKVER}\\include"

if [ "$ARCH" = x86_64 ] ; then
    echo Configuring for 64 bit builds
    export LIB="${DRIVE}:\\${PF}\\Microsoft Visual Studio ${VSVER}\\VC\\LIB;${DRIVE}:\\${PF}\\Microsoft SDKs\\Windows\\${SDKVER}\\lib\64"
    export PATH="`pwd`/bin:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/Common7/IDE:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/VC/BIN/amd64:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/Common7/Tools:/cygdrive/${DRIVE}/WINDOWS/Microsoft.NET/Framework/v3.5:/cygdrive/${DRIVE}/WINDOWS/Microsoft.NET/Framework/v2.0.50727:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/VC/VCPackages:/cygdrive/${DRIVE}/${PF}/Microsoft SDKs/Windows/${SDKVER}/bin:/cygdrive/${DRIVE}/WINDOWS/system32:/cygdrive/${DRIVE}/WINDOWS:/cygdrive/${DRIVE}/bin:/cygdrive/${DRIVE}/usr/bin:/cygdrive/${DRIVE}/usr/local/bin:/usr/local/bin"
else 
    echo Configuring for 32 bit builds
    export LIB="${DRIVE}:\\${PF}\\Microsoft Visual Studio ${VSVER}\\VC\\LIB;${DRIVE}:\\${PF}\\Microsoft SDKs\\Windows\\${SDKVER}\\lib"
    export PATH="`pwd`/bin:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/Common7/IDE:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/VC/BIN:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/Common7/Tools:/cygdrive/${DRIVE}/WINDOWS/Microsoft.NET/Framework/v3.5:/cygdrive/${DRIVE}/WINDOWS/Microsoft.NET/Framework/v2.0.50727:/cygdrive/${DRIVE}/${PF}/Microsoft Visual Studio ${VSVER}/VC/VCPackages:/cygdrive/${DRIVE}/${PF}/Microsoft SDKs/Windows/${SDKVER}/bin:/cygdrive/${DRIVE}/WINDOWS/system32:/cygdrive/${DRIVE}/WINDOWS:/cygdrive/${DRIVE}/bin:/cygdrive/${DRIVE}/usr/bin:/cygdrive/${DRIVE}/usr/local/bin:/usr/local/bin"
fi

unalias mc 2>/dev/null
