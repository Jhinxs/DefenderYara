
rule Trojan_BAT_AgentTesla_MFP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {48 65 62 72 65 77 } //1 Hebrew
		$a_81_1 = {50 61 72 73 69 6e 67 2e 43 75 73 74 } //1 Parsing.Cust
		$a_00_2 = {24 30 39 38 31 63 66 38 36 2d 30 31 39 31 2d 34 65 35 35 2d 38 64 63 63 2d 35 37 38 32 37 63 64 37 35 32 65 38 } //1 $0981cf86-0191-4e55-8dcc-57827cd752e8
		$a_00_3 = {57 15 a2 09 09 1f 00 00 00 fa 01 33 00 16 00 00 } //1
		$a_81_4 = {42 69 74 6d 61 70 } //1 Bitmap
		$a_81_5 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {20 00 01 00 00 14 14 17 8d ?? ?? ?? 01 25 16 06 a2 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 0b 14 d0 ?? ?? ?? 01 28 ?? ?? ?? 0a 72 ?? ?? ?? 70 17 8d ?? ?? ?? 01 25 16 07 a2 25 0c 14 14 17 8d ?? ?? ?? 01 25 16 17 9c 25 0d 28 ?? ?? ?? 0a 09 16 91 2c ?? 08 } //1
		$a_81_1 = {6d 61 69 6c 74 6f 3a 6c 75 75 6e 67 6f 63 32 30 30 35 40 79 61 68 6f 6f 2e 63 6f 6d } //1 mailto:luungoc2005@yahoo.com
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {0b 02 07 72 ?? ?? ?? 70 28 ?? ?? ?? 06 0c 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 72 ?? ?? ?? 70 20 ?? ?? ?? 00 14 14 17 8d ?? ?? ?? 01 25 16 08 a2 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 0d 28 ?? ?? ?? 0a 14 72 ?? ?? ?? 70 17 8d ?? ?? ?? 01 25 16 09 a2 25 13 ?? 14 14 17 8d ?? ?? ?? 01 25 16 17 9c 25 13 ?? 28 ?? ?? ?? 0a 11 ?? 16 91 2d ?? 2b ?? 11 ?? 16 9a 28 ?? ?? ?? 0a 0d 74 ?? ?? ?? 01 0a 2b } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_4{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
		$a_81_1 = {6b 65 72 6e 65 6c 33 32 2e 64 6c 6c } //1 kernel32.dll
		$a_81_2 = {67 65 74 5f 52 65 73 6f 75 72 63 65 4d 61 6e 61 67 65 72 } //1 get_ResourceManager
		$a_81_3 = {73 65 74 5f 50 61 73 73 77 6f 72 64 43 68 61 72 } //1 set_PasswordChar
		$a_81_4 = {73 65 74 5f 43 6f 6e 6e 65 63 74 69 6f 6e } //1 set_Connection
		$a_81_5 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //1 ResumeLayout
		$a_81_6 = {6d 79 61 70 70 2e 65 78 65 } //1 myapp.exe
		$a_00_7 = {57 d5 a2 fd 09 1f 00 00 00 fa 25 33 00 16 00 00 } //1
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_5{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {06 07 93 0d 06 07 06 08 93 9d 06 08 09 9d 00 07 17 d6 0b 08 17 da 0c 07 08 fe ?? 13 ?? 11 ?? 2d } //1
		$a_02_1 = {06 0a 06 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0b 07 28 ?? ?? ?? 06 00 72 ?? ?? ?? 70 0c 2b ?? 08 2a } //1
		$a_02_2 = {70 0c 07 28 ?? ?? ?? 0a 72 ?? ?? ?? 70 28 ?? ?? ?? 06 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0d 06 09 6f ?? ?? ?? 0a 00 06 18 6f ?? ?? ?? 0a 00 02 6f ?? ?? ?? 0a 16 02 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_6{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {66 69 6c 65 3a 2f 2f 2f } //1 file:///
		$a_00_1 = {24 36 34 37 36 31 35 66 33 2d 38 37 30 64 2d 34 35 64 61 2d 38 39 64 39 2d 62 64 30 36 36 33 37 32 36 37 64 66 } //1 $647615f3-870d-45da-89d9-bd06637267df
		$a_81_2 = {47 65 74 54 65 6d 70 50 61 74 68 } //1 GetTempPath
		$a_81_3 = {43 72 79 70 74 6f 43 6f 6e 66 69 67 } //1 CryptoConfig
		$a_00_4 = {57 bf b6 2b 09 0f 00 00 00 00 00 00 00 00 00 00 } //1
		$a_81_5 = {49 6e 76 6f 6b 65 } //1 Invoke
		$a_81_6 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_81_7 = {4c 6f 61 64 46 72 6f 6d 4f 75 74 6c 6f 6f 6b 43 73 76 } //1 LoadFromOutlookCsv
	condition:
		((#a_81_0  & 1)*1+(#a_00_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_00_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_7{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {03 11 04 18 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 04 08 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 6a 61 b7 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 ?? 07 11 ?? 6f ?? ?? ?? 0a 26 08 04 6f ?? ?? ?? 0a 17 da fe ?? 13 ?? 11 ?? 2c ?? 16 0c 2b ?? 00 08 17 d6 0c 11 ?? 18 d6 13 ?? 11 ?? 09 31 } //1
		$a_02_1 = {25 16 02 06 72 ?? ?? ?? 70 28 ?? ?? ?? 06 28 ?? ?? ?? 0a a2 14 14 14 28 ?? ?? ?? 0a 74 ?? ?? ?? 01 0b 02 07 28 ?? ?? ?? 06 26 2a } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_8{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_81_0 = {77 42 46 4a 45 52 42 63 64 32 39 73 59 4d 37 47 77 34 71 47 6b 39 74 67 46 4c 4d 69 74 30 4d 45 } //1 wBFJERBcd29sYM7Gw4qGk9tgFLMit0ME
		$a_81_1 = {39 66 53 4b 6b 6a 53 34 30 65 6a 54 4e 35 46 53 57 30 4c 68 2b 4e 55 4b 68 4d 52 6b 43 6a 65 64 } //1 9fSKkjS40ejTN5FSW0Lh+NUKhMRkCjed
		$a_02_2 = {70 0c 07 20 ?? ?? ?? 00 28 ?? ?? ?? 0a 03 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0d 06 09 6f ?? ?? ?? 0a 00 06 18 6f ?? ?? ?? 0a 00 02 28 ?? ?? ?? 0a 13 ?? 20 ?? ?? ?? 00 28 ?? ?? ?? 0a 06 6f ?? ?? ?? 0a 11 ?? 16 11 ?? 8e 69 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0c 08 13 ?? 2b ?? 11 ?? 2a } //1
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_9{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_00_0 = {24 34 42 36 43 42 37 39 34 2d 46 38 38 31 2d 34 30 30 32 2d 39 43 34 45 2d 36 31 35 36 45 33 43 33 39 46 45 41 } //1 $4B6CB794-F881-4002-9C4E-6156E3C39FEA
		$a_00_1 = {57 1f a2 0b 09 1f 00 00 00 fa 01 33 00 16 00 00 } //1
		$a_00_2 = {70 61 74 68 5f 64 62 } //1 path_db
		$a_00_3 = {53 69 67 6e 49 6e 5f 4c 6f 61 64 } //1 SignIn_Load
		$a_00_4 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //1 CompressionMode
		$a_00_5 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_00_6 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //1 BitConverter
		$a_81_7 = {47 61 72 72 69 78 2e 45 78 70 6c 6f 72 65 72 31 } //1 Garrix.Explorer1
		$a_81_8 = {4a 65 74 42 72 61 69 6e } //1 JetBrain
		$a_81_9 = {70 61 73 73 77 6f 72 64 } //1 password
		$a_81_10 = {4a 65 75 5f 45 63 68 65 63 5c 62 69 6e 5c 44 65 62 75 67 } //1 Jeu_Echec\bin\Debug
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=11
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_10{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_00_0 = {57 17 a2 09 09 01 00 00 00 fa 25 33 00 16 00 00 } //1
		$a_81_1 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_81_2 = {54 6f 49 6e 74 33 32 } //1 ToInt32
		$a_81_3 = {57 72 69 74 65 42 79 74 65 } //1 WriteByte
		$a_81_4 = {53 61 76 65 } //1 Save
		$a_81_5 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_81_6 = {42 75 66 66 65 72 65 64 53 74 72 65 61 6d } //1 BufferedStream
		$a_81_7 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_81_8 = {57 65 62 48 65 61 64 65 72 43 6f 6c 6c 65 63 74 69 6f 6e } //1 WebHeaderCollection
		$a_81_9 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
		$a_81_10 = {52 65 67 65 78 } //1 Regex
		$a_81_11 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_81_12 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //1 DownloadString
		$a_81_13 = {53 79 73 74 65 6d 2e 4e 65 74 } //1 System.Net
		$a_81_14 = {53 70 6c 69 74 } //1 Split
	condition:
		((#a_00_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=15
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_11{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {0a 00 02 04 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 00 } //1
		$a_02_1 = {01 0c 00 73 ?? ?? ?? 0a 0d 00 07 08 16 20 ?? ?? ?? 00 6f ?? ?? ?? 0a 13 ?? 11 ?? 16 fe ?? 13 ?? 11 ?? 2c ?? 09 08 16 11 ?? 6f ?? ?? ?? 0a 00 00 00 00 11 ?? 16 fe ?? 13 ?? 11 ?? 2d ?? 09 6f ?? ?? ?? 0a 0a de ?? 00 09 2c ?? 09 6f ?? ?? ?? 0a 00 dc 00 07 2c ?? 07 6f ?? ?? ?? 0a 00 dc 06 } //1
		$a_81_2 = {48 34 73 49 41 41 41 41 41 41 41 45 41 4f 78 39 64 33 68 62 56 64 4c 33 58 45 6d 57 75 78 50 48 69 65 31 55 32 36 51 70 } //1 H4sIAAAAAAAEAOx9d3hbVdL3XEmWuxPHie1U26Qp
		$a_81_3 = {43 35 70 67 32 33 69 51 4f 6d 6a 2b 73 75 55 32 2b 74 4b 70 64 37 48 6c 32 58 37 64 41 66 4d 77 4b 64 67 } //1 C5pg23iQOmj+suU2+tKpd7Hl2X7dAfMwKdg
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_12{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0a 00 07 00 00 "
		
	strings :
		$a_02_0 = {a2 06 18 72 ?? ?? ?? 70 a2 28 ?? ?? ?? 06 28 ?? ?? ?? 06 0b 07 72 ?? ?? ?? 70 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 0c 08 28 ?? ?? ?? 06 0d 09 28 ?? ?? ?? 0a 13 ?? 11 ?? 6f ?? ?? ?? 0a 16 9a 13 ?? 11 ?? 14 72 ?? ?? ?? 70 17 8d ?? ?? ?? 01 25 16 72 ?? ?? ?? 70 a2 14 14 28 ?? ?? ?? 0a 13 ?? 11 } //10
		$a_81_1 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //1 HttpWebResponse
		$a_81_2 = {67 65 6e 65 72 61 74 65 52 61 6e 64 6f 6d } //1 generateRandom
		$a_81_3 = {49 6d 61 67 65 4c 6f 61 64 50 72 6f 67 72 65 73 73 46 6f 72 6d } //1 ImageLoadProgressForm
		$a_81_4 = {45 4e 43 52 59 50 54 } //1 ENCRYPT
		$a_81_5 = {46 6c 6f 79 64 2d 53 74 65 69 6e 62 65 72 67 } //1 Floyd-Steinberg
		$a_00_6 = {24 61 32 33 36 34 30 38 66 2d 64 30 34 63 2d 34 35 31 34 2d 38 62 64 65 2d 62 66 34 31 63 63 37 32 34 37 66 31 } //1 $a236408f-d04c-4514-8bde-bf41cc7247f1
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_00_6  & 1)*1) >=10
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_13{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {00 07 08 16 20 ?? ?? ?? 00 6f ?? ?? ?? 0a 13 ?? 11 ?? 16 fe ?? 13 ?? 11 ?? 39 ?? ?? ?? 00 09 14 72 ?? ?? ?? 70 19 8d ?? ?? ?? 01 25 16 08 a2 25 17 16 8c ?? ?? ?? 01 a2 25 18 11 ?? 8c ?? ?? ?? 01 a2 25 13 ?? 14 14 19 8d } //1
		$a_02_1 = {01 25 16 17 9c 25 18 17 9c 25 13 ?? 17 28 ?? ?? ?? 0a 26 11 ?? 16 91 2d ?? 2b ?? 11 ?? 16 9a 28 ?? ?? ?? 0a d0 ?? ?? ?? 1b 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 74 ?? ?? ?? 1b 0c 11 ?? 18 91 2d ?? 2b ?? 11 } //1
		$a_02_2 = {10 01 02 03 6f ?? ?? ?? 0a 16 03 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 } //1
		$a_81_3 = {47 65 74 46 69 6c 65 4e 61 6d 65 42 79 55 52 4c } //1 GetFileNameByURL
		$a_81_4 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_14{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_81_0 = {51 64 6d 53 6b 35 34 46 58 } //1 QdmSk54FX
		$a_81_1 = {4d 36 31 39 44 31 5a } //1 M619D1Z
		$a_81_2 = {7a 79 62 31 33 6a 61 43 41 54 69 59 37 68 65 46 53 63 4a } //1 zyb13jaCATiY7heFScJ
		$a_81_3 = {71 37 76 63 70 54 42 56 31 70 6b 69 6b 36 35 39 51 4a 49 64 30 59 30 53 61 37 4f 31 48 57 78 33 4f 53 38 6f 62 69 72 59 61 } //1 q7vcpTBV1pkik659QJId0Y0Sa7O1HWx3OS8obirYa
		$a_81_4 = {4c 62 6a 30 38 44 61 4d 35 52 75 50 69 69 42 51 47 35 6b 6e 55 49 55 50 75 6c } //1 Lbj08DaM5RuPiiBQG5knUIUPul
		$a_81_5 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //1 RijndaelManaged
		$a_81_6 = {53 71 6c 43 6f 6d 6d 61 6e 64 } //1 SqlCommand
		$a_81_7 = {74 78 74 5f 70 61 73 73 77 6f 72 64 } //1 txt_password
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_9 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //1 SymmetricAlgorithm
		$a_81_10 = {48 61 73 68 41 6c 67 6f 72 69 74 68 6d } //1 HashAlgorithm
		$a_81_11 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //1 ResumeLayout
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1) >=12
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_15{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 "
		
	strings :
		$a_81_0 = {44 69 66 67 72 } //1 Difgr
		$a_00_1 = {24 45 42 42 44 33 35 46 45 2d 44 30 35 41 2d 34 34 34 43 2d 41 37 36 34 2d 37 39 36 33 33 34 35 36 38 46 42 46 } //1 $EBBD35FE-D05A-444C-A764-796334568FBF
		$a_00_2 = {57 3f b6 1f 09 1f 00 00 00 fa 01 33 00 16 00 00 } //1
		$a_81_3 = {47 65 74 50 69 78 65 6c } //1 GetPixel
		$a_81_4 = {48 65 62 72 65 77 } //1 Hebrew
		$a_81_5 = {47 65 74 45 6e 74 72 79 41 73 73 65 6d 62 6c 79 } //1 GetEntryAssembly
		$a_81_6 = {63 61 6c 63 4f 6e 6c 79 } //1 calcOnly
		$a_81_7 = {52 65 6d 6f 76 65 57 69 6e 64 6f 77 46 72 6f 6d 48 69 73 74 6f 72 79 } //1 RemoveWindowFromHistory
		$a_81_8 = {41 64 64 57 69 6e 64 6f 77 54 6f 48 69 73 74 6f 72 79 } //1 AddWindowToHistory
		$a_81_9 = {49 53 65 63 74 69 6f 6e 45 6e 74 72 79 } //1 ISectionEntry
		$a_81_10 = {43 6f 6e 74 61 69 6e 73 4b 65 79 } //1 ContainsKey
		$a_81_11 = {52 65 6d 6f 76 65 42 79 4b 65 79 } //1 RemoveByKey
		$a_81_12 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_81_13 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //1 ResumeLayout
	condition:
		((#a_81_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1) >=14
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_16{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_00_0 = {57 17 a2 0b 09 1f 00 00 00 fa 01 33 00 16 00 00 } //1
		$a_00_1 = {24 38 34 61 37 32 32 62 31 2d 38 63 34 32 2d 34 35 66 33 2d 61 33 33 63 2d 66 64 64 31 36 64 64 33 37 38 38 66 } //1 $84a722b1-8c42-45f3-a33c-fdd16dd3788f
		$a_81_2 = {67 65 74 5f 4b 65 79 43 6f 64 65 } //1 get_KeyCode
		$a_81_3 = {43 6f 6e 74 61 69 6e 73 4b 65 79 } //1 ContainsKey
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_5 = {4c 61 74 65 47 65 74 } //1 LateGet
		$a_81_6 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_81_7 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_81_8 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //1 ResumeLayout
		$a_81_9 = {67 65 74 5f 52 53 53 5f 50 41 54 48 5f 44 42 } //1 get_RSS_PATH_DB
		$a_81_10 = {73 65 74 5f 52 53 53 5f 50 41 54 48 5f 44 42 } //1 set_RSS_PATH_DB
		$a_81_11 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //1 GetResourceString
		$a_81_12 = {67 65 74 5f 43 6f 6e 6e 65 63 74 69 6f 6e } //1 get_Connection
		$a_81_13 = {62 64 31 43 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //1 bd1ConnectionString
		$a_81_14 = {49 6e 76 6f 6b 65 } //1 Invoke
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=15
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_17{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,36 00 36 00 12 00 00 "
		
	strings :
		$a_81_0 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_81_1 = {42 6c 6f 63 6b 43 6f 70 79 } //1 BlockCopy
		$a_81_2 = {43 6f 6e 74 61 69 6e 73 4b 65 79 } //1 ContainsKey
		$a_81_3 = {47 65 74 48 61 73 68 43 6f 64 65 } //1 GetHashCode
		$a_81_4 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_81_5 = {5f 70 61 73 73 77 6f 72 64 } //1 _password
		$a_81_6 = {53 75 73 70 65 6e 64 4c 61 79 6f 75 74 } //1 SuspendLayout
		$a_81_7 = {53 75 62 73 74 72 69 6e 67 } //1 Substring
		$a_81_8 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
		$a_81_9 = {49 44 69 73 70 61 74 63 68 } //5 IDispatch
		$a_81_10 = {63 44 69 73 70 6c 61 79 43 6c 61 73 73 34 30 } //5 cDisplayClass40
		$a_81_11 = {53 69 74 65 53 74 72 69 6e 67 } //5 SiteString
		$a_81_12 = {49 45 6e 74 72 79 50 6f 69 6e 74 45 6e 74 72 79 } //5 IEntryPointEntry
		$a_81_13 = {4e 75 6c 6c 61 62 6c 65 } //5 Nullable
		$a_81_14 = {57 61 69 74 4f 72 54 69 6d 65 72 43 61 6c 6c 62 61 63 6b } //5 WaitOrTimerCallback
		$a_81_15 = {45 6d 70 74 79 41 72 72 61 79 } //5 EmptyArray
		$a_00_16 = {d7 9d a2 3d 09 1f 00 00 00 fa 25 33 00 16 00 00 } //40
		$a_00_17 = {57 dd a2 fd 09 1f 00 00 00 fa 25 33 00 16 00 00 } //40
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*5+(#a_81_10  & 1)*5+(#a_81_11  & 1)*5+(#a_81_12  & 1)*5+(#a_81_13  & 1)*5+(#a_81_14  & 1)*5+(#a_81_15  & 1)*5+(#a_00_16  & 1)*40+(#a_00_17  & 1)*40) >=54
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_18{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,44 00 44 00 0e 00 00 "
		
	strings :
		$a_00_0 = {24 66 38 34 33 35 32 35 36 2d 38 65 31 31 2d 34 36 66 65 2d 61 36 37 35 2d 35 32 66 65 30 31 66 32 39 30 66 32 } //10 $f8435256-8e11-46fe-a675-52fe01f290f2
		$a_00_1 = {24 61 64 33 62 39 33 31 38 2d 34 30 64 64 2d 34 36 31 38 2d 61 65 35 65 2d 62 36 36 62 30 61 34 37 61 66 61 36 } //10 $ad3b9318-40dd-4618-ae5e-b66b0a47afa6
		$a_00_2 = {24 33 33 33 39 64 37 36 30 2d 36 38 63 36 2d 34 36 38 39 2d 62 30 31 33 2d 39 62 37 36 65 62 38 30 37 35 39 62 } //10 $3339d760-68c6-4689-b013-9b76eb80759b
		$a_00_3 = {57 3f a2 1f 09 1f 00 00 00 7a a4 13 00 16 00 00 } //50
		$a_00_4 = {57 1f a2 0b 09 1f 00 00 00 5a a4 03 00 16 00 00 } //50
		$a_00_5 = {57 fd a2 fd 09 1f 00 00 00 fa 25 33 00 16 00 00 } //50
		$a_81_6 = {4d 61 72 73 68 61 6c } //1 Marshal
		$a_81_7 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_81_8 = {43 6f 6e 74 61 69 6e 73 4b 65 79 } //1 ContainsKey
		$a_81_9 = {55 74 69 6c 73 } //1 Utils
		$a_81_10 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_81_11 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //1 ResumeLayout
		$a_81_12 = {53 74 61 72 74 73 57 69 74 68 } //1 StartsWith
		$a_81_13 = {57 72 69 74 65 41 6c 6c 42 79 74 65 73 } //1 WriteAllBytes
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*50+(#a_00_4  & 1)*50+(#a_00_5  & 1)*50+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1) >=68
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_19{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 10 00 11 00 00 "
		
	strings :
		$a_81_0 = {65 73 63 50 72 65 73 73 65 64 } //1 escPressed
		$a_81_1 = {6c 65 66 74 50 72 65 73 73 65 64 } //1 leftPressed
		$a_81_2 = {72 69 67 68 74 50 72 65 73 73 65 64 } //1 rightPressed
		$a_81_3 = {73 70 61 63 65 50 72 65 73 73 65 64 } //1 spacePressed
		$a_81_4 = {61 64 64 5f 75 70 50 72 65 73 73 65 64 } //1 add_upPressed
		$a_81_5 = {72 65 6d 6f 76 65 5f 75 70 50 72 65 73 73 65 64 } //1 remove_upPressed
		$a_81_6 = {61 64 64 5f 64 6f 77 6e 50 72 65 73 73 65 64 } //1 add_downPressed
		$a_81_7 = {72 65 6d 6f 76 65 5f 64 6f 77 6e 50 72 65 73 73 65 64 } //1 remove_downPressed
		$a_81_8 = {61 64 64 5f 65 6e 74 65 72 50 72 65 73 73 65 64 } //1 add_enterPressed
		$a_81_9 = {72 65 6d 6f 76 65 5f 65 6e 74 65 72 50 72 65 73 73 65 64 } //1 remove_enterPressed
		$a_81_10 = {61 64 64 5f 65 73 63 50 72 65 73 73 65 64 } //1 add_escPressed
		$a_81_11 = {73 65 74 5f 43 75 6c 74 75 72 65 } //1 set_Culture
		$a_81_12 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_13 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_81_14 = {49 6e 76 6f 6b 65 } //1 Invoke
		$a_81_15 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_81_16 = {24 33 61 39 65 64 63 31 36 2d 38 34 31 30 2d 34 32 32 64 2d 38 34 32 37 2d 33 39 33 65 37 31 30 37 37 62 37 64 } //20 $3a9edc16-8410-422d-8427-393e71077b7d
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*20) >=16
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_20{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,51 00 4b 00 0e 00 00 "
		
	strings :
		$a_81_0 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 MD5CryptoServiceProvider
		$a_81_1 = {41 65 73 4d 61 6e 61 67 65 64 } //1 AesManaged
		$a_81_2 = {48 61 73 68 41 6c 67 6f 72 69 74 68 6d } //1 HashAlgorithm
		$a_81_3 = {43 6f 6d 70 75 74 65 48 61 73 68 } //1 ComputeHash
		$a_81_4 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //1 SymmetricAlgorithm
		$a_81_5 = {78 70 64 67 52 4f 55 58 35 4c 32 62 4f 71 38 63 44 6d } //6 xpdgROUX5L2bOq8cDm
		$a_81_6 = {58 50 47 65 39 6f 59 68 6b 6e 74 63 49 43 6b 35 62 49 65 } //6 XPGe9oYhkntcICk5bIe
		$a_81_7 = {6e 77 55 63 71 70 59 36 41 73 53 52 31 70 69 74 4b 68 38 } //6 nwUcqpY6AsSR1pitKh8
		$a_81_8 = {4d 5a 52 71 77 70 59 43 65 39 73 50 54 50 77 59 6a 6a 58 } //6 MZRqwpYCe9sPTPwYjjX
		$a_81_9 = {51 52 71 57 6b 62 70 59 74 44 50 6b 6f 52 6a 4b 54 39 } //6 QRqWkbpYtDPkoRjKT9
		$a_00_10 = {57 95 a2 29 09 1f 00 00 00 00 00 00 00 00 00 00 } //20
		$a_00_11 = {24 30 38 64 31 39 33 61 33 2d 66 31 36 66 2d 34 63 64 39 2d 38 39 32 63 2d 39 38 63 66 64 62 31 32 32 38 32 39 } //50 $08d193a3-f16f-4cd9-892c-98cfdb122829
		$a_00_12 = {24 31 34 39 31 35 64 37 33 2d 63 34 38 34 2d 34 34 35 39 2d 61 32 36 36 2d 33 31 62 38 34 63 32 32 31 61 62 34 } //50 $14915d73-c484-4459-a266-31b84c221ab4
		$a_00_13 = {24 63 34 66 30 39 36 37 38 2d 64 31 66 65 2d 34 62 64 36 2d 62 35 32 65 2d 64 32 36 61 32 64 63 31 35 65 66 61 } //50 $c4f09678-d1fe-4bd6-b52e-d26a2dc15efa
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*6+(#a_81_6  & 1)*6+(#a_81_7  & 1)*6+(#a_81_8  & 1)*6+(#a_81_9  & 1)*6+(#a_00_10  & 1)*20+(#a_00_11  & 1)*50+(#a_00_12  & 1)*50+(#a_00_13  & 1)*50) >=75
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_21{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4a 00 4a 00 0f 00 00 "
		
	strings :
		$a_81_0 = {39 66 53 4b 6b 6a 53 34 30 65 6a 54 4e 35 46 53 57 30 4c 68 2b 4e 55 4b 68 4d 52 6b 43 6a 65 64 2f } //50 9fSKkjS40ejTN5FSW0Lh+NUKhMRkCjed/
		$a_81_1 = {51 70 45 79 45 52 4b 4d 36 31 39 44 31 5a 4b 52 6d 6a 58 63 35 44 } //50 QpEyERKM619D1ZKRmjXc5D
		$a_81_2 = {51 70 45 79 45 52 4b 4d 36 31 39 44 31 5a 4b 52 6d 6a 58 63 35 44 6c 53 49 54 45 70 77 6f 58 33 50 55 6e 70 45 5a 4f 65 78 6c 50 55 4b 68 4d 52 6b 43 6a 65 64 } //50 QpEyERKM619D1ZKRmjXc5DlSITEpwoX3PUnpEZOexlPUKhMRkCjed
		$a_81_3 = {4b 38 6c 6e 54 38 42 67 6a 37 48 6f 6e 6a 39 46 65 6f 4a 78 33 6d 30 39 71 51 51 4b 70 4f 6b 73 } //20 K8lnT8Bgj7Honj9FeoJx3m09qQQKpOks
		$a_81_4 = {45 54 70 65 72 77 50 6c 6e 75 46 57 43 49 77 62 50 33 73 73 71 6e 77 75 50 42 39 41 47 } //20 ETperwPlnuFWCIwbP3ssqnwuPB9AG
		$a_81_5 = {34 5a 51 66 4d 59 53 45 6f 5a 47 56 4f 55 6d 6e 72 39 4a 35 59 62 54 4d 4e 55 56 79 59 74 4c } //20 4ZQfMYSEoZGVOUmnr9J5YbTMNUVyYtL
		$a_81_6 = {4b 46 37 4d 34 48 43 52 62 61 74 56 35 44 4d 47 57 6a 66 53 69 } //20 KF7M4HCRbatV5DMGWjfSi
		$a_81_7 = {52 61 44 79 66 68 64 33 59 5a 54 30 6f 35 69 78 6a 31 57 58 58 68 41 32 49 47 6f 74 32 6c 48 58 43 6c } //20 RaDyfhd3YZT0o5ixj1WXXhA2IGot2lHXCl
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_9 = {73 65 74 5f 4b 65 79 } //1 set_Key
		$a_81_10 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 } //1 System.Security.Cryptography
		$a_81_11 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_81_12 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //1 ResumeLayout
		$a_81_13 = {43 6f 6d 70 75 74 65 48 61 73 68 } //1 ComputeHash
		$a_81_14 = {43 6f 6e 76 65 72 74 } //1 Convert
	condition:
		((#a_81_0  & 1)*50+(#a_81_1  & 1)*50+(#a_81_2  & 1)*50+(#a_81_3  & 1)*20+(#a_81_4  & 1)*20+(#a_81_5  & 1)*20+(#a_81_6  & 1)*20+(#a_81_7  & 1)*20+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=74
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_22{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {44 69 66 67 72 } //1 Difgr
		$a_00_1 = {f3 fa e7 b5 90 e7 3f 5c f5 1d 7c fd 0d ee cb 12 7e c6 78 7e 9b 05 5f 61 c1 1f bd d5 e1 fe c0 82 37 5f f0 79 0b de 67 01 1b df 60 c1 c7 16 ee 3b 2e f8 41 } //1
		$a_00_2 = {0b 7e f0 82 1f b3 e0 bd 17 fc a8 05 3f 7a c1 8f 5c f0 03 6f f5 ef bd e0 87 2f d0 fe 7d 6f cf 3f e2 06 e8 7e ec 02 6d df 67 c1 f7 bf d5 f1 fd b8 05 68 3c } //1
		$a_00_3 = {eb 23 f5 6f bc e0 db 2e f8 0e b7 67 b2 c9 f9 7e 0b f0 7f f5 05 6f 7d 83 b7 58 f0 be 0b da de 09 df 6e c1 37 a9 67 36 b2 35 79 f0 56 0b 3e 7c c1 df 5b f0 } //1
		$a_00_4 = {8b 6e b8 2b f8 a2 5b f9 86 0b f8 e9 2d 17 90 a7 9f d0 7c d3 aa 83 37 19 cf 0d ec 61 5b e3 d8 dd cf 33 a6 81 b7 bb 95 93 9e 6e a9 cf fc 9e 70 af 1d fc c9 } //1
		$a_00_5 = {f1 dc f2 27 c4 af c6 c5 cf bd d5 41 74 9d f5 1d 6e d7 1e b8 6a db c1 17 2e 90 97 79 96 57 dd 0e da bf bf 7d c1 9c 23 5e 2d fc 86 aa cb b7 6e fb ff 01 3a } //1
		$a_00_6 = {ff de ac ea 8f 00 fa e6 ff e6 55 7f 04 8c 1f 73 8c b9 e1 27 de ea dd fe 21 0b cc 29 8d 9b e3 65 8e d7 ab fc be 07 2d fb 13 17 d0 cf 7c 67 0e 55 76 2e 82 } //1
		$a_00_7 = {5d be cd f1 3e c7 e8 53 7d d4 d0 eb 95 7a f4 e3 bf 1f b6 c0 5c db 3a ee f2 b5 f3 19 4c 7f 99 63 fb f9 29 d0 fa 7d c3 aa bf 28 98 2f e6 fc da 30 7d 19 5b } //1
		$a_00_8 = {5e b9 95 e2 f3 01 b7 3a f8 e0 05 1f 59 cf f7 e6 8a 7f b7 e0 fd eb f9 de 7e e2 f5 0d ac 5d 1f b8 e0 bd 16 f0 0d 5b be dc 82 b4 5b 83 b5 7f e5 db 73 68 de } //1
		$a_00_9 = {f5 f6 1c 1a 25 ba bf ba c0 58 78 b7 1b 2e ed 72 de 3a 1a 9c 9c 47 f7 ee 85 0b 5d e7 5b e8 be 7c e1 42 d7 b1 09 dd 7b 14 2e 74 3d be 42 f7 9e 85 0b 5d 72 } //1
		$a_00_10 = {22 74 ec b1 b7 f4 ac af 2f 59 f0 2e 0b 7a bd a7 97 31 f5 7e 85 23 af 79 de 79 c1 e4 d9 f9 34 cf 20 32 66 6c be ca 82 a6 d1 fe 15 17 68 d7 1f 5d 3a 1f 77 34 da } //1
	condition:
		((#a_81_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1) >=11
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_23{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_00_0 = {e8 ff ff f7 ff fd 6b fc 1a 7f d7 af 21 cf ef a9 3f 37 3d 7f 10 fd ff 37 f9 5d fe 9e df e4 d7 f8 db 7e ec 9f ff 5d ff ae 5f f3 f9 3f ff bb be 99 17 4d ba aa ab 8b 3a 5b a4 d3 6c b9 ac da 74 92 a7 f5 7a 99 16 cb f4 e9 97 af d3 45 35 cb c7 bf f1 6f 9c fc 6e 0a e3 e5 e9 af f1 6b 3c ff 35 7f 9d 5f e3 5f f9 5f ff b3 bf c6 c0 fd 8f 7e 8d df e4 77 fd 0d 7f cd 5f ef d7 f8 35 fe a9 5f f3 d7 f8 35 12 f9 ec c5 7f 41 bf a7 f8 ed d7 fa 35 18 bb 54 7e 05 de 78 cc cf 5f e3 0f 70 1f fe da bf c6 ef f9 87 ff 1a bf c6 6f c6 ff 73 3f ed 0f 79 08 ee ef 85 9f e9 af f5 6b b4 bf b6 f9 d0 7b 7e cf 5f eb d7 f8 8d 22 1f df f8 a4 bf c6 af f1 1b 78 7f fe 06 f4 f7 b7 bd bf c7 6d fe ae a5 9f 6f fe 09 1d 17 c6 6a 07 21 0f 7d fc 07 8c 9b 59 d6 66 bf c6 af f1 5f 61 d8 66 c0 } //1
		$a_00_1 = {ff dc af 19 b4 fb 3d 7f 8d 5f e3 1f 1a d7 4d 3d a5 df 79 0c a9 b6 fb 97 7a ed 7e cf 71 9d 97 15 35 e4 31 d1 d8 98 9c ff 5a af dd 93 e0 83 1f 3d ff bf 7d 76 fe 0b 99 fb 6f ff 1a 60 85 5f f7 d7 f8 bb fe 05 fa e5 4f fe 35 58 27 e0 f9 bb 7e ff 5f f3 d7 f8 3d ff 88 81 97 23 cf ab 4f 7e ad 5f f8 db e0 ff 5b c4 58 bf de af b5 45 70 7e bd 6f d1 e7 63 7c f6 6b 6c fd 1b bf 26 fd f9 08 bf ff 5f 3f f6 6b fc 1a 5b bf 31 c9 f7 b7 7e 8d df 01 7f ff b6 fa f3 b7 f9 d6 af f1 53 16 c6 af 4f 6f ff 1a bf d6 d6 6f 02 35 f0 ad 00 46 f7 9d df 72 e7 d7 fe 35 fe 69 ea 87 46 f3 9b 9b d7 53 0c e2 b7 7d f4 9c fe fd 85 5b bf 19 81 fa 6d b6 7e 73 fa f7 e1 2f c6 07 29 04 e4 60 87 fe 69 7e 53 02 ff 07 fd ba 24 32 e9 af 8f cf 7e 27 7c f6 9b e1 33 88 d1 c1 ef 4d 7f 32 a4 ff 8b d0 } //1
		$a_00_2 = {f8 bf 48 6e 4e 7f 03 fa e3 af fd bf ff ef ff 1b 32 f4 db d0 ff ff 24 fd fd 1f a4 9f bf 90 7e 3e c5 1b bf 1e be 7c f8 2f e1 a3 e6 37 07 30 c8 f7 c1 5f 86 bf d3 5f 17 dd fc ed f4 6b f3 5b e0 1b 02 fe eb 34 bf 25 7e fb 75 80 } //1
		$a_81_3 = {54 6f 49 6e 74 33 32 } //1 ToInt32
		$a_81_4 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //1 CompressionMode
		$a_81_5 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_81_6 = {50 69 78 65 6c 46 6f 72 6d 61 74 } //1 PixelFormat
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=6
 
}
rule Trojan_BAT_AgentTesla_MFP_MTB_24{
	meta:
		description = "Trojan:BAT/AgentTesla.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 1e 00 00 "
		
	strings :
		$a_00_0 = {24 61 35 65 36 30 65 32 61 2d 63 31 32 36 2d 34 62 39 36 2d 38 61 39 64 2d 35 34 34 62 30 37 66 65 61 37 61 66 } //10 $a5e60e2a-c126-4b96-8a9d-544b07fea7af
		$a_00_1 = {24 39 63 61 65 66 64 65 37 2d 65 36 66 66 2d 34 39 31 64 2d 39 32 33 30 2d 64 39 31 36 39 32 61 62 35 33 65 33 } //10 $9caefde7-e6ff-491d-9230-d91692ab53e3
		$a_00_2 = {24 39 66 39 37 63 33 38 63 2d 32 33 61 30 2d 34 66 35 61 2d 39 66 34 65 2d 38 61 61 66 65 31 62 65 36 36 32 62 } //10 $9f97c38c-23a0-4f5a-9f4e-8aafe1be662b
		$a_00_3 = {24 63 63 35 39 65 39 38 33 2d 33 36 65 63 2d 34 39 32 33 2d 38 62 39 66 2d 39 32 34 38 36 38 33 66 33 34 66 31 } //10 $cc59e983-36ec-4923-8b9f-9248683f34f1
		$a_00_4 = {24 36 64 66 31 66 66 62 31 2d 61 38 61 65 2d 34 38 64 34 2d 38 36 66 65 2d 62 62 31 38 37 62 32 65 39 31 39 31 } //10 $6df1ffb1-a8ae-48d4-86fe-bb187b2e9191
		$a_00_5 = {24 32 63 37 36 62 32 33 34 2d 33 32 61 34 2d 34 33 38 32 2d 38 63 38 36 2d 30 34 39 63 39 61 37 30 65 32 65 33 } //10 $2c76b234-32a4-4382-8c86-049c9a70e2e3
		$a_00_6 = {24 33 63 36 31 62 33 32 66 2d 36 66 63 37 2d 34 62 37 64 2d 38 36 63 33 2d 64 30 31 33 32 62 39 38 61 64 34 38 } //10 $3c61b32f-6fc7-4b7d-86c3-d0132b98ad48
		$a_00_7 = {24 66 32 65 61 65 65 37 30 2d 65 32 66 34 2d 34 63 64 64 2d 39 35 30 34 2d 32 61 36 38 34 64 37 34 66 61 65 64 } //10 $f2eaee70-e2f4-4cdd-9504-2a684d74faed
		$a_00_8 = {24 38 37 64 34 61 38 31 38 2d 62 30 39 38 2d 34 64 35 61 2d 38 37 34 63 2d 63 37 64 65 32 37 37 61 30 62 61 31 } //10 $87d4a818-b098-4d5a-874c-c7de277a0ba1
		$a_00_9 = {24 33 31 30 39 32 61 34 30 2d 31 31 62 30 2d 34 65 33 65 2d 39 61 66 61 2d 62 64 62 37 34 30 36 34 31 63 62 64 } //10 $31092a40-11b0-4e3e-9afa-bdb740641cbd
		$a_00_10 = {24 30 65 38 63 32 62 34 30 2d 65 34 66 32 2d 34 31 61 36 2d 62 62 36 61 2d 35 39 38 31 62 33 36 65 31 37 61 31 } //10 $0e8c2b40-e4f2-41a6-bb6a-5981b36e17a1
		$a_00_11 = {24 61 32 62 36 61 33 64 32 2d 38 62 61 36 2d 34 30 34 38 2d 39 33 39 35 2d 32 63 61 36 63 63 33 34 30 31 32 38 } //10 $a2b6a3d2-8ba6-4048-9395-2ca6cc340128
		$a_00_12 = {24 35 34 62 39 31 61 66 33 2d 39 32 63 64 2d 34 37 62 31 2d 62 39 62 35 2d 30 62 34 38 61 65 64 64 62 33 34 63 } //10 $54b91af3-92cd-47b1-b9b5-0b48aeddb34c
		$a_00_13 = {24 37 35 62 35 62 62 38 39 2d 37 39 33 34 2d 34 34 61 37 2d 38 65 64 65 2d 62 65 65 63 66 61 37 34 63 64 61 64 } //10 $75b5bb89-7934-44a7-8ede-beecfa74cdad
		$a_00_14 = {24 37 62 32 34 33 31 65 37 2d 66 35 65 37 2d 34 37 30 37 2d 62 38 30 39 2d 31 32 65 34 32 61 38 35 34 65 65 65 } //10 $7b2431e7-f5e7-4707-b809-12e42a854eee
		$a_00_15 = {57 15 a2 2b 09 01 00 00 00 10 00 23 00 00 00 } //3
		$a_81_16 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //2 ResumeLayout
		$a_81_17 = {43 6f 70 79 54 6f } //2 CopyTo
		$a_81_18 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //2 MemoryStream
		$a_81_19 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //2 GetExecutingAssembly
		$a_81_20 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //2 RijndaelManaged
		$a_81_21 = {52 66 63 32 38 39 38 44 65 72 69 76 65 42 79 74 65 73 } //2 Rfc2898DeriveBytes
		$a_81_22 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //2 SymmetricAlgorithm
		$a_81_23 = {4e 75 6c 6c 61 62 6c 65 } //2 Nullable
		$a_81_24 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //2 System.Threading
		$a_81_25 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //2 CreateDecryptor
		$a_81_26 = {73 65 74 5f 4b 65 79 53 69 7a 65 } //2 set_KeySize
		$a_81_27 = {73 65 74 5f 42 6c 6f 63 6b 53 69 7a 65 } //2 set_BlockSize
		$a_81_28 = {45 6e 63 6f 64 69 6e 67 } //2 Encoding
		$a_81_29 = {53 79 73 74 65 6d 2e 54 65 78 74 } //2 System.Text
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10+(#a_00_11  & 1)*10+(#a_00_12  & 1)*10+(#a_00_13  & 1)*10+(#a_00_14  & 1)*10+(#a_00_15  & 1)*3+(#a_81_16  & 1)*2+(#a_81_17  & 1)*2+(#a_81_18  & 1)*2+(#a_81_19  & 1)*2+(#a_81_20  & 1)*2+(#a_81_21  & 1)*2+(#a_81_22  & 1)*2+(#a_81_23  & 1)*2+(#a_81_24  & 1)*2+(#a_81_25  & 1)*2+(#a_81_26  & 1)*2+(#a_81_27  & 1)*2+(#a_81_28  & 1)*2+(#a_81_29  & 1)*2) >=41
 
}