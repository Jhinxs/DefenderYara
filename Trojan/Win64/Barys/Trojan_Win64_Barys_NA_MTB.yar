
rule Trojan_Win64_Barys_NA_MTB{
	meta:
		description = "Trojan:Win64/Barys.NA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {48 8d 1d 3b b9 01 00 48 8d 3d ?? ?? ?? ?? eb 12 48 8b 03 48 85 c0 74 06 ff 15 c4 50 00 00 48 83 c3 08 } //5
		$a_01_1 = {67 7a 77 65 6f 78 } //1 gzweox
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}