
rule Backdoor_BAT_Bladabindi_OS_bit{
	meta:
		description = "Backdoor:BAT/Bladabindi.OS!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 00 6d 00 7a 00 61 00 56 00 41 00 52 00 } //1 hmzaVAR
		$a_01_1 = {38 00 32 00 2e 00 31 00 33 00 37 00 2e 00 32 00 35 00 35 00 2e 00 35 00 36 00 } //1 82.137.255.56
		$a_01_2 = {3c 00 2f 00 48 00 41 00 4d 00 5a 00 41 00 5f 00 44 00 45 00 4c 00 49 00 4d 00 49 00 54 00 45 00 52 00 5f 00 53 00 54 00 4f 00 50 00 3e 00 } //1 </HAMZA_DELIMITER_STOP>
		$a_01_3 = {53 76 68 6f 73 74 36 34 2e 48 6d 7a 61 00 48 6d 7a 61 50 61 63 6b 65 74 } //1 癓潨瑳㐶䠮穭a浈慺慐正瑥
		$a_01_4 = {53 76 68 6f 73 74 36 34 2e 55 74 69 6c 69 74 79 } //1 Svhost64.Utility
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}