
rule Trojan_Win32_Dridex_BK_MTB{
	meta:
		description = "Trojan:Win32/Dridex.BK!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {49 4b 4b 49 61 6e 64 38 30 70 61 73 73 70 68 72 61 73 65 } //1 IKKIand80passphrase
		$a_01_1 = {71 61 65 6e 73 75 72 65 73 62 79 6c 65 61 73 74 53 65 70 74 65 6d 62 65 72 70 32 63 6f 6d 70 65 74 69 74 6f 72 73 } //1 qaensuresbyleastSeptemberp2competitors
		$a_01_2 = {32 39 59 62 6c 6f 67 67 65 72 73 50 6c 61 79 65 72 77 4c } //1 29YbloggersPlayerwL
		$a_01_3 = {48 42 68 63 72 69 74 69 63 69 73 6d 58 57 44 41 63 69 64 32 68 76 65 72 73 69 6f 6e 73 } //1 HBhcriticismXWDAcid2hversions
		$a_01_4 = {66 61 73 74 65 72 2e 57 61 6e 74 68 6f 6e 79 6a 36 36 36 36 36 36 66 72 6f 6d } //1 faster.Wanthonyj666666from
		$a_01_5 = {73 00 65 00 61 00 72 00 63 00 68 00 6e 00 65 00 77 00 79 00 6f 00 72 00 6b 00 77 00 69 00 74 00 68 00 69 00 6e 00 61 00 73 00 63 00 4e 00 42 00 34 00 } //1 searchnewyorkwithinascNB4
		$a_01_6 = {38 00 4f 00 73 00 74 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 62 00 61 00 72 00 50 00 72 00 65 00 73 00 62 00 79 00 74 00 65 00 72 00 69 00 61 00 6e 00 64 00 } //1 8OstabilitybarPresbyteriand
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}