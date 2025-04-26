
rule Ransom_Win64_MagniberPacker_SK_MTB{
	meta:
		description = "Ransom:Win64/MagniberPacker.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {3c 3c 57 4b 15 ?? ?? ?? ?? 66 98 1b 6c 6c ?? 0b 5b ?? b4 ?? 41 6d 33 18 18 5f ?? 55 d3 c4 31 f0 3a 57 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}