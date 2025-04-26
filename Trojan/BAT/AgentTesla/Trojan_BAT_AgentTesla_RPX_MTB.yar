
rule Trojan_BAT_AgentTesla_RPX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {11 06 11 05 11 1f 9a 1f 10 28 03 01 00 0a 86 6f 04 01 00 0a 00 11 1f 17 d6 13 1f 11 1f 11 1e 31 df } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {00 08 11 04 07 11 04 18 5a 18 6f 76 00 00 0a 1f 10 28 77 00 00 0a d2 9c 00 11 04 17 58 13 04 11 04 08 8e 69 fe 04 13 05 11 05 2d d4 d0 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 31 01 2a 20 dc 05 00 00 28 ?? 00 00 0a 11 07 17 58 13 07 11 07 1b 32 cc } //1
		$a_01_1 = {42 6c 69 73 73 6d 6f 73 71 75 69 74 6f } //1 Blissmosquito
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_4{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0b 16 0c 2b 18 07 08 18 5b 02 08 18 ?? ?? 00 00 0a 1f 10 ?? ?? 00 00 0a 9c 08 18 58 0c 08 06 fe 04 0d 09 2d e0 07 13 04 11 04 2a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_5{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {d2 13 08 07 09 17 58 07 8e 69 5d 91 13 09 11 07 11 08 61 11 09 20 00 01 00 00 58 20 00 01 00 00 5d 59 13 0a 07 11 06 11 0a d2 9c 09 15 58 0d 00 09 16 fe 04 16 fe 01 13 0b 11 0b 2d ab } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_6{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {00 16 13 06 2b 5c 00 16 13 07 2b 44 00 16 13 08 2b 2c 00 09 11 04 11 07 58 11 06 11 08 58 } //1 ᘀؓ尫ᘀܓ䐫ᘀࠓⰫऀБܑᅘᄆ堈
		$a_01_1 = {13 0a 08 07 11 0a 9c 07 17 58 0b 11 08 17 58 13 08 00 11 08 17 fe 04 13 0b 11 0b 2d c9 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_7{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {00 11 08 11 04 5d 13 09 11 08 11 05 5d 13 0a 11 08 17 58 11 04 5d 13 0b 07 11 09 91 08 11 0a 91 61 13 0c 11 0c 07 11 0b 91 59 20 00 01 00 00 58 20 00 01 00 00 5d 13 0d 07 11 09 11 0d d2 9c 00 11 08 17 58 13 08 11 08 11 04 09 17 58 5a fe 04 13 0e 11 0e 2d aa } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_8{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {46 00 72 00 6f 00 6d 00 42 00 61 00 00 15 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 } //1
		$a_01_1 = {74 00 6f 00 79 00 73 00 63 00 65 00 6e 00 74 00 65 00 72 00 2e 00 63 00 6c 00 } //1 toyscenter.cl
		$a_01_2 = {59 00 65 00 74 00 62 00 79 00 72 00 7a 00 2e 00 70 00 6e 00 67 00 } //1 Yetbyrz.png
		$a_01_3 = {48 74 74 70 43 6c 69 65 6e 74 } //1 HttpClient
		$a_01_4 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_5 = {43 6f 6e 63 61 74 } //1 Concat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_9{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {62 00 69 00 74 00 62 00 75 00 63 00 6b 00 65 00 74 00 2e 00 6f 00 72 00 67 00 } //1 bitbucket.org
		$a_01_1 = {52 00 65 00 78 00 78 00 39 00 36 00 37 00 34 00 } //1 Rexx9674
		$a_01_2 = {64 00 65 00 61 00 64 00 67 00 75 00 79 00 } //1 deadguy
		$a_01_3 = {58 00 78 00 6f 00 65 00 62 00 2e 00 70 00 6e 00 67 00 } //1 Xxoeb.png
		$a_01_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //1 powershell
		$a_01_5 = {2d 00 65 00 6e 00 63 00 20 00 59 00 77 00 42 00 74 00 41 00 47 00 51 00 41 00 49 00 41 00 41 00 76 00 41 00 47 00 4d 00 41 00 49 00 41 00 42 00 30 00 41 00 47 00 6b 00 41 00 62 00 51 00 42 00 6c 00 41 00 47 00 38 00 41 00 64 00 51 00 42 00 30 00 41 00 43 00 41 00 41 00 4d 00 67 00 41 00 77 00 41 00 41 00 3d 00 3d 00 } //1 -enc YwBtAGQAIAAvAGMAIAB0AGkAbQBlAG8AdQB0ACAAMgAwAA==
		$a_01_6 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_7 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_01_8 = {57 65 62 52 65 71 75 65 73 74 } //1 WebRequest
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_10{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {63 00 6c 00 65 00 61 00 72 00 72 00 65 00 70 00 40 00 6d 00 79 00 6d 00 6f 00 62 00 69 00 6c 00 65 00 6f 00 72 00 64 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //1 clearrep@mymobileorder.com
		$a_01_1 = {73 00 69 00 67 00 6e 00 6f 00 6e 00 73 00 33 00 2e 00 74 00 78 00 74 00 } //1 signons3.txt
		$a_01_2 = {46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 } //1 FileZilla
		$a_01_3 = {46 00 54 00 50 00 20 00 4e 00 61 00 76 00 69 00 67 00 61 00 74 00 6f 00 72 00 5c 00 46 00 74 00 70 00 6c 00 69 00 73 00 74 00 2e 00 74 00 78 00 74 00 } //1 FTP Navigator\Ftplist.txt
		$a_01_4 = {4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 5c 00 43 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 } //1 Network\Cookies
		$a_01_5 = {47 65 74 46 6f 72 65 67 72 6f 75 6e 64 57 69 6e 64 6f 77 } //1 GetForegroundWindow
		$a_01_6 = {45 6e 61 62 6c 65 43 6c 69 70 62 6f 61 72 64 4c 6f 67 67 65 72 } //1 EnableClipboardLogger
		$a_01_7 = {45 6e 61 62 6c 65 4b 65 79 6c 6f 67 67 65 72 } //1 EnableKeylogger
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_11{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_01_0 = {51 00 32 00 39 00 79 00 62 00 32 00 35 00 76 00 64 00 6d 00 6c 00 79 00 64 00 58 00 4d 00 75 00 51 00 32 00 39 00 79 00 62 00 32 00 35 00 76 00 64 00 6d 00 6c 00 79 00 64 00 58 00 4d 00 3d 00 } //1 Q29yb25vdmlydXMuQ29yb25vdmlydXM=
		$a_01_1 = {51 00 57 00 4e 00 30 00 61 00 58 00 5a 00 70 00 64 00 48 00 6b 00 3d 00 } //1 QWN0aXZpdHk=
		$a_01_2 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //1 HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_4 = {47 65 74 53 74 72 69 6e 67 } //1 GetString
		$a_01_5 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_6 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_01_7 = {49 6e 76 6f 6b 65 } //1 Invoke
		$a_01_8 = {54 72 69 70 6c 65 44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 TripleDESCryptoServiceProvider
		$a_01_9 = {53 70 65 63 69 61 6c 46 6f 6c 64 65 72 } //1 SpecialFolder
		$a_01_10 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //1 GetFolderPath
		$a_01_11 = {43 6f 6e 63 61 74 } //1 Concat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=12
 
}
rule Trojan_BAT_AgentTesla_RPX_MTB_12{
	meta:
		description = "Trojan:BAT/AgentTesla.RPX!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {72 4d 01 00 70 28 04 01 00 0a 0b 07 72 51 01 00 70 28 04 01 00 0a 0b 07 72 51 01 00 70 28 04 01 00 0a 0b 07 72 55 01 00 70 28 04 01 00 0a 0b 07 72 59 01 00 70 28 04 01 00 0a 0b 07 72 5d 01 00 70 28 04 01 00 0a 0b 07 72 5d 01 00 70 28 04 01 00 0a 0b 07 72 61 01 00 70 28 04 01 00 0a 0b 07 72 65 01 00 70 28 04 01 00 0a 0b 07 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}