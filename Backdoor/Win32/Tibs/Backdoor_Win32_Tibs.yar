
rule Backdoor_Win32_Tibs{
	meta:
		description = "Backdoor:Win32/Tibs,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_01_0 = {74 69 62 73 3a 2f 2f 63 6f 6e 6e 65 63 74 } //2 tibs://connect
		$a_01_1 = {4f 6c 65 61 63 63 2e 64 6c 6c } //1 Oleacc.dll
		$a_01_2 = {54 65 73 74 20 44 6f 77 6e 6c 6f 61 64 } //1 Test Download
		$a_01_3 = {68 74 74 70 3a 2f 2f 64 69 72 65 63 74 70 6c 75 67 69 6e 2e 63 6f 6d 2f 64 69 61 6c 65 72 73 2f } //2 http://directplugin.com/dialers/
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2) >=6
 
}
rule Backdoor_Win32_Tibs_2{
	meta:
		description = "Backdoor:Win32/Tibs,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 4c 6f 63 61 6c 65 73 } //1 Software\Borland\Delphi\Locales
		$a_01_1 = {54 42 69 44 69 4d 6f 64 65 } //1 TBiDiMode
		$a_01_2 = {50 6c 65 61 73 65 20 77 61 69 74 20 77 68 69 6c 65 20 77 65 20 70 72 65 70 61 72 65 20 74 68 65 20 70 6c 75 67 69 6e } //1 Please wait while we prepare the plugin
		$a_01_3 = {54 68 61 6e 6b 20 79 6f 75 20 66 6f 72 20 63 68 6f 6f 73 69 6e 67 20 74 6f 20 62 65 20 6f 6e 20 6f 75 72 20 77 65 62 20 73 69 74 65 } //1 Thank you for choosing to be on our web site
		$a_01_4 = {54 49 42 53 42 52 57 } //1 TIBSBRW
		$a_01_5 = {74 00 69 00 62 00 73 00 3a 00 2f 00 2f 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 } //2 tibs://connect
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*2) >=6
 
}
rule Backdoor_Win32_Tibs_3{
	meta:
		description = "Backdoor:Win32/Tibs,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 68 65 72 65 20 61 70 70 65 61 72 73 20 74 6f 20 62 65 20 6e 6f 20 6d 6f 64 65 6d 20 69 6e 73 74 61 6c 6c 65 64 20 6f 6e 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 } //1 There appears to be no modem installed on your computer
		$a_01_1 = {74 69 62 73 79 73 74 65 6d 73 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 62 6c 6f 63 6b 65 64 2e } //2 tibsystems.com/cgi-bin/blocked.
		$a_01_2 = {44 69 61 6c 69 6e 67 20 61 6c 72 65 61 64 79 20 69 6e 20 70 72 6f 67 72 65 73 73 } //1 Dialing already in progress
		$a_01_3 = {54 68 65 20 57 65 62 20 53 69 74 65 20 79 6f 75 20 61 72 65 20 61 62 6f 75 74 20 74 6f 20 65 6e 74 65 72 20 69 73 20 61 6e 20 41 44 55 4c 54 20 53 49 54 45 20 61 6e 64 20 61 73 20 73 75 63 68 20 79 6f 75 20 4d 55 53 54 20 62 65 20 6f 76 65 72 20 31 38 20 6f 72 20 6f 76 65 72 20 74 68 65 20 61 67 65 20 } //2 The Web Site you are about to enter is an ADULT SITE and as such you MUST be over 18 or over the age 
		$a_01_4 = {77 77 77 2e 64 69 61 6c 65 72 61 64 6d 69 6e 2e 63 6f 6d } //2 www.dialeradmin.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=7
 
}