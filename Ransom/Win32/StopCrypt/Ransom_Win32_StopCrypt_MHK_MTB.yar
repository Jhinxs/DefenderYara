
rule Ransom_Win32_StopCrypt_MHK_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.MHK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 4d ec 33 c8 89 45 f4 2b f9 25 [0-04] 8b c7 8d 4d f4 e8 [0-04] 8b 4d d4 8b c7 c1 e8 [0-01] 89 45 ec 8d 45 ec } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}