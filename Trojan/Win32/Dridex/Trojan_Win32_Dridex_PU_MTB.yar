
rule Trojan_Win32_Dridex_PU_MTB{
	meta:
		description = "Trojan:Win32/Dridex.PU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0b 00 00 "
		
	strings :
		$a_81_0 = {44 45 78 72 6c 6f 72 65 72 69 6e 63 6c 75 64 65 64 47 72 6f 67 6c 65 57 45 } //1 DExrlorerincludedGrogleWE
		$a_81_1 = {74 68 61 74 50 6e 65 77 } //1 thatPnew
		$a_81_2 = {69 61 6c 6c 6f 77 73 6c 61 74 65 72 } //1 iallowslater
		$a_81_3 = {66 6f 72 74 6f 46 6f 74 68 72 72 64 46 6c 61 73 68 73 68 61 72 65 } //1 fortoFothrrdFlashshare
		$a_81_4 = {41 64 62 6c 6f 63 6b 66 65 61 74 75 72 65 73 66 33 36 25 75 34 42 4b 41 } //1 Adblockfeaturesf36%u4BKA
		$a_81_5 = {62 72 6f 77 73 65 72 75 6e 64 65 72 46 65 62 72 75 61 72 79 6d 74 65 73 74 62 } //1 browserunderFebruarymtestb
		$a_81_6 = {42 45 63 6f 6e 6f 6d 69 63 6d 6f 64 65 74 79 70 65 73 } //1 BEconomicmodetypes
		$a_81_7 = {6d 61 72 6b 47 6f 6f 67 6c 65 5a 6c 6f 67 73 61 } //1 markGoogleZlogsa
		$a_81_8 = {43 68 72 6f 6d 65 63 6f 72 65 6c 65 61 73 65 } //1 Chromecorelease
		$a_81_9 = {41 64 64 55 73 65 72 73 54 6f 45 6e 63 72 79 70 74 65 64 46 69 6c 65 } //1 AddUsersToEncryptedFile
		$a_02_10 = {21 c0 8b 4d ?? 8b [0-06] 89 [0-06] 8a [0-02] 0f [0-07] 29 ?? 8b [0-03] 89 [0-02] 89 [0-03] e8 [0-04] 8b [0-03] 01 ?? 88 [0-08] 8b [0-02] 8a [0-06] 8b [0-06] 88 } //10
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_02_10  & 1)*10) >=10
 
}