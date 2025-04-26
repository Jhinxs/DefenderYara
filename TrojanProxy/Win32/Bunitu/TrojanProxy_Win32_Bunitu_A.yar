
rule TrojanProxy_Win32_Bunitu_A{
	meta:
		description = "TrojanProxy:Win32/Bunitu.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {68 73 76 63 68 33 d2 8f 05 ?? ?? ?? 10 68 6f 73 74 2e 8f 05 ?? ?? ?? 10 68 65 78 65 00 48 8f 05 ?? ?? ?? 10 c9 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}