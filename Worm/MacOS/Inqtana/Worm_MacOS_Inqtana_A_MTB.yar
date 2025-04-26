
rule Worm_MacOS_Inqtana_A_MTB{
	meta:
		description = "Worm:MacOS/Inqtana.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_00_0 = {49 6e 71 54 61 6e 61 48 61 6e 64 6c 65 72 2f 49 6e 71 54 61 6e 61 48 61 6e 64 6c 65 72 2e 6d } //1 InqTanaHandler/InqTanaHandler.m
		$a_00_1 = {2f 74 6d 70 2f 73 74 61 63 68 6c 69 75 } //1 /tmp/stachliu
		$a_00_2 = {49 66 20 79 6f 75 20 61 72 65 20 73 65 65 69 6e 67 20 74 68 69 73 20 74 68 65 6e 20 79 6f 75 20 61 72 65 20 70 77 6e 65 64 } //1 If you are seeing this then you are pwned
		$a_00_3 = {2e 2f 61 75 74 68 6f 70 65 6e 2d 43 46 5f 43 48 41 52 53 45 54 2e 70 6c 20 } //1 ./authopen-CF_CHARSET.pl 
		$a_00_4 = {2e 2f 46 61 69 6c 75 72 65 54 6f 4c 61 75 6e 63 68 2d 70 70 63 2e 70 6c } //1 ./FailureToLaunch-ppc.pl
		$a_00_5 = {2e 2f 65 78 63 70 6c 6f 69 74 } //1 ./excploit
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=4
 
}