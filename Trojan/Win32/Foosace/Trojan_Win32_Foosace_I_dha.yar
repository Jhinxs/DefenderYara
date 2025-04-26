
rule Trojan_Win32_Foosace_I_dha{
	meta:
		description = "Trojan:Win32/Foosace.I!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {36 00 00 00 c7 05 ?? ?? ?? ?? 2c 00 00 00 c7 05 ?? ?? ?? ?? 40 00 00 00 c7 05 ?? ?? ?? ?? f8 00 00 00 } //1
		$a_00_1 = {67 53 68 61 72 65 64 49 6e 66 6f 00 75 00 73 00 65 00 72 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 } //1 卧慨敲䥤普ouser32.dll
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}