
rule Trojan_Win32_OfficeProcMsiexecAbuse_A{
	meta:
		description = "Trojan:Win32/OfficeProcMsiexecAbuse.A,SIGNATURE_TYPE_CMDHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {6d 00 73 00 69 00 65 00 78 00 65 00 63 00 [0-30] 68 00 74 00 74 00 70 00 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}