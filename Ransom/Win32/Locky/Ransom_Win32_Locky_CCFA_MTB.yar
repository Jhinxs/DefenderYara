
rule Ransom_Win32_Locky_CCFA_MTB{
	meta:
		description = "Ransom:Win32/Locky.CCFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 85 e4 fe ff ff 03 85 ?? fe ff ff 0f be 08 33 8d ?? fe ff ff 8b 95 ?? fe ff ff 03 95 ?? fe ff ff 88 0a eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}