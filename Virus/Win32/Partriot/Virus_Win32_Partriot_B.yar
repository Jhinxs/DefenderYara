
rule Virus_Win32_Partriot_B{
	meta:
		description = "Virus:Win32/Partriot.B,SIGNATURE_TYPE_PEHSTR,20 00 1f 00 05 00 00 "
		
	strings :
		$a_01_0 = {4d 61 70 56 69 65 77 4f 66 46 69 6c 65 } //10 MapViewOfFile
		$a_01_1 = {41 3a 5c 57 69 6e 33 32 2e 46 72 69 65 6e 64 6c 79 2e 68 74 6d } //1 A:\Win32.Friendly.htm
		$a_01_2 = {3a 3a 3a 3a 3a 20 57 69 6e 33 32 2e 46 72 69 65 6e 64 6c 79 20 68 61 73 20 79 6f 75 20 3a 3a 3a 3a 3a } //1 ::::: Win32.Friendly has you :::::
		$a_01_3 = {55 8b ec 8b 45 0c 8b 40 2c 25 df df df df 3d 44 52 57 45 74 37 3d 53 50 49 44 74 30 25 ff ff ff 00 3d 4b 41 56 00 74 24 ff 75 0c ff 75 08 e8 1d 00 00 00 85 c0 75 15 8b 55 08 80 3a 41 74 0d 50 68 20 4e 00 00 ff 93 ab 14 00 00 58 c9 c2 08 00 } //10
		$a_01_4 = {33 c9 e8 3f 02 00 00 85 c0 0f 84 03 02 00 00 89 45 f8 e8 3f 02 00 00 85 c0 0f 84 ea 01 00 00 89 45 f4 66 81 38 4d 5a 0f 85 cc 01 00 00 66 83 78 18 40 0f 85 c1 01 00 00 8b 40 3c 89 45 e4 03 45 f4 81 38 50 45 00 00 0f 85 ac 01 00 00 80 78 ff 2a 0f 84 99 01 00 00 8b f8 0f b7 47 06 48 6b c0 28 } //10
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10) >=31
 
}