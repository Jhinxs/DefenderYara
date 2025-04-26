
rule Trojan_Win32_Qakbot_GY_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.GY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_02_0 = {56 83 e6 00 0b b3 ?? ?? ?? ?? 83 e1 00 31 f1 5e fc f3 a4 52 c7 04 e4 ff ff 0f 00 59 83 bb ?? ?? ?? ?? 00 75 } //10
		$a_02_1 = {83 c4 04 81 e0 00 00 00 00 8f 45 f8 33 45 f8 8f 83 ?? ?? ?? ?? 21 8b ?? ?? ?? ?? 01 83 ?? ?? ?? ?? 83 bb ?? ?? ?? ?? 00 75 ?? ff 93 ?? ?? ?? ?? 50 8f 45 fc ff 75 fc 8f 83 ?? ?? ?? ?? ff a3 ?? ?? ?? ?? e8 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10) >=20
 
}
rule Trojan_Win32_Qakbot_GY_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.GY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {64 64 66 6e 62 64 66 6e 64 6e 64 64 6e 64 66 64 62 64 66 } //1 ddfnbdfndnddndfdbdf
		$a_01_1 = {73 64 66 73 64 66 73 64 } //1 sdfsdfsd
		$a_01_2 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_01_3 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllUnregisterServer
		$a_01_4 = {70 69 6e 6e 69 67 72 61 64 61 } //1 pinnigrada
		$a_01_5 = {73 6f 70 68 6f 6d 6f 72 69 63 61 6c 6c 79 } //1 sophomorically
		$a_01_6 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}