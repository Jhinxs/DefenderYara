
rule Trojan_Win32_Emotet_HK_svc{
	meta:
		description = "Trojan:Win32/Emotet.HK!svc,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 00 69 00 6e 00 44 00 65 00 66 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //1 WinDefService
		$a_01_1 = {63 3d 69 6e 73 74 61 6c 6c 65 64 } //1 c=installed
		$a_01_2 = {5c 73 65 74 75 70 2e 65 78 65 } //1 \setup.exe
		$a_03_3 = {68 bb 01 00 00 68 ?? ?? ?? 00 53 ff 15 ?? ?? ?? 00 8b f0 85 f6 74 } //1
		$a_03_4 = {6a 00 68 00 f7 04 84 6a 00 6a 00 68 ?? ?? ?? 00 68 ?? ?? ?? 00 8d 45 f4 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}