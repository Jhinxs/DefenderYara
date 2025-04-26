
rule Trojan_BAT_Vidar_MBDD_MTB{
	meta:
		description = "Trojan:BAT/Vidar.MBDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {67 6b 66 66 66 66 00 67 64 64 64 66 66 64 73 64 68 66 73 73 66 64 67 68 00 66 68 66 73 64 73 64 66 73 66 66 68 66 64 64 66 68 68 73 00 68 73 66 66 66 } //1 歧晦晦最摤晤摦摳晨獳摦桧昀晨摳摳獦晦晨摤桦獨栀晳晦
		$a_01_1 = {6e 68 66 66 73 6b 64 67 73 66 6b 64 66 66 66 64 64 61 64 66 72 66 66 66 64 66 64 68 66 66 73 63 66 64 66 } //1 nhffskdgsfkdfffddadfrfffdfdhffscfdf
		$a_01_2 = {68 6b 67 66 66 66 67 73 64 64 66 66 66 64 68 68 64 64 72 66 64 61 66 64 64 73 73 68 63 66 } //1 hkgfffgsddfffdhhddrfdafddsshcf
		$a_01_3 = {73 67 66 68 6a 66 66 6b 66 66 66 67 64 68 6a 73 72 66 68 64 64 66 68 66 66 66 61 64 64 73 66 73 66 73 73 66 63 66 67 64 62 } //1 sgfhjffkfffgdhjsrfhddfhfffaddsfsfssfcfgdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}