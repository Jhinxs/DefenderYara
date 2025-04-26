
rule Backdoor_BAT_Nanocore_ABAG_MTB{
	meta:
		description = "Backdoor:BAT/Nanocore.ABAG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_01_1 = {49 73 4c 6f 67 67 69 6e 67 } //1 IsLogging
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_3 = {24 36 30 39 37 31 36 61 32 2d 64 65 64 39 2d 34 37 66 38 2d 62 64 65 63 2d 36 38 34 39 61 37 38 61 38 39 31 37 } //1 $609716a2-ded9-47f8-bdec-6849a78a8917
		$a_01_4 = {50 00 69 00 7a 00 7a 00 61 00 42 00 69 00 74 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 PizzaBit.Resources
		$a_01_5 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //1 download
		$a_01_6 = {72 00 65 00 64 00 5f 00 6c 00 6f 00 76 00 65 00 } //1 red_love
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}