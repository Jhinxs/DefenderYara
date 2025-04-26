
rule Trojan_Win32_Price_A{
	meta:
		description = "Trojan:Win32/Price.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_00_0 = {66 69 6c 65 2e 73 70 79 6d 65 64 69 63 2e 63 6f 2e 6b 72 2f 61 72 63 68 69 76 65 2f 43 61 62 55 73 65 2e 64 6c 6c } //1 file.spymedic.co.kr/archive/CabUse.dll
		$a_00_1 = {61 78 2e 74 68 65 70 72 69 63 65 2e 63 6f 2e 6b 72 2f 61 72 63 68 69 76 65 2f 73 76 72 63 61 63 68 65 5f 6d 69 6e 69 2e 63 61 62 } //1 ax.theprice.co.kr/archive/svrcache_mini.cab
		$a_00_2 = {66 69 6c 65 2e 73 65 61 72 63 68 73 70 79 2e 63 6f 2e 6b 72 2f 61 72 63 68 69 76 65 2f 53 65 61 72 63 68 50 61 63 6b 4d 69 6e 69 2e 64 6c 6c } //1 file.searchspy.co.kr/archive/SearchPackMini.dll
		$a_00_3 = {61 78 2e 74 68 65 70 72 69 63 65 2e 63 6f 2e 6b 72 } //1 ax.theprice.co.kr
		$a_00_4 = {61 78 2e 73 70 79 6d 65 64 69 63 2e 63 6f 2e 6b 72 } //1 ax.spymedic.co.kr
		$a_00_5 = {61 78 2e 73 65 61 72 63 68 73 70 79 2e 63 6f 2e 6b 72 } //1 ax.searchspy.co.kr
		$a_01_6 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
		$a_01_7 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_00_8 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 41 } //1 CreateDirectoryA
		$a_00_9 = {46 69 6e 64 4e 65 78 74 46 69 6c 65 41 } //1 FindNextFileA
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=10
 
}