
rule Trojan_Win32_Dridex_RF_MTB{
	meta:
		description = "Trojan:Win32/Dridex.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_81_0 = {47 6f 6f 67 6c 65 54 68 65 33 4f 6e 64 35 44 48 73 6d 61 6c 6c } //1 GoogleThe3Ond5DHsmall
		$a_81_1 = {42 35 41 56 38 6e 6c 61 75 6e 63 68 65 64 68 65 6c 70 6d 65 63 72 57 69 6e 64 6f 77 73 } //1 B5AV8nlaunchedhelpmecrWindows
		$a_81_2 = {6b 70 59 72 74 68 69 73 74 61 5a 62 65 66 6f 72 65 73 } //1 kpYrthistaZbefores
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}