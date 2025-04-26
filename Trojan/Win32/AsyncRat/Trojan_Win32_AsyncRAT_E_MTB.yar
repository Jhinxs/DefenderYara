
rule Trojan_Win32_AsyncRAT_E_MTB{
	meta:
		description = "Trojan:Win32/AsyncRAT.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {80 2f 88 8b ?? ?? ?? ?? ?? 80 07 49 ?? ?? ?? ?? ?? ?? f6 2f 47 e2 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}