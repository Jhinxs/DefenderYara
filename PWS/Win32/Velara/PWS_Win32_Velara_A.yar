
rule PWS_Win32_Velara_A{
	meta:
		description = "PWS:Win32/Velara.A,SIGNATURE_TYPE_PEHSTR,06 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {56 00 61 00 6c 00 65 00 72 00 61 00 2e 00 76 00 62 00 73 00 } //1 Valera.vbs
		$a_01_1 = {67 00 2d 00 70 00 61 00 73 00 73 00 } //1 g-pass
		$a_01_2 = {43 61 6c 6c 20 53 65 6e 64 50 6f 73 74 28 22 73 6d 74 70 2e 6d 61 69 6c 2e 72 75 22 2c 22 65 62 65 74 2e 61 72 68 69 70 6f 76 61 40 6d 61 69 6c 2e 72 75 } //1 Call SendPost("smtp.mail.ru","ebet.arhipova@mail.ru
		$a_01_3 = {66 69 6c 65 20 6f 66 20 6f 70 65 6e 20 70 61 73 73 77 6f 72 64 20 4d 6f 7a 69 6c 61 } //1 file of open password Mozila
		$a_01_4 = {49 66 20 65 78 74 20 3d 20 22 43 6f 6f 6b 69 65 73 22 54 68 65 6e } //1 If ext = "Cookies"Then
		$a_01_5 = {46 6c 64 73 2e 49 74 65 6d 28 22 68 74 74 70 3a 2f 2f 73 63 68 65 6d 61 73 2e 6d 69 63 72 6f 73 6f 66 74 2e 63 6f 6d 2f 63 64 6f 2f 63 6f 6e 66 69 67 75 72 61 74 69 6f 6e 2f 73 65 6e 64 70 61 73 73 77 6f 72 64 22 29 3d } //1 Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword")=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}