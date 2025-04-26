
rule TrojanSpy_BAT_Logadat_A{
	meta:
		description = "TrojanSpy:BAT/Logadat.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4f 00 65 00 6d 00 50 00 65 00 72 00 69 00 6f 00 64 00 } //1 OemPeriod
		$a_01_1 = {43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //1 Chrome\User Data
		$a_01_2 = {40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 @gmail.com
		$a_01_3 = {5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \Start Menu\Programs\Startup\svchost.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}