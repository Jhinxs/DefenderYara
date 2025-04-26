
rule Trojan_BAT_Remcos_AR_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {0d 16 13 04 38 24 00 00 00 09 11 04 a3 02 00 00 01 13 05 08 11 05 6f } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_2{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 00 11 01 02 11 01 91 72 ?? 00 00 70 28 ?? 00 00 06 59 d2 9c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_3{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 04 08 06 08 8e 69 5d 91 09 06 91 61 d2 6f ?? ?? ?? 0a 06 17 58 0a 06 09 8e 69 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_4{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {09 11 04 18 5b 07 11 04 18 6f 17 00 00 0a 1f 10 28 18 00 00 0a 9c 11 04 18 58 13 04 11 04 08 32 df } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
rule Trojan_BAT_Remcos_AR_MTB_5{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {1d 5f 58 13 04 2b 15 02 7b 69 00 00 04 18 1f 0a 28 ?? ?? ?? 06 11 04 1f 0a 59 13 04 11 04 16 30 e6 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_6{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {04 06 1a 58 4a 04 8e 69 5d 91 07 06 1a 58 4a 07 8e 69 5d 91 61 28 ?? ?? ?? 06 04 06 1a 58 4a 1b 58 19 59 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_7{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {17 2d 06 d0 38 00 00 06 26 72 5d 00 00 70 0a 06 28 73 00 00 0a 25 26 0b 28 74 00 00 0a 25 26 07 16 07 8e 69 6f } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
rule Trojan_BAT_Remcos_AR_MTB_8{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {0a 13 04 02 28 01 00 00 0a 13 05 28 09 00 00 0a 11 04 11 05 16 11 05 8e 69 6f 0f 00 00 0a 6f 10 00 00 0a 0c 08 13 06 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_9{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {7e 51 00 00 04 06 7e 51 00 00 04 06 91 20 89 03 00 00 59 d2 9c 00 06 17 58 0a 06 7e 51 00 00 04 8e 69 fe 04 0b 07 2d d7 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
rule Trojan_BAT_Remcos_AR_MTB_10{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {0a 0b 07 28 31 00 00 0a 0c 08 16 08 8e 69 28 32 00 00 0a 08 0d de 1b } //2
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_Remcos_AR_MTB_11{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {72 3d 00 00 70 a2 25 17 7e 1d 00 00 0a a2 25 18 06 72 7d 00 00 70 6f } //2
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_Remcos_AR_MTB_12{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {02 06 1a 58 4a 02 8e 69 5d 91 07 06 1a 58 4a 07 8e 69 5d 91 61 28 ?? ?? ?? 06 02 06 1a 58 4a 1b 58 19 59 17 59 02 8e 69 5d 91 59 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_13{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0d 16 13 04 2b 1e 09 06 11 04 06 8e 69 5d 91 08 11 04 91 61 d2 6f ?? ?? ?? 0a 11 04 13 05 11 05 17 58 13 04 11 04 08 8e 69 32 db } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_14{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 16 0b 2b 21 06 07 9a 0c 08 72 ?? ?? ?? 70 20 00 01 00 00 14 14 14 6f ?? ?? ?? 0a 26 de 03 26 de 00 07 17 58 0b 07 06 8e 69 32 d9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_15{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 05 11 04 06 11 04 8e 69 5d 91 09 06 91 61 d2 6f ?? ?? ?? 0a 06 0c 08 17 58 0a 06 09 8e 69 32 dc 11 05 6f ?? ?? ?? 0a 13 06 16 2d ee } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
rule Trojan_BAT_Remcos_AR_MTB_16{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {1c 2d 1d 26 07 28 ?? ?? ?? 0a 0c 08 16 08 8e 69 28 ?? ?? ?? 0a 08 0d de 25 } //2
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_Remcos_AR_MTB_17{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 11 08 72 95 49 00 70 28 ?? ?? ?? 0a 72 b3 49 00 70 20 00 01 00 00 14 14 18 8d 10 00 00 01 25 16 06 11 08 9a a2 25 17 1f 10 } //2
		$a_01_1 = {50 00 65 00 6c 00 69 00 } //1 Peli
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_Remcos_AR_MTB_18{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {0d 16 13 04 2b 3b 09 17 8d ?? ?? ?? 01 25 16 08 17 8d ?? ?? ?? 01 25 16 11 04 8c ?? ?? ?? 01 a2 14 28 } //2
		$a_01_1 = {50 00 6f 00 6b 00 65 00 6d 00 6f 00 6e 00 41 00 70 00 70 00 } //1 PokemonApp
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_Remcos_AR_MTB_19{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0d 09 17 6f ?? ?? ?? 06 08 6f ?? ?? ?? 06 09 6f ?? ?? ?? 0a 72 29 00 00 70 28 ?? ?? ?? 06 08 6f ?? ?? ?? 06 6f ?? ?? ?? 06 73 2e 04 00 06 1f 16 73 95 06 00 06 13 04 09 6f ?? ?? ?? 06 11 04 6f ?? ?? ?? 0a 16 13 05 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_AR_MTB_20{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 13 15 2b 28 00 11 13 11 15 18 6f ?? ?? ?? 0a 20 03 02 00 00 28 ?? ?? ?? 0a 13 17 11 14 11 17 6f ?? ?? ?? 0a 00 11 15 18 58 13 15 00 11 15 11 13 6f ?? ?? ?? 0a fe 04 13 18 11 18 2d c7 } //2
		$a_01_1 = {47 00 55 00 49 00 47 00 61 00 6d 00 65 00 } //1 GUIGame
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_Remcos_AR_MTB_21{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {16 0a 2b 19 00 02 7b af 00 00 04 06 8f 79 00 00 01 25 47 03 58 d2 52 00 06 17 58 d2 0a 06 1f 0a fe 04 0b 07 2d de } //2
		$a_01_1 = {65 00 63 00 6e 00 61 00 74 00 73 00 6e 00 49 00 65 00 74 00 61 00 65 00 72 00 43 00 } //1 ecnatsnIetaerC
		$a_01_2 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_01_3 = {6f 00 73 00 75 00 6b 00 70 00 73 00 } //1 osukps
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}
rule Trojan_BAT_Remcos_AR_MTB_22{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_01_0 = {91 13 11 11 11 11 0a 61 11 0e 59 20 00 02 00 00 58 13 12 11 12 20 00 01 00 00 5d 20 00 04 00 00 58 13 13 16 13 1b 2b } //2
		$a_01_1 = {20 00 02 00 00 5d 13 14 11 14 20 00 01 00 00 59 20 00 04 00 00 58 13 } //2
		$a_01_2 = {35 00 35 00 5a 00 4a 00 47 00 35 00 54 00 45 00 37 00 43 00 4a 00 38 00 36 00 35 00 45 00 48 00 5a 00 47 00 43 00 45 00 34 00 30 00 } //1 55ZJG5TE7CJ865EHZGCE40
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}
rule Trojan_BAT_Remcos_AR_MTB_23{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {13 04 09 28 ?? ?? ?? 06 13 05 18 8d ?? ?? ?? 01 13 06 11 06 16 72 ?? ?? ?? 70 a2 11 06 17 11 05 28 ?? ?? ?? 0a a2 11 06 13 07 11 04 28 } //2
		$a_01_1 = {2f 00 73 00 74 00 20 00 30 00 30 00 3a 00 30 00 30 00 20 00 2f 00 64 00 75 00 20 00 39 00 39 00 39 00 39 00 3a 00 35 00 39 00 20 00 2f 00 73 00 63 00 20 00 6f 00 6e 00 63 00 65 00 20 00 2f 00 72 00 69 00 20 00 36 00 30 00 20 00 2f 00 66 00 } //1 /st 00:00 /du 9999:59 /sc once /ri 60 /f
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}
rule Trojan_BAT_Remcos_AR_MTB_24{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {13 05 72 37 e0 1c 70 11 05 6f 12 00 00 0a 28 01 00 00 0a 28 13 00 00 0a 72 01 00 00 70 13 04 dd 00 00 00 00 } //2
		$a_01_1 = {46 00 4f 00 71 00 72 00 4c 00 57 00 7a 00 41 00 6d 00 54 00 4e 00 65 00 63 00 69 00 52 00 2e 00 46 00 4f 00 71 00 72 00 4c 00 57 00 7a 00 41 00 6d 00 54 00 4e 00 65 00 63 00 69 00 52 00 } //1 FOqrLWzAmTNeciR.FOqrLWzAmTNeciR
		$a_01_2 = {73 00 4d 00 4d 00 4d 00 63 00 54 00 53 00 4b 00 44 00 78 00 45 00 52 00 4c 00 77 00 62 00 } //1 sMMMcTSKDxERLwb
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}
rule Trojan_BAT_Remcos_AR_MTB_25{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_1 = {52 00 6f 00 62 00 58 00 2e 00 49 00 6e 00 74 00 65 00 72 00 66 00 61 00 63 00 65 00 2e 00 41 00 72 00 74 00 69 00 63 00 6c 00 65 00 } //1 RobX.Interface.Article
		$a_01_2 = {45 00 78 00 69 00 74 00 } //1 Exit
		$a_01_3 = {38 00 35 00 37 00 48 00 34 00 38 00 37 00 5a 00 53 00 48 00 39 00 37 00 51 00 34 00 48 00 5a 00 42 00 38 00 37 00 34 00 43 00 43 00 } //1 857H487ZSH97Q4HZB874CC
		$a_01_4 = {52 00 6f 00 62 00 58 00 20 00 48 00 61 00 72 00 64 00 77 00 61 00 72 00 65 00 20 00 49 00 6e 00 74 00 65 00 72 00 66 00 61 00 63 00 65 00 } //1 RobX Hardware Interface
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_BAT_Remcos_AR_MTB_26{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {16 0a 2b 67 00 28 12 00 00 0a 20 00 9c 4d 00 8d 0d 00 00 01 25 d0 02 00 00 04 28 13 00 00 0a 6f 14 00 00 0a 0b 07 6f 15 00 00 0a } //2
		$a_01_1 = {47 00 75 00 64 00 71 00 70 00 62 00 70 00 73 00 6c 00 73 00 74 00 61 00 6b 00 74 00 72 00 2e 00 4b 00 68 00 73 00 76 00 66 00 63 00 6c 00 6c 00 6f 00 70 00 7a 00 63 00 74 00 66 00 70 00 77 00 6f 00 6c 00 62 00 6c 00 68 00 7a 00 6c 00 } //1 Gudqpbpslstaktr.Khsvfcllopzctfpwolblhzl
		$a_01_2 = {4f 00 6e 00 63 00 71 00 75 00 67 00 62 00 6f 00 77 00 65 00 76 00 70 00 79 00 75 00 61 00 64 00 71 00 76 00 65 00 63 00 70 00 74 00 } //1 Oncqugbowevpyuadqvecpt
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}
rule Trojan_BAT_Remcos_AR_MTB_27{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 00 68 00 69 00 73 00 20 00 74 00 6f 00 6f 00 6c 00 20 00 69 00 73 00 20 00 75 00 73 00 65 00 64 00 20 00 61 00 73 00 20 00 61 00 20 00 73 00 69 00 6d 00 70 00 6c 00 65 00 20 00 73 00 63 00 6f 00 72 00 62 00 6f 00 61 00 72 00 64 00 20 00 66 00 6f 00 72 00 20 00 74 00 68 00 65 00 20 00 59 00 61 00 68 00 74 00 7a 00 65 00 65 00 20 00 64 00 69 00 63 00 65 00 20 00 67 00 61 00 6d 00 65 00 } //2 This tool is used as a simple scorboard for the Yahtzee dice game
		$a_01_1 = {59 00 61 00 74 00 68 00 7a 00 65 00 65 00 } //2 Yathzee
		$a_01_2 = {59 00 61 00 68 00 74 00 7a 00 65 00 65 00 20 00 53 00 63 00 6f 00 72 00 62 00 6f 00 61 00 72 00 64 00 } //2 Yahtzee Scorboard
		$a_01_3 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_01_4 = {54 6f 53 74 72 69 6e 67 } //1 ToString
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}
rule Trojan_BAT_Remcos_AR_MTB_28{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 1d 13 05 06 28 ?? ?? ?? 0a 7e 09 00 00 04 15 16 28 ?? ?? ?? 0a 18 9a 72 15 01 00 70 16 28 ?? ?? ?? 0a 16 33 3b 1e 13 05 07 28 ?? ?? ?? 0a 2d 2e 1f 09 13 05 07 06 28 ?? ?? ?? 0a 7e 09 00 00 04 15 16 28 ?? ?? ?? 0a 16 9a 28 } //2
		$a_01_1 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 7c 00 7c 00 27 00 5e 00 27 00 7c 00 7c 00 54 00 72 00 75 00 65 00 7c 00 7c 00 27 00 5e 00 27 00 7c 00 7c 00 46 00 61 00 6c 00 73 00 65 00 } //1 svchost.exe||'^'||True||'^'||False
		$a_01_2 = {73 00 70 00 65 00 63 00 2e 00 65 00 78 00 65 00 7c 00 7c 00 27 00 5e 00 27 00 7c 00 7c 00 54 00 72 00 75 00 65 00 7c 00 7c 00 27 00 5e 00 27 00 7c 00 7c 00 46 00 61 00 6c 00 73 00 65 00 } //1 spec.exe||'^'||True||'^'||False
		$a_01_3 = {42 00 75 00 69 00 6c 00 64 00 2e 00 65 00 78 00 65 00 7c 00 7c 00 27 00 5e 00 27 00 7c 00 7c 00 54 00 72 00 75 00 65 00 7c 00 7c 00 27 00 5e 00 27 00 7c 00 7c 00 46 00 61 00 6c 00 73 00 65 00 } //1 Build.exe||'^'||True||'^'||False
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}
rule Trojan_BAT_Remcos_AR_MTB_29{
	meta:
		description = "Trojan:BAT/Remcos.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {49 00 69 00 41 00 76 00 63 00 33 00 51 00 67 00 4d 00 44 00 41 00 36 00 4d 00 44 00 41 00 67 00 4c 00 32 00 52 00 31 00 49 00 44 00 6b 00 35 00 4f 00 54 00 6b 00 36 00 4e 00 54 00 6b 00 67 00 4c 00 33 00 4e 00 6a 00 49 00 47 00 39 00 75 00 59 00 32 00 55 00 67 00 4c 00 33 00 4a 00 70 00 49 00 44 00 4d 00 67 00 4c 00 32 00 59 00 3d 00 } //1 IiAvc3QgMDA6MDAgL2R1IDk5OTk6NTkgL3NjIG9uY2UgL3JpIDMgL2Y=
		$a_01_1 = {4c 00 30 00 4d 00 67 00 63 00 32 00 4e 00 6f 00 64 00 47 00 46 00 7a 00 61 00 33 00 4d 00 67 00 4c 00 32 00 4e 00 79 00 5a 00 57 00 46 00 30 00 5a 00 53 00 41 00 76 00 64 00 47 00 34 00 67 00 58 00 } //1 L0Mgc2NodGFza3MgL2NyZWF0ZSAvdG4gX
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {50 00 6f 00 6c 00 61 00 72 00 69 00 73 00 4f 00 62 00 66 00 75 00 73 00 63 00 61 00 74 00 69 00 6f 00 6e 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 } //1 PolarisObfuscationSoftware
		$a_01_4 = {50 00 6f 00 6c 00 61 00 72 00 69 00 73 00 43 00 6f 00 70 00 79 00 52 00 69 00 67 00 68 00 74 00 } //1 PolarisCopyRight
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}