
rule Trojan_BAT_Androm_D_MTB{
	meta:
		description = "Trojan:BAT/Androm.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 74 00 65 00 6d 00 70 00 75 00 72 00 69 00 2e 00 6f 00 72 00 67 00 2f 00 44 00 61 00 74 00 61 00 53 00 65 00 74 00 } //1 http://tempuri.org/DataSet
		$a_01_1 = {58 00 46 00 4a 00 31 00 62 00 6c 00 42 00 63 00 55 00 6e 00 56 00 75 00 55 00 46 00 78 00 76 00 59 00 6d 00 70 00 63 00 52 00 47 00 56 00 69 00 64 00 57 00 64 00 63 00 55 00 6e 00 56 00 75 00 55 00 43 00 35 00 77 00 5a 00 47 00 49 00 } //1 XFJ1blBcUnVuUFxvYmpcRGVidWdcUnVuUC5wZGI
		$a_00_2 = {06 07 06 07 91 02 07 1f 10 5d 91 61 28 65 00 00 0a 9c } //1
		$a_01_3 = {5a 57 4d 32 4d 7a 4a 6d 5a 44 6b 74 4d 54 59 35 4e 43 30 30 5a 6a 52 68 4c 54 6c 69 5a 6d 59 74 5a 6a 49 77 4e 6a 41 77 5a 54 4d 33 4f 54 67 78 } //1 ZWM2MzJmZDktMTY5NC00ZjRhLTliZmYtZjIwNjAwZTM3OTgx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}