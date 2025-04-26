
rule Trojan_Win32_Glupteba_GMF_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.GMF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 ea 31 0a 81 c2 04 00 00 00 39 fa ?? ?? c3 81 ee ?? ?? ?? ?? 89 f3 39 db } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}