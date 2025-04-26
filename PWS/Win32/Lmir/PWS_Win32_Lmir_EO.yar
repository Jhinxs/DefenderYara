
rule PWS_Win32_Lmir_EO{
	meta:
		description = "PWS:Win32/Lmir.EO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {70 79 63 71 2e 65 78 65 00 } //1
		$a_01_1 = {2d 3e 25 73 2c 25 73 2c 25 73 00 00 00 00 4c 61 73 74 4e 61 6d 65 00 } //1
		$a_01_2 = {63 61 6c 6c 20 73 65 6e 64 74 6f 2c 20 73 65 6e 64 20 64 61 74 61 20 74 6f 20 25 73 20 70 6f 72 74 3a 25 64 2c 6c 65 6e 3a 25 64 } //1 call sendto, send data to %s port:%d,len:%d
		$a_01_3 = {67 61 6d 65 69 64 3d 25 73 26 50 61 73 73 57 6f 72 64 3d 25 73 26 6b 65 79 3d 25 73 26 71 75 79 75 3d 25 73 26 6d 69 72 73 65 72 76 65 72 3d 25 73 26 63 6f 75 6e 74 3d 25 69 26 7a 74 3d 25 73 26 61 63 74 69 6f 6e 3d 73 75 62 6d 69 74 } //1 gameid=%s&PassWord=%s&key=%s&quyu=%s&mirserver=%s&count=%i&zt=%s&action=submit
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}