
rule Trojan_Win32_ArkeiStealer_MG_MTB{
	meta:
		description = "Trojan:Win32/ArkeiStealer.MG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {70 6f 77 65 72 73 68 65 6c 6c 20 2d 69 6e 70 75 74 66 6f 72 6d 61 74 20 6e 6f 6e 65 20 2d 6f 75 74 70 75 74 66 6f 72 6d 61 74 20 6e 6f 6e 65 20 2d 4e 6f 6e 49 6e 74 65 72 61 63 74 69 76 65 20 2d 43 6f 6d 6d 61 6e 64 20 41 64 64 2d 4d 70 50 72 65 66 65 72 65 6e 63 65 20 2d 45 78 63 6c 75 73 69 6f 6e 50 61 74 68 } //1 powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath
		$a_81_1 = {68 74 74 70 3a 2f 2f 68 73 69 65 6e 73 2e 78 79 7a } //1 http://hsiens.xyz
		$a_81_2 = {61 64 64 49 6e 73 74 61 6c 6c 2e 70 68 70 } //1 addInstall.php
		$a_81_3 = {61 64 64 49 6e 73 74 61 6c 6c 49 6d 70 72 65 73 73 69 6f 6e 2e 70 68 70 } //1 addInstallImpression.php
		$a_81_4 = {6d 79 69 70 2e 70 68 70 } //1 myip.php
		$a_81_5 = {26 6f 6e 61 6d 65 5b 5d 3d 6c 69 68 } //1 &oname[]=lih
		$a_81_6 = {26 6f 6e 61 6d 65 5b 5d 3d 44 65 72 } //1 &oname[]=Der
		$a_81_7 = {26 6f 6e 61 6d 65 5b 5d 3d 64 69 72 } //1 &oname[]=dir
		$a_81_8 = {26 6f 6e 61 6d 65 5b 5d 3d 79 6f 75 } //1 &oname[]=you
		$a_81_9 = {26 6f 6e 61 6d 65 5b 5d 3d 75 6c 74 } //1 &oname[]=ult
		$a_81_10 = {26 6f 6e 61 6d 65 5b 5d 3d 47 43 6c } //1 &oname[]=GCl
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=11
 
}