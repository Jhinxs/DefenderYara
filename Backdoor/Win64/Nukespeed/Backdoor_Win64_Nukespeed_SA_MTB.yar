
rule Backdoor_Win64_Nukespeed_SA_MTB{
	meta:
		description = "Backdoor:Win64/Nukespeed.SA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2e 00 2e 00 08 00 00 "
		
	strings :
		$a_01_0 = {6d 6f 76 69 65 36 34 2e 64 6c 6c } //10 movie64.dll
		$a_01_1 = {43 6f 6f 6b 69 65 3a 20 5f 67 61 3d 25 73 25 30 32 64 25 64 25 64 25 30 32 64 25 73 3b 20 67 69 64 3d 25 73 25 30 32 64 25 64 25 30 33 64 25 73 } //10 Cookie: _ga=%s%02d%d%d%02d%s; gid=%s%02d%d%03d%s
		$a_01_2 = {47 41 31 2e 25 64 2e } //10 GA1.%d.
		$a_01_3 = {57 69 6e 48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 } //10 WinHttpSendRequest
		$a_01_4 = {64 72 75 6b 6f 6d } //5 drukom
		$a_01_5 = {54 72 61 6e 73 44 61 74 61 } //5 TransData
		$a_01_6 = {2f 74 6f 74 61 6c 2e 70 68 70 } //1 /total.php
		$a_01_7 = {2f 61 62 6f 75 74 2e 70 68 70 } //1 /about.php
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=46
 
}