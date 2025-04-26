
rule Backdoor_Win32_Trafficadvance{
	meta:
		description = "Backdoor:Win32/Trafficadvance,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 0a 00 00 "
		
	strings :
		$a_01_0 = {52 61 73 44 69 61 6c } //10 RasDial
		$a_01_1 = {74 72 61 66 66 69 63 61 64 76 61 6e 63 65 2e 6e 65 74 } //3 trafficadvance.net
		$a_01_2 = {43 6f 6e 6e 65 73 73 69 6f 6e 65 20 74 65 72 6d 69 6e 61 74 61 2c 20 72 69 63 6f 6e 6e 65 74 74 65 72 73 69 3f } //1 Connessione terminata, riconnettersi?
		$a_01_3 = {64 69 61 6c 37 30 39 } //1 dial709
		$a_01_4 = {4e 57 44 69 61 6c 65 72 4d 69 6e 69 } //3 NWDialerMini
		$a_01_5 = {4e 45 54 56 49 53 49 4f 4e } //3 NETVISION
		$a_01_6 = {64 63 69 6b 70 63 66 68 61 6c 6d 62 6c 6f 6d 68 6b 63 66 63 65 62 6e 6e 65 66 69 6c 65 64 67 65 20 61 6e 6a 70 62 6d 62 70 6a 6a 61 67 68 67 6d 6f 6e 63 6d 6d 6b 66 68 6d 6d 6d 64 } //1 dcikpcfhalmblomhkcfcebnnefiledge anjpbmbpjjaghgmoncmmkfhmmmd
		$a_01_7 = {67 6f 69 63 66 62 6f 6f 67 69 64 69 6b 6b 65 6a 63 63 6d 63 6c 70 69 65 69 63 69 68 68 6c 70 6f 20 61 68 6b 64 63 61 } //1 goicfboogidikkejccmclpieicihhlpo ahkdca
		$a_01_8 = {50 61 73 73 65 2d 70 61 72 74 6f 75 74 } //2 Passe-partout
		$a_01_9 = {50 72 6f 6e 6f 73 74 69 63 69 } //1 Pronostici
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*2+(#a_01_9  & 1)*1) >=16
 
}
rule Backdoor_Win32_Trafficadvance_2{
	meta:
		description = "Backdoor:Win32/Trafficadvance,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {52 65 63 75 70 65 72 61 } //3 Recupera
		$a_01_1 = {54 65 6d 70 6f 45 6e 74 72 61 } //1 TempoEntra
		$a_01_2 = {74 72 61 66 66 69 63 61 64 76 61 6e 63 65 2e 6e 65 74 } //3 trafficadvance.net
		$a_01_3 = {4e 57 44 69 61 6c 65 72 4d 69 6e 69 } //3 NWDialerMini
		$a_01_4 = {4e 45 54 56 49 53 49 4f 4e } //1 NETVISION
		$a_01_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 5a 6f 6e 65 73 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones
		$a_01_6 = {4e 6f 6e 20 63 69 20 73 6f 6e 6f 20 6d 6f 64 65 6d 20 63 6f 6e 66 69 67 75 72 61 74 69 20 6e 65 6c 20 73 69 73 74 65 6d 61 2e } //1 Non ci sono modem configurati nel sistema.
		$a_01_7 = {43 6f 6e 6e 65 73 73 69 6f 6e 65 20 74 65 72 6d 69 6e 61 74 61 2c 20 72 69 63 6f 6e 6e 65 74 74 65 72 73 69 3f } //1 Connessione terminata, riconnettersi?
		$a_01_8 = {68 74 74 70 3a 2f 2f 77 77 77 2e 33 30 30 30 2e 77 73 2f } //3 http://www.3000.ws/
		$a_01_9 = {20 44 69 73 69 6e 73 74 61 6c 6c 61 2e 6c 6e 6b } //3  Disinstalla.lnk
		$a_01_10 = {4e 6f 20 6d 6f 64 65 6d 20 68 61 73 20 74 61 6b 65 6e 20 73 68 61 70 65 20 69 6e 20 74 68 69 73 20 73 79 73 74 65 6d 2e } //3 No modem has taken shape in this system.
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*3+(#a_01_9  & 1)*3+(#a_01_10  & 1)*3) >=11
 
}
rule Backdoor_Win32_Trafficadvance_3{
	meta:
		description = "Backdoor:Win32/Trafficadvance,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 74 72 61 66 66 69 63 61 64 76 61 6e 63 65 2e 6e 65 74 } //1 .trafficadvance.net
		$a_01_1 = {20 61 64 20 49 6e 74 65 72 6e 65 74 } //1  ad Internet
		$a_01_2 = {5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 51 75 69 63 6b 20 4c 61 75 6e 63 68 } //1 \Microsoft\Internet Explorer\Quick Launch
		$a_01_3 = {52 43 46 2e 25 68 64 2e 25 68 64 7c 4d 6f 44 2e 25 68 64 } //1 RCF.%hd.%hd|MoD.%hd
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Backdoor_Win32_Trafficadvance_4{
	meta:
		description = "Backdoor:Win32/Trafficadvance,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {2e 74 72 61 66 66 69 63 61 64 76 61 6e 63 65 2e 6e 65 74 } //1 .trafficadvance.net
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 53 79 73 74 65 6d 43 65 72 74 69 66 69 63 61 74 65 73 5c 54 72 75 73 74 65 64 50 75 62 6c 69 73 68 65 72 5c 43 65 72 74 69 66 69 63 61 74 65 73 00 } //1 潓瑦慷敲䵜捩潲潳瑦卜獹整䍭牥楴楦慣整屳牔獵整偤扵楬桳牥䍜牥楴楦慣整s
		$a_01_2 = {52 41 53 41 70 69 33 32 2e 64 6c 6c 00 } //1
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 5a 6f 6e 65 73 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones
		$a_01_4 = {41 63 63 65 73 73 4d 79 53 51 4c 2e } //1 AccessMySQL.
		$a_01_5 = {26 52 65 63 75 70 65 72 61 } //1 &Recupera
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}