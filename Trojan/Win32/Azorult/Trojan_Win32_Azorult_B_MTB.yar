
rule Trojan_Win32_Azorult_B_MTB{
	meta:
		description = "Trojan:Win32/Azorult.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 d0 23 ca 0f b7 95 ?? ?? ?? ?? 33 d1 66 89 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}