
rule Trojan_BAT_Seraph_NFS_MTB{
	meta:
		description = "Trojan:BAT/Seraph.NFS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_03_0 = {28 0e 00 00 0a 20 ?? ?? ?? 00 8d ?? ?? ?? 01 25 d0 ?? ?? ?? 04 15 2d 20 26 26 6f ?? ?? ?? 0a 1c 2d 1d 26 07 28 ?? ?? ?? 0a 0c 08 16 08 8e 69 28 ?? ?? ?? 0a 08 0d } //5
		$a_00_1 = {06 02 6f 0c 00 00 0a 18 2d 03 26 de 0a 0b 2b fb } //5
		$a_01_2 = {69 64 79 76 74 } //1 idyvt
		$a_01_3 = {62 67 77 66 74 } //1 bgwft
	condition:
		((#a_03_0  & 1)*5+(#a_00_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=12
 
}