
rule Trojan_Win32_Zbot_BP_MTB{
	meta:
		description = "Trojan:Win32/Zbot.BP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {47 53 74 75 62 2e 65 78 65 } //1 GStub.exe
		$a_01_1 = {45 78 63 5c 44 65 73 6b 74 6f 70 5c 53 74 75 62 2e 65 78 65 } //1 Exc\Desktop\Stub.exe
		$a_01_2 = {44 00 65 00 6c 00 20 00 25 00 74 00 65 00 6d 00 70 00 25 00 5c 00 4d 00 65 00 6c 00 74 00 2e 00 62 00 61 00 74 00 20 00 2f 00 46 00 20 00 2f 00 51 00 } //1 Del %temp%\Melt.bat /F /Q
		$a_01_3 = {41 70 70 44 61 74 61 5c 4c 6f 63 61 6c 5c 54 65 6d 70 5c 52 61 72 53 46 58 30 } //1 AppData\Local\Temp\RarSFX0
		$a_01_4 = {6e 00 6f 00 74 00 20 00 69 00 6e 00 69 00 74 00 69 00 61 00 6c 00 69 00 7a 00 65 00 64 00 21 00 } //1 not initialized!
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}