
rule Trojan_Win32_Fakeantispypro{
	meta:
		description = "Trojan:Win32/Fakeantispypro,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {eb 02 46 46 66 83 3e 20 74 f8 0f b7 06 83 f8 61 74 37 83 f8 72 74 2b 83 f8 77 74 1f } //1
		$a_01_1 = {eb 01 46 80 3e 20 74 fa 8a 06 3c 61 74 39 3c 72 74 2c 3c 77 74 1f } //1
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 20 00 50 00 72 00 6f 00 5c 00 53 00 42 00 6c 00 6f 00 63 00 6b 00 65 00 72 00 } //1 SOFTWARE\AntiSpyware Pro\SBlocker
		$a_01_3 = {41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 20 00 50 00 72 00 6f 00 20 00 53 00 69 00 74 00 65 00 20 00 42 00 6c 00 6f 00 63 00 6b 00 65 00 72 00 20 00 42 00 75 00 74 00 74 00 6f 00 6e 00 } //1 AntiSpyware Pro Site Blocker Button
		$a_01_4 = {61 00 73 00 70 00 72 00 6f 00 70 00 75 00 72 00 63 00 68 00 2e 00 65 00 78 00 65 00 } //1 aspropurch.exe
		$a_01_5 = {41 00 53 00 50 00 72 00 6f 00 53 00 42 00 2e 00 64 00 6c 00 6c 00 } //1 ASProSB.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}
rule Trojan_Win32_Fakeantispypro_2{
	meta:
		description = "Trojan:Win32/Fakeantispypro,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {75 45 66 81 78 18 0b 01 75 3d b8 00 00 00 10 2b c8 51 e8 83 ff ff ff 59 85 c0 74 2b 8b 40 24 c1 e8 1f f7 d0 83 e0 01 c7 45 fc fe ff ff ff eb 20 8b 45 ec 8b 00 8b 00 33 c9 3d 05 00 00 c0 } //1
		$a_01_1 = {42 6c 61 6e 6b 41 63 74 69 76 65 58 43 74 72 6c } //1 BlankActiveXCtrl
		$a_01_2 = {42 6c 61 6e 6b 41 63 74 69 76 65 58 50 72 6f 70 50 61 67 65 } //1 BlankActiveXPropPage
		$a_01_3 = {5c 64 65 73 6b 74 6f 70 5c 74 72 75 6e 6b 5c 75 74 69 6c 73 5c 62 6c 61 6e 6b 61 63 74 69 76 65 78 5c 72 65 6c 65 61 73 65 5c 42 6c 61 6e 6b 41 63 74 69 76 65 58 } //1 \desktop\trunk\utils\blankactivex\release\BlankActiveX
		$a_01_4 = {42 6c 61 6e 6b 41 63 74 69 76 65 58 2e 4f 43 58 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}
rule Trojan_Win32_Fakeantispypro_3{
	meta:
		description = "Trojan:Win32/Fakeantispypro,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {80 bc 24 50 10 00 00 30 75 02 33 db 8d bc 24 52 10 00 00 57 e8 ?? ?? 00 00 83 c4 04 66 83 7c 24 4a 00 8b f8 75 54 } //1
		$a_03_1 = {83 fd e0 0f 87 ?? ?? 00 00 53 8b 1d ?? ?? 00 10 56 57 33 f6 39 35 ?? ?? 00 10 8b fd 75 18 e8 ?? ?? 00 00 6a 1e e8 ?? ?? 00 00 68 ff 00 00 00 e8 } //1
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 20 00 50 00 72 00 6f 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 } //1 SOFTWARE\AntiSpyware Pro\WindowController
		$a_01_3 = {41 00 53 00 70 00 79 00 50 00 72 00 6f 00 50 00 55 00 42 00 6c 00 6b 00 2e 00 64 00 6c 00 6c 00 } //1 ASpyProPUBlk.dll
		$a_01_4 = {41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 20 00 50 00 72 00 6f 00 2d 00 57 00 69 00 6e 00 64 00 6f 00 77 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 } //1 AntiSpyware Pro-WindowController
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}