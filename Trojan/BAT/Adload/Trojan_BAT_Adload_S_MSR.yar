
rule Trojan_BAT_Adload_S_MSR{
	meta:
		description = "Trojan:BAT/Adload.S!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {43 3a 5c 55 73 65 72 73 5c 41 79 6d 65 6e 54 4c 49 4c 49 5c 73 6f 75 72 63 65 5c 72 65 70 6f 73 5c 57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 31 5c 57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 31 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c [0-10] 2e 70 64 62 } //1
		$a_01_1 = {2f 00 56 00 45 00 52 00 59 00 53 00 49 00 4c 00 45 00 4e 00 54 00 20 00 2f 00 70 00 3d 00 } //1 /VERYSILENT /p=
		$a_01_2 = {48 61 64 68 72 69 6e 61 44 6f 73 73 } //1 HadhrinaDoss
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_01_4 = {75 00 70 00 73 00 2e 00 65 00 78 00 65 00 } //1 ups.exe
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}