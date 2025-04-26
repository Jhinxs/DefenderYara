
rule Trojan_Win32_Farfli_EM_MTB{
	meta:
		description = "Trojan:Win32/Farfli.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5f 73 65 74 6d 62 63 70 } //1 _setmbcp
		$a_01_1 = {70 72 6f 67 72 61 6d 42 2e 65 78 65 } //1 programB.exe
		$a_01_2 = {43 00 68 00 37 00 44 00 65 00 6d 00 6f 00 36 00 2e 00 45 00 58 00 45 00 } //1 Ch7Demo6.EXE
		$a_01_3 = {43 72 65 61 74 65 54 68 72 65 61 64 } //1 CreateThread
		$a_01_4 = {34 37 2e 32 34 32 2e 38 39 2e 33 34 } //1 47.242.89.34
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Win32_Farfli_EM_MTB_2{
	meta:
		description = "Trojan:Win32/Farfli.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_01_0 = {46 2d 50 52 4f 54 2e 65 78 65 } //1 F-PROT.exe
		$a_01_1 = {61 76 67 61 75 72 64 2e 65 78 65 } //1 avgaurd.exe
		$a_01_2 = {73 70 69 64 65 72 6e 74 2e 65 78 65 } //1 spidernt.exe
		$a_01_3 = {54 72 6f 6a 61 6e 48 75 6e 74 65 72 2e 65 78 65 } //1 TrojanHunter.exe
		$a_01_4 = {51 55 48 4c 50 53 56 43 2e 45 58 45 } //1 QUHLPSVC.EXE
		$a_01_5 = {5b 43 4c 45 41 52 5d } //1 [CLEAR]
		$a_01_6 = {5b 42 41 43 4b 53 50 41 43 45 5d } //1 [BACKSPACE]
		$a_01_7 = {5b 44 45 4c 45 54 45 5d } //1 [DELETE]
		$a_01_8 = {5b 49 4e 53 45 52 54 5d } //1 [INSERT]
		$a_01_9 = {5b 4e 75 6d 20 4c 6f 63 6b 5d } //1 [Num Lock]
		$a_01_10 = {5b 44 6f 77 6e 5d } //1 [Down]
		$a_01_11 = {5b 52 69 67 68 74 5d } //1 [Right]
		$a_01_12 = {5b 4c 65 66 74 5d } //1 [Left]
		$a_01_13 = {77 77 77 2e 6a 69 6e 6a 69 6e 2e 63 6f 6d } //1 www.jinjin.com
		$a_01_14 = {46 55 43 4b 20 59 4f 55 } //1 FUCK YOU
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=15
 
}