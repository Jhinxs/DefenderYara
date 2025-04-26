
rule Backdoor_Win32_Farfli_E_dll{
	meta:
		description = "Backdoor:Win32/Farfli.E!dll,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 "
		
	strings :
		$a_03_0 = {7e 11 8a 04 32 3c 22 74 05 2c ?? 88 04 32 42 3b d1 7c ef 8b c6 5e c2 04 00 } //10
		$a_01_1 = {68 24 0c 0b 83 56 ff 15 } //5
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*5) >=15
 
}