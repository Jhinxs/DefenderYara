
rule Ransom_Win32_Genasom_CH{
	meta:
		description = "Ransom:Win32/Genasom.CH,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 25 73 2f 5f 72 65 71 2f 3f 74 79 70 65 3d 25 63 26 73 69 64 3d 25 64 26 73 77 3d } //1 http://%s/_req/?type=%c&sid=%d&sw=
		$a_01_1 = {50 43 20 48 65 61 6c 74 68 20 53 74 61 74 75 73 } //1 PC Health Status
		$a_01_2 = {26 6f 73 74 79 70 65 3d 25 64 26 6f 73 73 70 3d 25 64 26 6f 73 62 69 74 73 3d 25 64 26 6f 73 66 77 74 79 70 65 3d 25 64 26 6f 73 72 69 67 68 74 73 3d } //1 &ostype=%d&ossp=%d&osbits=%d&osfwtype=%d&osrights=
		$a_01_3 = {61 76 61 73 74 73 76 63 2e 65 78 65 } //1 avastsvc.exe
		$a_01_4 = {72 65 61 6c 2d 67 6f 6f 64 70 6f 72 6e 6f 2e 69 6e 66 6f } //1 real-goodporno.info
		$a_01_5 = {5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 44 00 61 00 74 00 61 00 5c 00 73 00 63 00 67 00 72 00 62 00 7a 00 62 00 77 00 2e 00 65 00 78 00 65 00 } //1 \Application Data\scgrbzbw.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}