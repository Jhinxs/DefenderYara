
rule Trojan_Win32_Tnega_ADJ_MTB{
	meta:
		description = "Trojan:Win32/Tnega.ADJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {70 6f 77 65 72 73 68 65 6c 6c 20 2d 69 6e 70 75 74 66 6f 72 6d 61 74 20 6e 6f 6e 65 20 2d 6f 75 74 70 75 74 66 6f 72 6d 61 74 20 6e 6f 6e 65 20 2d 4e 6f 6e 49 6e 74 65 72 61 63 74 69 76 65 20 2d 43 6f 6d 6d 61 6e 64 20 41 64 64 2d 4d 70 50 72 65 66 65 72 65 6e 63 65 20 2d 45 78 63 6c 75 73 69 6f 6e 50 61 74 68 } //1 powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath
		$a_81_1 = {72 65 70 6f 72 74 5f 65 72 72 6f 72 2e 70 68 70 3f 6b 65 79 3d 31 32 35 34 37 38 38 32 34 35 31 35 41 44 4e 78 75 32 63 63 62 77 65 26 6d 73 67 3d 4e 6f 2d 45 78 65 73 2d 46 6f 75 6e 64 2d 54 6f 2d 52 75 6e } //1 report_error.php?key=125478824515ADNxu2ccbwe&msg=No-Exes-Found-To-Run
		$a_81_2 = {68 74 74 70 3a 2f 2f 73 6f 72 6e 78 2e 78 79 7a } //1 http://sornx.xyz
		$a_81_3 = {6d 79 69 70 2e 70 68 70 } //1 myip.php
		$a_81_4 = {61 64 64 49 6e 73 74 61 6c 6c 2e 70 68 70 3f 6b 65 79 3d 31 32 35 34 37 38 38 32 34 35 31 35 41 44 4e 78 75 32 63 63 62 77 65 26 69 70 3d 26 6f 69 64 3d 31 32 } //1 addInstall.php?key=125478824515ADNxu2ccbwe&ip=&oid=12
		$a_81_5 = {61 64 64 49 6e 73 74 61 6c 6c 49 6d 70 72 65 73 73 69 6f 6e 2e 70 68 70 3f 6b 65 79 3d 31 32 35 34 37 38 38 32 34 35 31 35 41 44 4e 78 75 32 63 63 62 77 65 26 69 70 3d 26 6f 69 64 3d 31 32 } //1 addInstallImpression.php?key=125478824515ADNxu2ccbwe&ip=&oid=12
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}