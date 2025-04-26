
rule TrojanSpy_Win32_OnLineGames{
	meta:
		description = "TrojanSpy:Win32/OnLineGames,SIGNATURE_TYPE_PEHSTR,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_01_0 = {c7 85 14 fe ff ff 5d e4 36 57 c6 85 1c fe ff ff 01 c7 85 20 fe ff ff 68 d8 1a ef } //10
		$a_01_1 = {5f 21 51 47 55 41 5f 4d 41 48 55 41 21 5f } //1 _!QGUA_MAHUA!_
		$a_01_2 = {51 47 41 70 70 } //1 QGApp
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 54 65 6e 63 65 6e 74 } //1 Software\Tencent
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=13
 
}
rule TrojanSpy_Win32_OnLineGames_2{
	meta:
		description = "TrojanSpy:Win32/OnLineGames,SIGNATURE_TYPE_PEHSTR,15 00 15 00 05 00 00 "
		
	strings :
		$a_01_0 = {44 4c 4c 2e 64 6c 6c 00 41 6c 70 68 61 42 6c 65 6e 64 00 44 6c 6c } //10 䱄⹌汤l汁桰䉡敬摮䐀汬
		$a_01_1 = {54 53 53 61 66 65 45 64 69 74 2e 64 61 74 } //10 TSSafeEdit.dat
		$a_01_2 = {4d 50 53 6f 63 6b 4c 69 62 } //1 MPSockLib
		$a_01_3 = {4d 50 47 6f 6f 64 53 74 61 74 75 73 } //1 MPGoodStatus
		$a_01_4 = {47 45 54 00 52 65 66 65 72 65 72 00 71 64 5f 62 61 6c 61 6e 63 65 } //1 䕇T敒敦敲r摱扟污湡散
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=21
 
}