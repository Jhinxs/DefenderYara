
rule Trojan_Win64_Malgent_NM_MTB{
	meta:
		description = "Trojan:Win64/Malgent.NM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {e8 6f fc ff ff 8a d8 8b 0d ?? ?? ?? ?? 83 f9 01 0f 84 1d 01 00 00 85 c9 75 4a c7 05 e8 61 05 00 ?? ?? ?? ?? 48 8d 15 a1 f9 02 00 48 8d 0d ?? ?? ?? ?? e8 f1 5a 01 } //5
		$a_01_1 = {73 64 73 64 73 64 73 64 73 2e 70 64 62 } //1 sdsdsdsds.pdb
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}