
rule Trojan_Win32_BHO_CT_dll{
	meta:
		description = "Trojan:Win32/BHO.CT!dll,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {63 61 2d 70 75 62 2d 33 31 35 38 36 39 39 31 36 33 38 33 34 36 34 36 } //1 ca-pub-3158699163834646
		$a_01_1 = {5c 69 65 70 65 72 2e 74 6d 70 } //1 \ieper.tmp
		$a_01_2 = {6d 73 6b 64 6a 69 33 33 34 33 34 33 32 33 2e 63 6f 6d } //1 mskdji33434323.com
		$a_01_3 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 77 77 77 2e 78 78 78 2e 63 6f 6d } //1 Referer: http://www.xxx.com
		$a_01_4 = {25 73 5c 61 62 25 64 25 64 25 64 2e 74 6d 70 } //1 %s\ab%d%d%d.tmp
		$a_01_5 = {26 70 3d 68 74 74 70 25 33 41 2f 2f } //1 &p=http%3A//
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}