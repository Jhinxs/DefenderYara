
rule Trojan_Win32_Bunitu_PVM_MTB{
	meta:
		description = "Trojan:Win32/Bunitu.PVM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_02_0 = {ba 11 7f 01 00 8b ff c7 05 ?? ?? ?? ?? 00 00 00 00 01 05 ?? ?? ?? ?? 8b ff 8b 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 89 02 5f 5d c3 } //2
	condition:
		((#a_02_0  & 1)*2) >=2
 
}