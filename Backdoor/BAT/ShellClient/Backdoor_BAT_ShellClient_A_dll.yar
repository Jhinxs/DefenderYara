
rule Backdoor_BAT_ShellClient_A_dll{
	meta:
		description = "Backdoor:BAT/ShellClient.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {04 14 1c 8d ?? 00 00 01 25 16 7e ?? 00 00 04 a2 25 17 02 a2 25 18 7e ?? 00 00 04 a2 25 19 28 ?? 00 00 06 a2 25 1a 28 ?? 00 00 06 a2 25 1b 03 2d 07 7e ?? 00 00 0a 2b 05 28 ?? 00 00 06 a2 14 28 ?? 00 00 0a 2a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}