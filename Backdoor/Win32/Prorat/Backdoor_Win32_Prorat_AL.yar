
rule Backdoor_Win32_Prorat_AL{
	meta:
		description = "Backdoor:Win32/Prorat.AL,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {33 33 31 20 50 61 73 73 77 6f 72 64 20 72 65 71 75 69 72 65 64 20 66 6f 72 20 25 73 2e } //1 331 Password required for %s.
		$a_01_1 = {54 43 75 73 74 6f 6d 53 6d 74 70 43 6c 69 65 6e 74 } //1 TCustomSmtpClient
		$a_01_2 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c } //1 MAIL FROM:<
		$a_01_3 = {54 4c 4e 43 4c 31 32 32 2c 47 5a 47 } //1 TLNCL122,GZG
		$a_01_4 = {53 4f 46 54 57 41 52 4d 69 72 6e 50 73 6f 66 6e 5c 65 74 57 69 6e 64 73 20 4e 54 54 50 72 6e 69 70 6e } //1 SOFTWARMirnPsofn\etWinds NTTPrnipn
		$a_01_5 = {2f 2f 2f 20 4f 75 74 6c 6f 6f 6b 20 41 61 64 64 72 65 73 42 6f 6f 6b } //1 /// Outlook AaddresBook
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}