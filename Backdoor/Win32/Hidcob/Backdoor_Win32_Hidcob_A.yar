
rule Backdoor_Win32_Hidcob_A{
	meta:
		description = "Backdoor:Win32/Hidcob.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {67 68 66 67 68 6a 75 79 75 66 67 64 67 66 74 72 } //1 ghfghjuyufgdgftr
		$a_01_1 = {71 34 35 74 79 75 36 68 67 76 68 69 37 5e 25 24 73 64 66 } //1 q45tyu6hgvhi7^%$sdf
		$a_01_2 = {6d 2a 5e 26 5e 67 68 66 67 65 34 77 65 72 } //1 m*^&^ghfge4wer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}