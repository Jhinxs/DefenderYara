
rule Trojan_BAT_Redline_ABGQ_MTB{
	meta:
		description = "Trojan:BAT/Redline.ABGQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {2b 1d 12 03 2b 1c 2b 21 07 02 07 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a de 20 08 2b e0 28 ?? ?? ?? 0a 2b dd 06 2b dc } //2
		$a_01_1 = {4e 00 70 00 6e 00 7a 00 69 00 6a 00 75 00 73 00 70 00 76 00 68 00 67 00 66 00 71 00 71 00 67 00 6a 00 2e 00 46 00 67 00 66 00 76 00 6d 00 79 00 66 00 71 00 69 00 73 00 69 00 7a 00 69 00 75 00 } //1 Npnzijuspvhgfqqgj.Fgfvmyfqisiziu
		$a_01_2 = {55 00 65 00 68 00 62 00 73 00 75 00 61 00 6a 00 79 00 66 00 62 00 64 00 74 00 63 00 } //1 Uehbsuajyfbdtc
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}