
rule Trojan_Win32_LummaStealer_EB_MTB{
	meta:
		description = "Trojan:Win32/LummaStealer.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {41 64 64 2d 41 70 70 50 72 6f 76 69 73 69 6f 6e 65 64 50 61 63 6b 61 67 65 20 2d 6f 6e 6c 69 6e 65 20 2d 70 61 63 6b 61 67 65 70 61 74 68 } //1 Add-AppProvisionedPackage -online -packagepath
		$a_81_1 = {52 65 6d 6f 76 65 2d 41 70 70 50 61 63 6b 61 67 65 20 2d 41 6c 6c 55 73 65 72 73 20 2d 70 61 63 6b 61 67 65 } //1 Remove-AppPackage -AllUsers -package
		$a_81_2 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e 5c 46 65 61 74 75 72 65 43 6f 6e 74 72 6f 6c 5c 46 45 41 54 55 52 45 5f 42 52 4f 57 53 45 52 5f 45 4d 55 4c 41 54 49 4f 4e } //1 Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION
		$a_81_3 = {66 79 69 2f 42 6c 6f 67 74 69 6f 6e 2e 6d 73 69 } //1 fyi/Blogtion.msi
		$a_81_4 = {70 70 43 6d 64 4c 69 6e 65 3d 2f 51 4e 20 2f 6e 6f 72 65 73 74 61 72 74 } //1 ppCmdLine=/QN /norestart
		$a_81_5 = {44 6f 77 6e 6c 6f 61 64 46 6f 6c 64 65 72 3d 5b 41 70 70 44 61 74 61 46 6f 6c 64 65 72 5d 44 69 6e 6f } //1 DownloadFolder=[AppDataFolder]Dino
		$a_81_6 = {37 41 44 38 33 43 44 46 2d 41 42 32 42 2d 34 41 37 32 2d 41 32 30 45 2d 32 45 44 45 37 39 31 33 43 35 38 34 } //1 7AD83CDF-AB2B-4A72-A20E-2EDE7913C584
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}