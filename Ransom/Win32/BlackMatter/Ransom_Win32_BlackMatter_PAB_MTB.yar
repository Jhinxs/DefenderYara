
rule Ransom_Win32_BlackMatter_PAB_MTB{
	meta:
		description = "Ransom:Win32/BlackMatter.PAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b 4d 08 8b 55 0c 81 31 ?? ?? ?? ?? f7 11 83 c1 04 4a 75 f2 } //2
		$a_02_1 = {8b f9 2b cf 0f b6 16 03 c2 46 03 d8 4f 75 f5 bf ?? ?? ?? ?? 81 f7 ?? ?? ?? ?? 33 d2 f7 f7 52 8b c3 33 d2 f7 f7 8b da 58 85 c9 75 c5 } //2
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2) >=4
 
}