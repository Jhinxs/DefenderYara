
rule Trojan_Win32_RedLine_RDD_MTB{
	meta:
		description = "Trojan:Win32/RedLine.RDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {c6 45 eb 05 33 c9 88 4d eb 0f b6 55 eb 83 fa 03 74 62 8b 45 c0 8a 88 ?? ?? ?? ?? 88 4d bf 0f b6 4d bf 8b 45 c0 33 d2 f7 75 b8 } //2
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
		$a_01_2 = {6b 65 72 6e 65 6c 33 32 } //1 kernel32
		$a_01_3 = {6d 61 69 6e 2e 70 64 62 } //1 main.pdb
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}