
rule Adware_Win32_Peapoon{
	meta:
		description = "Adware:Win32/Peapoon,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {65 3a 5c 75 70 64 61 74 65 63 68 65 63 6b 5c 55 70 64 61 74 65 43 68 65 63 6b 5c 72 65 6c 65 61 73 65 5c 55 70 64 61 74 65 43 68 65 63 6b 2e 70 64 62 } //1 e:\updatecheck\UpdateCheck\release\UpdateCheck.pdb
		$a_01_1 = {2f 2f 25 73 2f 69 6e 73 74 61 6c 6c 3f 75 69 64 3d 25 73 26 61 69 64 3d 25 64 26 7a 3d 25 64 26 73 75 63 63 65 73 73 3d 31 26 66 77 72 69 74 65 3d 31 } //1 //%s/install?uid=%s&aid=%d&z=%d&success=1&fwrite=1
		$a_01_2 = {2f 2f 25 73 2f 75 70 64 61 74 65 3f 61 3d 25 73 26 62 3d 25 64 26 7a 3d 25 64 26 76 3d 25 64 } //1 //%s/update?a=%s&b=%d&z=%d&v=%d
		$a_01_3 = {75 70 64 2e 36 76 6d 39 34 2e 63 6f 6d } //1 upd.6vm94.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
rule Adware_Win32_Peapoon_2{
	meta:
		description = "Adware:Win32/Peapoon,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 "
		
	strings :
		$a_03_0 = {6a 02 6a 00 6a 01 6a 00 6a 04 8d 8d ?? ?? ff ff 56 c7 85 ?? ?? ff ff ?? ?? ?? ?? 89 8d ?? ?? ff ff ff d7 56 ff 15 ?? ?? ?? ?? 8d b5 ?? ?? ff ff e8 } //1
		$a_01_1 = {43 00 6f 00 75 00 70 00 6f 00 6f 00 6e 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 00 00 } //1
		$a_01_2 = {3c 73 2a 3f 68 65 61 64 2e 2a 3f 3e 00 } //1
		$a_01_3 = {43 00 6f 00 75 00 70 00 6f 00 6f 00 6e 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 36 00 34 00 00 00 } //1
		$a_01_4 = {6e 65 74 66 69 6c 74 65 72 36 34 00 } //1 敮晴汩整㙲4
		$a_01_5 = {68 74 74 70 3a 2f 2f 69 2e 63 6f 6d 70 75 63 72 75 73 68 2e 63 6f 6d 2f 69 2e 70 68 70 } //1 http://i.compucrush.com/i.php
		$a_01_6 = {5c 6e 66 72 65 67 64 72 76 2e 65 78 65 20 6e 65 74 66 69 6c 74 65 72 36 34 00 } //1
		$a_00_7 = {53 6f 66 74 77 61 72 65 5c 63 6f 75 70 6f 6f 6e 5c 63 6f 75 70 6f 6f 6e } //1 Software\coupoon\coupoon
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1) >=3
 
}