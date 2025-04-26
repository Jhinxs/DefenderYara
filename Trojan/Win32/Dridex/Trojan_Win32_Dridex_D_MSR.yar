
rule Trojan_Win32_Dridex_D_MSR{
	meta:
		description = "Trojan:Win32/Dridex.D!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {4a 77 45 45 50 4e 64 2d 2d 34 31 55 36 40 79 59 5f 32 59 2e 57 44 48 36 47 47 2a 36 52 62 52 2e 70 64 62 } //4 JwEEPNd--41U6@yY_2Y.WDH6GG*6RbR.pdb
		$a_01_1 = {74 00 72 00 69 00 63 00 6b 00 73 00 74 00 68 00 69 00 73 00 61 00 6e 00 64 00 74 00 6f 00 75 00 66 00 61 00 69 00 6c 00 65 00 64 00 3b 00 6c 00 69 00 6e 00 65 00 58 00 } //1 tricksthisandtoufailed;lineX
		$a_01_2 = {64 00 38 00 70 00 65 00 72 00 74 00 68 00 72 00 65 00 65 00 2e 00 54 00 72 00 69 00 6e 00 69 00 74 00 79 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 61 00 73 00 74 00 61 00 6b 00 69 00 6e 00 67 00 } //1 d8perthree.Trinityenabledastaking
		$a_01_3 = {35 4f 4f 6d 6e 69 62 6f 78 74 68 65 70 6e 65 65 64 73 6f 72 65 70 75 74 61 74 69 6f 6e 62 79 46 } //1 5OOmniboxthepneedsoreputationbyF
		$a_01_4 = {62 69 67 74 69 74 73 73 74 61 72 77 61 72 73 6b 63 68 61 6e 6e 65 6c 47 66 6f 72 32 30 31 30 2e 31 35 38 79 } //1 bigtitsstarwarskchannelGfor2010.158y
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}