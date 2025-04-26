
rule TrojanDownloader_Win32_Zlob_AMU{
	meta:
		description = "TrojanDownloader:Win32/Zlob.AMU,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_03_0 = {53 4f 46 54 57 41 52 45 20 49 4e 53 54 41 4c 4c 41 54 49 4f 4e 3a 90 05 05 01 20 43 6f 6d 70 6f 6e 65 6e 74 73 20 62 75 6e 64 6c 65 64 20 77 69 74 68 20 6f 75 72 20 73 6f 66 74 77 61 72 65 20 6d 61 79 90 05 05 01 20 66 65 65 64 90 05 05 01 20 62 61 63 6b 20 74 6f 20 4c 69 63 65 6e 73 6f 72 } //2
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 41 70 70 6c 69 63 61 74 69 6f 6e 73 00 } //2 潓瑦慷敲䅜灰楬慣楴湯s
		$a_01_2 = {4e 75 6c 6c 73 6f 66 74 20 49 6e 73 74 61 6c 6c 20 53 79 73 74 65 6d } //2 Nullsoft Install System
		$a_01_3 = {5c 6d 67 72 74 2e 64 6c 6c } //1 \mgrt.dll
		$a_01_4 = {5c 77 64 73 63 6b 2e 64 6c 6c } //1 \wdsck.dll
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=7
 
}