
rule Trojan_Win32_Stealliam_A{
	meta:
		description = "Trojan:Win32/Stealliam.A,SIGNATURE_TYPE_PEHSTR,24 00 24 00 08 00 00 "
		
	strings :
		$a_01_0 = {77 65 6e 2f 72 62 2e 6d 6f 63 2e 6f 6f 68 61 79 2e 73 65 69 74 69 63 6f 65 67 2f 2f 3a 70 74 74 68 } //10 wen/rb.moc.oohay.seiticoeg//:ptth
		$a_01_1 = {53 75 61 20 6d 65 6e 73 61 67 65 6d 20 66 6f 69 20 65 6e 76 69 61 64 61 20 } //10 Sua mensagem foi enviada 
		$a_01_2 = {5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 55 73 65 72 20 41 67 65 6e 74 5c 50 6f 73 74 20 50 6c 61 74 66 6f 72 6d } //10 \Software\Microsoft\Windows\CurrentVersion\Internet Settings\User Agent\Post Platform
		$a_01_3 = {6d 6f 63 2e 6c 69 61 6d 74 6f 68 2e 77 77 77 } //1 moc.liamtoh.www
		$a_01_4 = {48 6e 61 76 69 67 61 74 65 } //1 Hnavigate
		$a_01_5 = {68 67 69 4c 6e 69 61 4d 74 63 61 74 6e 6f 43 } //1 hgiLniaMtcatnoC
		$a_01_6 = {74 68 67 69 4c 65 67 61 73 73 65 4d 64 6e 65 53 } //1 thgiLegasseMdneS
		$a_01_7 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //5 SOFTWARE\Borland\Delphi\RTL
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*5) >=36
 
}