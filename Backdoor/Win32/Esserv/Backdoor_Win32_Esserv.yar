
rule Backdoor_Win32_Esserv{
	meta:
		description = "Backdoor:Win32/Esserv,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 01 00 00 00 85 c0 74 1d 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 68 80 4f 12 00 ff 15 ?? ?? ?? ?? eb da } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}