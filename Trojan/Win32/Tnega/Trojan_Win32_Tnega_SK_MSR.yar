
rule Trojan_Win32_Tnega_SK_MSR{
	meta:
		description = "Trojan:Win32/Tnega.SK!MSR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {62 32 65 70 72 6f 67 72 61 6d 73 68 6f 72 74 6e 61 6d 65 } //1 b2eprogramshortname
		$a_01_1 = {62 32 65 69 6e 63 66 69 6c 65 28 } //1 b2eincfile(
		$a_01_2 = {62 32 65 69 6e 63 66 69 6c 65 70 61 74 68 } //1 b2eincfilepath
		$a_01_3 = {76 69 65 62 6f 62 70 73 70 61 5f 61 75 74 6f 6c 6f 67 6f 6e 5f 61 64 6d 69 6e 2e 62 61 74 } //1 viebobpspa_autologon_admin.bat
		$a_01_4 = {61 75 74 6f 6c 6f 67 6f 6e 2e 65 78 65 20 21 76 69 65 62 6f 62 70 73 70 61 20 45 55 20 6f 64 65 41 35 53 76 78 54 7a 73 44 61 37 6b 77 71 44 71 36 4b 36 58 72 38 42 75 6b 68 61 20 2d 61 63 63 65 70 74 65 75 6c 61 } //1 autologon.exe !viebobpspa EU odeA5SvxTzsDa7kwqDq6K6Xr8Bukha -accepteula
		$a_01_5 = {6e 65 74 20 6c 6f 63 61 6c 67 72 6f 75 70 20 61 64 6d 69 6e 69 73 74 72 61 74 6f 72 73 20 65 75 5c 21 76 69 65 62 6f 62 70 73 70 61 20 2f 61 64 64 } //1 net localgroup administrators eu\!viebobpspa /add
		$a_01_6 = {43 3a 5c 54 45 4d 50 5c 32 38 39 30 2e 74 6d 70 5c 76 69 65 62 6f 62 70 73 70 61 5f 61 75 74 6f 6c 6f 67 6f 6e 5f 61 64 6d 69 6e 2e 62 61 74 } //1 C:\TEMP\2890.tmp\viebobpspa_autologon_admin.bat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}