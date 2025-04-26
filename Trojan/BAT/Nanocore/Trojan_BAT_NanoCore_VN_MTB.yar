
rule Trojan_BAT_NanoCore_VN_MTB{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 06 16 1f ?? 9c 06 17 1f ?? 9c 06 28 ?? ?? ?? 0a 0b 38 ?? ?? ?? 00 07 2a 90 09 06 00 00 28 ?? ?? ?? 06 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_2{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {56 00 4d 00 2e 00 4d 00 61 00 69 00 6e 00 } //2 VM.Main
		$a_01_1 = {50 00 45 00 2e 00 4d 00 61 00 69 00 6e 00 } //2 PE.Main
		$a_01_2 = {4c 00 6f 00 61 00 64 00 } //2 Load
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}
rule Trojan_BAT_NanoCore_VN_MTB_3{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 0b 07 16 20 ?? ?? ?? ?? 28 ?? ?? ?? 06 a2 07 17 20 ?? ?? ?? ?? 28 ?? ?? ?? 06 a2 07 18 20 ?? ?? ?? ?? 28 ?? ?? ?? 06 a2 07 a2 06 18 14 a2 06 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_4{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 0c 08 14 18 8d ?? ?? ?? 01 25 16 7e ?? ?? ?? 04 a2 25 17 72 ?? ?? ?? 70 a2 6f ?? ?? ?? 0a 0d 2a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_5{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 06 14 18 8d ?? ?? ?? 01 25 16 7e ?? ?? ?? 04 a2 25 17 72 ?? ?? ?? 70 a2 6f ?? ?? ?? 0a 26 2a 90 09 0c 00 00 03 72 ?? ?? ?? 70 6f ?? ?? ?? 0a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_6{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0b 07 72 b9 00 00 70 28 ?? ?? ?? 06 0c 08 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 0a 06 14 72 ?? ?? ?? 70 18 8d ?? ?? ?? 01 0d 09 16 14 a2 00 09 17 14 a2 00 09 14 14 14 17 28 ?? ?? ?? 0a 26 00 2a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_7{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 09 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 07 08 93 61 d1 13 ?? 06 11 ?? 6f ?? ?? ?? 0a 26 08 04 6f ?? ?? ?? 0a 17 59 33 ?? 16 0c 2b ?? 08 1f ?? 58 1f ?? 59 0c 09 18 58 0d 09 03 6f ?? ?? ?? 0a 17 59 31 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_8{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0b 16 0c 16 0d 2b ?? 03 09 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 07 08 93 61 d1 13 ?? 06 11 ?? 6f ?? ?? ?? 0a 26 08 04 6f ?? ?? ?? 0a 17 59 33 ?? 16 0c 2b ?? 08 17 58 0c 09 18 58 0d 09 03 6f ?? ?? ?? 0a 17 59 31 ?? 06 6f ?? ?? ?? 0a 2a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_9{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {4f 4a 49 41 55 48 44 4f 55 48 44 55 4f 41 44 47 } //1 OJIAUHDOUHDUOADG
		$a_81_1 = {70 61 73 73 77 6f 72 64 } //1 password
		$a_81_2 = {42 6c 6f 63 6b 43 6f 70 79 } //1 BlockCopy
		$a_81_3 = {24 32 32 66 65 36 34 38 66 2d 32 65 36 62 2d 34 62 38 61 2d 62 62 35 62 2d 30 32 30 66 34 65 33 38 32 38 61 34 } //1 $22fe648f-2e6b-4b8a-bb5b-020f4e3828a4
		$a_81_4 = {53 6e 61 6b 65 54 72 6f 6f 70 73 } //1 SnakeTroops
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Trojan_BAT_NanoCore_VN_MTB_10{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 02 06 28 ?? ?? ?? 06 6f ?? ?? ?? 0a 72 ?? ?? ?? 70 72 ?? ?? ?? 70 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 0b 07 6f ?? ?? ?? 0a 18 9a 14 19 8d ?? ?? ?? 01 25 16 7e ?? ?? ?? 04 a2 25 17 7e ?? ?? ?? 04 a2 25 18 72 ?? ?? ?? 70 a2 0c 08 6f ?? ?? ?? 0a 26 16 28 ?? ?? ?? 0a 00 16 0d 2b ?? 09 2a 90 09 11 00 00 02 28 ?? ?? ?? 06 28 ?? ?? ?? 06 0a 28 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_11{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {4f 4a 49 41 55 48 44 4f 55 48 44 55 4f 41 44 47 } //1 OJIAUHDOUHDUOADG
		$a_81_1 = {70 61 73 73 77 6f 72 64 } //1 password
		$a_81_2 = {75 68 66 73 69 68 66 6e 66 } //1 uhfsihfnf
		$a_81_3 = {42 6c 6f 63 6b 43 6f 70 79 } //1 BlockCopy
		$a_81_4 = {24 65 66 64 38 32 32 39 36 2d 32 34 37 65 2d 34 36 64 63 2d 62 63 62 61 2d 62 38 37 61 31 31 66 34 62 39 32 30 } //1 $efd82296-247e-46dc-bcba-b87a11f4b920
		$a_01_5 = {53 00 6e 00 61 00 6b 00 65 00 49 00 64 00 41 00 70 00 70 00 } //1 SnakeIdApp
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule Trojan_BAT_NanoCore_VN_MTB_12{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_1 = {44 65 62 75 67 67 65 72 } //1 Debugger
		$a_81_2 = {61 73 64 61 64 73 61 64 73 61 64 73 61 64 61 } //1 asdadsadsadsada
		$a_81_3 = {52 65 61 64 42 79 74 65 } //1 ReadByte
		$a_81_4 = {42 6c 6f 63 6b 43 6f 70 79 } //1 BlockCopy
		$a_81_5 = {57 72 69 74 65 4c 69 6e 65 } //1 WriteLine
		$a_81_6 = {24 35 34 36 63 66 62 39 34 2d 31 35 39 35 2d 34 33 37 31 2d 62 32 65 37 2d 33 36 37 61 38 64 36 66 36 31 30 30 } //1 $546cfb94-1595-4371-b2e7-367a8d6f6100
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}
rule Trojan_BAT_NanoCore_VN_MTB_13{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {08 17 58 20 ?? ?? ?? 00 5f 0c 09 11 ?? 08 95 58 20 ?? ?? ?? 00 5f 0d 11 ?? 08 95 13 ?? 11 ?? 08 11 ?? 09 95 9e 11 ?? 09 11 ?? 9e 11 ?? 11 ?? d4 06 11 ?? d4 91 11 ?? 11 ?? 08 95 11 ?? 09 95 58 20 ?? ?? ?? 00 5f 95 61 28 ?? ?? ?? 0a 9c 00 11 ?? 17 6a 58 13 ?? 11 ?? 11 ?? 8e 69 17 59 6a fe ?? 16 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_NanoCore_VN_MTB_14{
	meta:
		description = "Trojan:BAT/NanoCore.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_1 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 CheckRemoteDebuggerPresent
		$a_81_2 = {73 64 61 64 73 61 64 61 64 61 73 64 } //1 sdadsadadasd
		$a_81_3 = {52 65 61 64 42 79 74 65 } //1 ReadByte
		$a_81_4 = {42 6c 6f 63 6b 43 6f 70 79 } //1 BlockCopy
		$a_81_5 = {57 72 69 74 65 } //1 Write
		$a_81_6 = {24 38 36 35 35 61 63 36 37 2d 39 65 62 63 2d 34 38 39 36 2d 62 35 65 39 2d 61 35 36 37 30 62 62 65 39 63 61 38 } //1 $8655ac67-9ebc-4896-b5e9-a5670bbe9ca8
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}