
rule Trojan_Win32_Trickbot_STB_{
	meta:
		description = "Trojan:Win32/Trickbot.STB!!Trickbot.STB,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {10 36 34 00 00 4c 64 72 41 63 63 65 73 73 52 65 73 6f 75 72 63 65 00 00 00 4c 64 72 46 69 6e 64 52 65 73 6f 75 72 63 65 5f 55 00 00 00 6e 74 64 6c 6c 2e 64 6c 6c 00 00 00 43 3a 5c 57 69 6e 64 6f 77 73 5c 6e 6f 74 65 70 61 64 2e 65 78 65 00 } //1
		$a_00_1 = {53 68 6f 77 54 69 6d 65 36 34 2e 65 78 65 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 桓睯楔敭㐶攮數䐀汬敒楧瑳牥敓癲牥
		$a_03_2 = {fd ff ff 8b 54 24 18 8d 4c 24 14 51 52 53 e8 ?? fe ff ff 83 [0-10] ff d3 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}