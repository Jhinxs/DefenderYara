
rule Trojan_Win32_Copak_KAE_MTB{
	meta:
		description = "Trojan:Win32/Copak.KAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {39 ff 74 01 ea 31 02 81 c2 ?? ?? ?? ?? 09 de 39 fa 75 ed } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}