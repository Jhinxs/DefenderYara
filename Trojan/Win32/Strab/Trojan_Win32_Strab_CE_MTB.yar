
rule Trojan_Win32_Strab_CE_MTB{
	meta:
		description = "Trojan:Win32/Strab.CE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 45 fc 8b 45 fc 8a 0c 30 8b 15 [0-04] 88 0c 16 } //2
		$a_01_1 = {3d 60 4b da 26 7f 0c 40 3d b6 ad 81 5b 0f 8c } //2
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}