@ECHO OFF
SET DXC="C:\unreal\UE_5.3\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\unreal\UE_5.3\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T ps_6_6 -E Main -Fc SlateElementPixelShader.d3dasm -Fo SlateElementPixelShader.dxil SlateElementPixelShader
:END
PAUSE
