
rule Ransom_Win32_BlackMatter_PA_MTB{
	meta:
		description = "Ransom:Win32/BlackMatter.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {66 ad 66 85 c0 75 ?? 66 b8 ?? ?? 66 ab b8 ?? ?? ?? ?? 35 f8 9f 01 17 ab b8 ?? ?? ?? ?? 35 f8 9f 01 17 ab b8 ?? ?? ?? ?? 35 f8 9f 01 17 ab b8 ?? ?? ?? ?? 35 f8 9f 01 17 ab 66 33 c0 66 ab eb ?? 66 ab eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}