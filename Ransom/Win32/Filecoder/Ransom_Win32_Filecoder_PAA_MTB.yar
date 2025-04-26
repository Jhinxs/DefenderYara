
rule Ransom_Win32_Filecoder_PAA_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 75 14 8b 02 89 84 9d bc fb ff ff 8b 45 fc 25 ?? ?? ?? ?? 89 02 8b 94 9d bc fb ff ff 03 c2 25 ?? ?? ?? ?? 79 07 48 0d ?? ?? ?? ?? 40 8b 75 18 8a 94 85 bc fb ff ff 8a 04 31 32 c2 88 04 31 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}