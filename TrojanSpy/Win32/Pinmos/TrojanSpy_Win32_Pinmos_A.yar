
rule TrojanSpy_Win32_Pinmos_A{
	meta:
		description = "TrojanSpy:Win32/Pinmos.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 07 00 00 "
		
	strings :
		$a_00_0 = {61 62 65 32 38 36 39 66 2d 39 62 34 37 2d 34 63 64 39 2d 61 33 35 38 2d 63 32 32 39 30 34 64 62 61 37 66 37 } //1 abe2869f-9b47-4cd9-a358-c22904dba7f7
		$a_00_1 = {43 72 79 70 74 55 6e 70 72 6f 74 65 63 74 44 61 74 61 } //1 CryptUnprotectData
		$a_00_2 = {5c 47 6f 6f 67 6c 65 5c 43 68 72 6f 6d 65 5c 55 73 65 72 20 44 61 74 61 5c 44 65 66 61 75 6c 74 5c 4c 6f 67 69 6e 20 44 61 74 61 } //1 \Google\Chrome\User Data\Default\Login Data
		$a_00_3 = {6d 6f 6e 69 74 6f 72 3f 73 69 64 3d } //1 monitor?sid=
		$a_00_4 = {61 66 66 69 6c 69 61 74 } //1 affiliat
		$a_00_5 = {6c 6f 67 69 6e 2e 69 63 71 2e 63 6f 6d } //1 login.icq.com
		$a_01_6 = {ff 46 0c 8b 45 f8 8b 08 85 c9 74 12 8b c1 33 d2 52 50 8b 46 04 } //4
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*4) >=9
 
}