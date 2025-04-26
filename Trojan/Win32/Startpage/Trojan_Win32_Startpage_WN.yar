
rule Trojan_Win32_Startpage_WN{
	meta:
		description = "Trojan:Win32/Startpage.WN,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {66 69 6c 65 3a 2f 2f 43 3a 5c 41 6e 74 69 2d 4b 41 56 2e 65 78 65 } //1 file://C:\Anti-KAV.exe
		$a_03_1 = {39 31 64 64 2e 69 6e 66 6f 3a 31 31 38 38 2f ?? 2e 68 74 6d 6c 3f 63 69 64 3d } //1
		$a_01_2 = {33 30 30 2a 33 30 30 68 74 74 70 3a 2f 2f 62 66 66 2e 39 31 64 64 2e 69 6e 66 6f 3a 31 31 38 38 2f 71 71 33 30 30 2e 68 74 6d 3f } //1 300*300http://bff.91dd.info:1188/qq300.htm?
		$a_01_3 = {7c 32 35 30 2a 32 32 30 68 74 74 70 3a 2f 2f 62 66 66 2e 39 31 64 64 2e 69 6e 66 6f 3a 31 31 38 38 2f 67 67 32 2e 68 74 6d 3f } //1 |250*220http://bff.91dd.info:1188/gg2.htm?
		$a_01_4 = {7c 32 35 30 2a 32 35 30 68 74 74 70 3a 2f 2f 62 66 66 2e 39 31 64 64 2e 69 6e 66 6f 3a 31 31 38 38 2f 67 6d 2e 68 74 6d 3f } //1 |250*250http://bff.91dd.info:1188/gm.htm?
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}