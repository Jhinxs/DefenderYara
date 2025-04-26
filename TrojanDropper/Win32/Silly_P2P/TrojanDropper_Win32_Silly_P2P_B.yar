
rule TrojanDropper_Win32_Silly_P2P_B{
	meta:
		description = "TrojanDropper:Win32/Silly_P2P.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 30 39 66 32 33 34 30 38 31 38 35 31 31 64 33 39 36 66 36 61 61 66 38 34 34 63 37 65 33 32 35 } //1 d09f2340818511d396f6aaf844c7e325
		$a_01_1 = {35 32 46 32 36 30 30 32 33 30 35 39 34 35 34 31 38 37 41 46 38 32 36 41 33 43 30 37 41 46 32 41 } //1 52F260023059454187AF826A3C07AF2A
		$a_01_2 = {3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //1 :\autorun.inf
		$a_01_3 = {2e 63 6f 6d 2f 75 6c 2e 68 74 6d } //1 .com/ul.htm
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}