
rule Backdoor_Win32_Pahador_gen_ABI{
	meta:
		description = "Backdoor:Win32/Pahador.gen!ABI,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0a 00 10 00 00 "
		
	strings :
		$a_01_0 = {63 65 6c 6c 70 61 64 64 69 6e 67 3d 22 30 22 20 63 65 6c 6c 73 70 61 63 69 6e 67 3d 22 31 22 3e 3c 74 72 3e 3c 74 64 20 62 67 63 6f 6c 6f 72 3d 22 77 68 69 74 65 22 3e 3c 66 6f 6e 74 20 73 69 7a 65 3d 22 32 22 20 63 6f 6c 6f 72 3d 22 23 34 34 35 41 37 44 22 3e } //1 cellpadding="0" cellspacing="1"><tr><td bgcolor="white"><font size="2" color="#445A7D">
		$a_01_1 = {3c 63 65 6e 74 65 72 3e 3c 61 20 68 72 65 66 3d 22 68 74 74 70 3a 2f 2f 77 77 77 2e 76 73 6b 2e 31 30 30 2e 63 6f 6d 2e 70 6c 2f 66 61 71 2e 68 74 6d 6c 22 3e 20 46 61 51 20 3c 2f 61 3e } //1 <center><a href="http://www.vsk.100.com.pl/faq.html"> FaQ </a>
		$a_01_2 = {3c 61 3e 3c 69 3e 47 6f 64 7a 69 6e 61 3a 20 } //1 <a><i>Godzina: 
		$a_00_3 = {53 59 53 54 45 4d 5c 43 6f 6e 74 72 6f 6c 53 65 74 30 30 31 5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 41 75 74 68 6f 72 69 7a 65 64 41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 4c 69 73 74 } //1 SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List
		$a_01_4 = {3c 61 20 68 72 65 66 3d 22 68 74 74 70 3a 2f 2f 77 77 77 2e 76 73 6b 2e 31 30 30 2e 63 6f 6d 2e 70 6c 2f 66 6f 72 6d 75 6c 61 72 7a 2e 68 74 6d 6c 22 3e 5a 67 6c 6f 73 20 62 6c 61 64 3c 2f 61 3e } //1 <a href="http://www.vsk.100.com.pl/formularz.html">Zglos blad</a>
		$a_01_5 = {3c 74 61 62 6c 65 20 61 6c 69 67 6e 3d 22 63 65 6e 74 65 72 22 20 77 69 64 74 68 3d 22 31 30 30 25 22 20 62 6f 72 64 65 72 3d 22 30 22 20 68 65 69 67 68 74 3d 22 30 22 20 62 67 63 6f 6c 6f 72 3d 22 23 78 78 78 78 78 22 } //1 <table align="center" width="100%" border="0" height="0" bgcolor="#xxxxx"
		$a_01_6 = {3c 68 31 3e 20 5a 61 77 61 72 74 6f 73 63 20 6c 6f 67 61 3a 20 3c 2f 68 31 3e } //1 <h1> Zawartosc loga: </h1>
		$a_01_7 = {63 65 6c 6c 70 61 64 64 69 6e 67 3d 22 30 22 } //1 cellpadding="0"
		$a_01_8 = {74 65 6d 70 73 74 2e 65 78 65 } //1 tempst.exe
		$a_01_9 = {3c 66 6f 6e 74 20 63 6f 6c 6f 72 3d 22 23 33 33 33 33 39 39 22 3e 3c 62 3e 4e 69 65 20 6d 6f 7a 6e 61 20 6f 74 77 6f 72 7a 79 63 20 73 63 68 6f 77 6b 61 2e 3c 2f 62 3e 3c 2f 66 6f 6e 74 3e 3c 62 72 3e } //1 <font color="#333399"><b>Nie mozna otworzyc schowka.</b></font><br>
		$a_01_10 = {63 65 6c 6c 73 70 61 63 69 6e 67 3d 22 30 22 3e 3c 74 72 3e 3c 74 64 20 62 67 63 6f 6c 6f 72 3d 22 77 68 69 74 65 22 3e 3c 66 6f 6e 74 20 73 69 7a 65 3d 22 32 22 20 63 6f 6c 6f 72 3d 22 23 34 34 35 41 37 44 22 3e } //1 cellspacing="0"><tr><td bgcolor="white"><font size="2" color="#445A7D">
		$a_01_11 = {3c 66 6f 6e 74 20 63 6f 6c 6f 72 3d 22 23 33 33 33 33 39 39 22 3e 3c 62 3e 54 65 6b 73 74 20 77 20 73 63 68 6f 77 6b 75 3a 20 } //1 <font color="#333399"><b>Tekst w schowku: 
		$a_01_12 = {41 62 79 20 75 7a 79 73 6b 61 63 20 6c 69 73 74 65 20 70 6f 6c 65 63 65 } //1 Aby uzyskac liste polece
		$a_01_13 = {3c 62 72 3e 3c 62 3e 5b 20 41 6b 74 79 77 6e 65 20 6f 6b 6e 6f 3a 20 3c 69 3e } //1 <br><b>[ Aktywne okno: <i>
		$a_01_14 = {3e 5b 3c 69 3e 20 50 75 6c 70 69 74 3c 2f 69 3e 5d 3c 2f 62 3e 3c 62 72 3e } //1 >[<i> Pulpit</i>]</b><br>
		$a_01_15 = {3c 62 72 3e 3c 62 3e 5b 3c 69 3e 20 50 75 6c 70 69 74 3c 2f 69 3e 5d 3c 2f 62 3e 3c 62 72 3e } //1 <br><b>[<i> Pulpit</i>]</b><br>
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1) >=10
 
}