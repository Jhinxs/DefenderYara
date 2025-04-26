
rule Trojan_Win32_Disco_RE_MTB{
	meta:
		description = "Trojan:Win32/Disco.RE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {64 6f 6d 61 69 6e 20 3a 3d 20 22 6f 74 73 6f 73 65 72 76 65 72 2e 6f 74 73 6f 2e 73 70 61 63 65 } //1 domain := "otsoserver.otso.space
		$a_01_1 = {66 74 70 6c 6f 67 69 6e 20 3a 3d 20 22 35 36 68 37 34 68 6e 76 } //1 ftplogin := "56h74hnv
		$a_01_2 = {66 74 70 61 73 73 77 6f 72 64 20 3a 3d 20 22 39 36 34 37 35 69 6d 68 } //1 ftpassword := "96475imh
		$a_01_3 = {46 69 6c 65 41 70 70 65 6e 64 2c 20 25 79 61 72 6c 69 6b 73 64 61 74 61 25 2c 20 25 41 5f 41 70 70 44 61 74 61 25 5c 54 65 6d 70 6f 72 61 72 79 5c 79 61 72 6c 69 6b 73 64 61 74 61 2e 6c 6f 67 } //1 FileAppend, %yarliksdata%, %A_AppData%\Temporary\yarliksdata.log
		$a_01_4 = {41 5f 41 70 70 44 61 74 61 20 22 5c 54 65 6d 70 6f 72 61 72 79 5c 73 68 6f 74 61 2e 6a 70 67 } //1 A_AppData "\Temporary\shota.jpg
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}