
rule Ransom_Win32_StopCrypt_SLA_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.SLA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c2 c1 e0 ?? 03 45 ?? 8d 0c 16 33 c1 89 4d ?? 8b ca c1 e9 ?? 03 4d ?? 89 45 ?? 33 c8 89 4d ?? 8b 45 ?? 01 05 ?? ?? ?? ?? 8b 45 ?? 29 45 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}