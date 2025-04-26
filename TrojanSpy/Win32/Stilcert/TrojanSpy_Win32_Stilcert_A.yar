
rule TrojanSpy_Win32_Stilcert_A{
	meta:
		description = "TrojanSpy:Win32/Stilcert.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {31 31 38 2e 31 39 33 2e 32 34 32 2e 37 33 } //1 118.193.242.73
		$a_01_1 = {5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4e 50 4b 49 5c } //1 \Program Files\NPKI\
		$a_01_2 = {5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 6c 6f 67 69 2e 74 78 74 } //1 \Program Files\logi.txt
		$a_01_3 = {63 73 6a 2e 7a 69 70 } //1 csj.zip
		$a_01_4 = {46 74 70 50 75 74 46 69 6c 65 41 } //1 FtpPutFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}