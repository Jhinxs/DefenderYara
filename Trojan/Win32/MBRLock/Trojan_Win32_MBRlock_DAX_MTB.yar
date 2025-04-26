
rule Trojan_Win32_MBRlock_DAX_MTB{
	meta:
		description = "Trojan:Win32/MBRlock.DAX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {59 6f 75 72 20 64 69 73 6b 20 68 61 76 65 20 61 20 6c 6f 63 6b 21 50 6c 65 61 73 65 20 69 6e 70 75 74 20 74 68 65 20 75 6e 6c 6f 63 6b 20 70 61 73 73 77 6f 72 64 21 } //1 Your disk have a lock!Please input the unlock password!
		$a_01_1 = {40 5c 5c 2e 5c 5c 70 68 79 73 69 63 61 6c 64 72 69 76 65 30 } //1 @\\.\\physicaldrive0
		$a_01_2 = {53 68 75 74 64 6f 77 6e 2e 65 78 65 20 2d 73 20 2d 74 20 31 } //1 Shutdown.exe -s -t 1
		$a_01_3 = {6e 65 74 20 75 73 65 72 20 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 20 31 31 34 38 } //1 net user Administrator 1148
		$a_03_4 = {83 c4 1c 68 04 00 00 80 6a 00 68 ?? ?? ?? ?? 6a 00 6a 00 6a 00 68 02 00 00 00 bb ?? ?? 40 00 e8 ?? ?? 00 00 83 c4 1c } //1
		$a_03_5 = {8b 44 24 08 6a ff 50 ff 15 ?? ?? ?? ?? eb 10 8b 4c 24 08 68 e8 03 00 00 51 ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}