
rule Ransom_Win32_StopCrypt_PBS_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.PBS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 e8 89 45 ?? 8b 45 ?? 01 45 ?? 8b 7d ?? c1 e7 04 03 7d ?? 33 7d ?? 81 3d ?? ?? ?? ?? 21 01 00 00 75 [0-20] 33 7d ?? 89 35 ?? ?? ?? ?? 89 7d ?? 8b 45 ?? 29 45 ?? 8b 45 ?? 29 45 ?? ff 4d ?? 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}