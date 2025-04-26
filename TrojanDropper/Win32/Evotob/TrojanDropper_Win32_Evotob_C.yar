
rule TrojanDropper_Win32_Evotob_C{
	meta:
		description = "TrojanDropper:Win32/Evotob.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {24 24 24 53 65 63 75 72 65 20 55 41 50 } //1 $$$Secure UAP
		$a_01_1 = {4b 42 33 30 30 30 30 36 31 } //1 KB3000061
		$a_03_2 = {3d 00 10 00 00 74 ?? 3d 00 20 00 00 72 ?? 3d 00 30 00 00 73 ?? 43 eb ?? 3d 00 30 00 00 72 ?? 6a 02 eb ?? 3d 00 40 00 00 72 ?? 6a 03 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2) >=3
 
}