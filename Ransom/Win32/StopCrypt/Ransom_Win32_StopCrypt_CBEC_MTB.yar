
rule Ransom_Win32_StopCrypt_CBEC_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.CBEC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b 45 dc 01 45 fc 8b 4d f8 8d 04 33 31 45 fc d3 ee 03 75 d8 81 3d } //1
		$a_03_1 = {31 75 fc 2b 7d fc 81 c3 ?? ?? ?? ?? ff 4d ec 89 7d f0 0f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}