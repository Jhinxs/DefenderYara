
rule Ransom_Win64_ContiCrypt_PG_MTB{
	meta:
		description = "Ransom:Win64/ContiCrypt.PG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {33 c0 8a 04 38 41 b8 ?? ?? ?? ?? 32 c3 80 c3 ?? 88 01 0f b6 c3 48 ff c1 84 db 41 0f 44 c0 ff c2 8a d8 8b c2 48 3b 44 24 ?? 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}