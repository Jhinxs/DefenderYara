
rule Trojan_Win64_IcedID_FU_MTB{
	meta:
		description = "Trojan:Win64/IcedID.FU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_02_0 = {48 8b 8b e8 02 00 00 49 83 c0 02 48 8b 83 ?? ?? ?? ?? 48 81 f1 d2 36 00 00 48 89 48 18 49 83 eb 01 0f 85 } //10
		$a_01_1 = {70 47 55 41 59 56 46 78 62 4e } //1 pGUAYVFxbN
	condition:
		((#a_02_0  & 1)*10+(#a_01_1  & 1)*1) >=11
 
}