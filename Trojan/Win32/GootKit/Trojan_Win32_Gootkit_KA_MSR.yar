
rule Trojan_Win32_Gootkit_KA_MSR{
	meta:
		description = "Trojan:Win32/Gootkit.KA!MSR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {63 72 61 63 6b 6d 65 6f 6c 6f 6c 6f } //2 crackmeololo
		$a_01_1 = {2d 2d 76 77 78 79 7a } //1 --vwxyz
		$a_01_2 = {52 00 75 00 6e 00 50 00 72 00 65 00 53 00 65 00 74 00 75 00 70 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 73 00 } //1 RunPreSetupCommands
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}