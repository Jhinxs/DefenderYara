
rule Ransom_Win64_MagniberPacker_SL_MTB{
	meta:
		description = "Ransom:Win64/MagniberPacker.SL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {f2 b1 f7 7c ?? 4c 87 e4 eb ?? 66 c9 33 89 ?? ?? ?? ?? e1 ?? 34 ?? 13 e1 79 ?? 4c 8b d1 eb ?? d1 05 ?? ?? ?? ?? da 2c 2d ?? ?? ?? ?? 74 ?? 02 2e 2c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}