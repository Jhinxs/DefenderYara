
rule HackTool_Win32_KeyGen_VI_MTB{
	meta:
		description = "HackTool:Win32/KeyGen.VI!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {48 4b 4c 4d 5c 53 59 53 54 45 4d 5c 54 6f 6b 65 6e 73 5c 4b 65 72 6e 65 6c 2c 20 4b 65 72 6e 65 6c 2d 50 72 6f 64 75 63 74 49 6e 66 6f 2c 20 25 4e 65 77 53 6b 75 25 } //1 HKLM\SYSTEM\Tokens\Kernel, Kernel-ProductInfo, %NewSku%
		$a_01_1 = {48 4b 4c 4d 5c 53 59 53 54 45 4d 5c 54 6f 6b 65 6e 73 5c 4b 65 72 6e 65 6c 2c 20 53 65 63 75 72 69 74 79 2d 53 50 50 2d 47 65 6e 75 69 6e 65 4c 6f 63 61 6c 53 74 61 74 75 73 } //1 HKLM\SYSTEM\Tokens\Kernel, Security-SPP-GenuineLocalStatus
		$a_01_2 = {25 00 64 00 69 00 72 00 25 00 5c 00 67 00 61 00 74 00 68 00 65 00 72 00 6f 00 73 00 73 00 74 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //1 %dir%\gatherosstate.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}