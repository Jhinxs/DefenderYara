
rule Trojan_Win32_Socgolsh_YAD{
	meta:
		description = "Trojan:Win32/Socgolsh.YAD,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {80 7c 07 01 69 75 ?? 66 81 7c 07 03 74 75 75 ?? 81 7c 07 09 6c 6f 63 00 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}