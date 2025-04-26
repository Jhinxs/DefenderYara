
rule Trojan_Win32_ShipUp_GNW_MTB{
	meta:
		description = "Trojan:Win32/ShipUp.GNW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 07 d2 ed 66 81 fc ee 14 0b d4 8b 57 04 66 0f be c8 c1 f1 f5 8d bf ?? ?? ?? ?? 66 f7 d1 d3 e1 36 89 10 80 ed 1f 8d b6 ?? ?? ?? ?? 0b cb 8b 0e 33 cb c1 c1 03 e9 } //10
		$a_01_1 = {2e 76 6d 70 32 } //1 .vmp2
		$a_01_2 = {6e 37 50 4e 64 68 68 74 65 53 2f 43 } //1 n7PNdhhteS/C
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}