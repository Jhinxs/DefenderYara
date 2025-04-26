
rule Trojan_Win32_Strab_CC_MTB{
	meta:
		description = "Trojan:Win32/Strab.CC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {8d 0c 10 8b 85 [0-04] 33 c1 31 45 fc 81 3d [0-04] a3 01 00 00 75 1a } //2
		$a_01_1 = {81 f9 4a 79 02 0f 7f 0d 41 81 f9 b2 78 6c 6d 0f 8c } //2
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}