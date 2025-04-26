
rule Ransom_Win64_BlackBytePacker_SA_MTB{
	meta:
		description = "Ransom:Win64/BlackBytePacker.SA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 f7 e8 d1 fa 8b c2 c1 e8 ?? 03 d0 41 8b c4 66 2b c2 0f b7 c0 6b c8 ?? 66 41 ?? ?? 41 ?? ?? 66 41 ?? ?? ?? 41 83 f8 ?? 7c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}