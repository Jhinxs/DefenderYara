
rule TrojanProxy_Win32_Tarayt_A{
	meta:
		description = "TrojanProxy:Win32/Tarayt.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 61 63 65 34 39 35 36 65 2d 37 33 36 65 2d 31 31 65 36 2d 39 35 38 34 2d 64 37 31 36 35 63 61 35 39 31 64 66 } //1 User-Agent: ace4956e-736e-11e6-9584-d7165ca591df
		$a_01_1 = {47 45 54 20 2f 70 69 78 65 6c 69 64 32 2f 73 32 73 2e 70 68 70 3f } //1 GET /pixelid2/s2s.php?
		$a_01_2 = {61 64 76 3d 4e 65 74 77 6f 72 6b 4d 61 6e 61 67 65 72 26 73 68 6f 72 74 6e 61 6d 65 3d 4e 65 74 77 6f 72 6b 4d 61 6e 61 67 65 72 26 6b 65 79 3d } //1 adv=NetworkManager&shortname=NetworkManager&key=
		$a_01_3 = {4d 33 52 65 64 53 65 53 4b 76 37 35 59 51 35 46 4e 33 33 37 34 54 57 74 71 39 52 75 72 65 6b 7a 26 74 69 6d 65 3d 25 75 } //1 M3RedSeSKv75YQ5FN3374TWtq9Rurekz&time=%u
		$a_01_4 = {61 56 6f 00 6d 74 64 6c 6c 2e 64 6c 6c 00 } //1
		$a_01_5 = {41 54 59 4e 4b 41 4a 50 33 30 5a 39 41 51 00 } //1
		$a_01_6 = {79 65 55 21 48 6c 71 4d 50 43 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}