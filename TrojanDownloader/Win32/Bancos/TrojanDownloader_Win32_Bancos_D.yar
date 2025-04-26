
rule TrojanDownloader_Win32_Bancos_D{
	meta:
		description = "TrojanDownloader:Win32/Bancos.D,SIGNATURE_TYPE_PEHSTR,17 00 17 00 08 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 63 6c 69 6f 34 30 34 30 2e 77 65 62 63 69 6e 64 61 72 69 6f 2e 63 6f 6d 2f 67 61 6d 65 } //10 http://clio4040.webcindario.com/game
		$a_01_1 = {73 69 74 65 20 64 61 20 48 6f 74 6d 61 69 6c 3a 20 68 74 74 70 3a 2f 2f 77 77 77 2e 68 6f 74 6d 61 69 6c 2e 63 6f 6d 2f 72 65 63 61 64 61 73 74 72 61 6d 65 6e 74 6f 2f } //5 site da Hotmail: http://www.hotmail.com/recadastramento/
		$a_01_2 = {5c 49 45 58 50 4c 4f 52 45 2e 45 58 45 20 68 74 74 70 3a 2f 2f 77 77 77 2e 6d 73 6e 2e 63 6f 6d 2e 62 72 } //5 \IEXPLORE.EXE http://www.msn.com.br
		$a_01_3 = {6d 73 67 6e 65 2e 73 63 72 } //5 msgne.scr
		$a_01_4 = {6d 73 67 6e 74 2e 65 78 65 } //5 msgnt.exe
		$a_01_5 = {13 5a 4e 4e 50 50 50 61 64 65 65 69 69 69 69 69 65 65 64 61 } //1 娓乎偐慐敤楥楩楩敥慤
		$a_01_6 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_7 = {4d 41 50 49 33 32 2e 44 4c 4c } //1 MAPI32.DLL
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=23
 
}