
rule Trojan_Win32_Kryptik_AR_MTB{
	meta:
		description = "Trojan:Win32/Kryptik.AR!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {74 6f 6e 61 63 65 78 69 67 6f 79 61 73 65 20 6a 65 6c 6f 64 69 77 61 20 62 65 76 75 63 65 72 6f 6c 61 76 6f 20 73 61 6e 6f 78 6f 77 65 20 77 61 72 69 } //1 tonacexigoyase jelodiwa bevucerolavo sanoxowe wari
		$a_01_1 = {6a 61 64 61 6d 61 70 75 6b 6f 78 6f 6c 75 68 65 68 6f 76 65 77 69 63 61 20 6e 65 6b 6f 64 61 70 65 63 6f 72 75 77 65 62 69 67 75 20 79 61 6a 75 72 61 70 75 20 6d 65 76 75 20 7a 69 74 61 20 63 75 63 69 66 65 74 61 74 69 79 75 78 75 20 64 75 76 65 6d 61 20 63 61 74 65 68 6f 67 75 62 75 72 6f 78 69 68 65 72 61 79 6f 20 62 61 64 61 6d 61 74 6f 78 75 6e 69 6e 75 77 69 73 75 78 75 67 61 79 75 73 6f } //1 jadamapukoxoluhehovewica nekodapecoruwebigu yajurapu mevu zita cucifetatiyuxu duvema catehoguburoxiherayo badamatoxuninuwisuxugayuso
		$a_01_2 = {5a 69 66 6f 6b 6f 68 69 6e 65 63 65 62 75 20 6c 75 64 69 66 65 66 69 6d 75 63 61 73 65 79 65 20 78 61 77 69 63 69 77 6f 20 77 61 67 65 76 75 20 78 6f 6b 69 73 6f 63 69 20 64 61 76 6f 78 75 79 75 68 61 62 75 20 63 61 70 6f 70 75 6d 6f 72 75 6b 65 63 75 63 75 } //1 Zifokohinecebu ludifefimucaseye xawiciwo wagevu xokisoci davoxuyuhabu capopumorukecucu
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}