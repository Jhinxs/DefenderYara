
rule Trojan_Win32_NSISInject_RI_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {2b 5c 24 04 89 d8 c1 e8 1f 01 d8 2b 3c 24 d1 f8 89 f9 c1 e9 1f 01 f9 d1 f9 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_NSISInject_RI_MTB_2{
	meta:
		description = "Trojan:Win32/NSISInject.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {57 6a 40 68 00 30 00 00 68 00 09 3d 00 33 c9 89 45 f0 33 ff 89 45 f4 57 89 4d fc 89 45 ec ff d3 [0-25] 56 51 68 80 00 00 00 6a 03 51 6a 01 68 00 00 00 80 ff 75 10 ff 15 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_NSISInject_RI_MTB_3{
	meta:
		description = "Trojan:Win32/NSISInject.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {68 00 5a 62 02 e8 ?? ?? ?? ?? 83 c4 04 89 45 f0 68 00 5a 62 02 68 ff 00 00 00 8b 45 f0 50 e8 ?? ?? ?? ?? 83 c4 0c 83 7d f0 00 75 07 33 c0 e9 ?? ?? ?? ?? 8d 8d c0 fd ff ff 51 68 03 01 00 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_NSISInject_RI_MTB_4{
	meta:
		description = "Trojan:Win32/NSISInject.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {68 00 09 3d 00 6a 08 ff 15 ?? ?? ?? ?? 50 ff 15 ?? ?? ?? ?? 89 45 ?? 83 7d ?? 00 75 05 e9 ?? ?? ?? ?? 68 00 09 3d 00 [0-70] 89 45 ?? 6a 40 68 00 30 00 00 8b [0-03] 6a 00 ff 15 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_NSISInject_RI_MTB_5{
	meta:
		description = "Trojan:Win32/NSISInject.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 66 74 65 72 73 75 70 70 65 72 2e 69 6e 69 } //1 Aftersupper.ini
		$a_01_1 = {4d 69 64 74 73 61 6d 6c 69 6e 67 2e 46 6f 72 } //1 Midtsamling.For
		$a_01_2 = {53 75 73 70 65 6e 64 79 6a 72 2e 69 6e 69 } //1 Suspendyjr.ini
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 49 72 72 65 76 6f 63 61 62 6c 79 } //1 Software\Irrevocably
		$a_01_4 = {75 6e 63 69 76 69 6c 6e 65 73 73 2e 64 6c 6c } //1 uncivilness.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Win32_NSISInject_RI_MTB_6{
	meta:
		description = "Trojan:Win32/NSISInject.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {4c 00 69 00 6e 00 6a 00 65 00 76 00 6f 00 67 00 74 00 65 00 72 00 73 00 31 00 38 00 38 00 2e 00 69 00 6e 00 69 00 } //1 Linjevogters188.ini
		$a_01_1 = {45 00 66 00 74 00 65 00 72 00 73 00 70 00 6f 00 72 00 65 00 74 00 2e 00 42 00 72 00 61 00 } //1 Eftersporet.Bra
		$a_01_2 = {6d 00 65 00 74 00 61 00 73 00 74 00 6f 00 6d 00 61 00 2e 00 69 00 6e 00 69 00 } //1 metastoma.ini
		$a_01_3 = {41 00 6d 00 70 00 68 00 69 00 73 00 74 00 6f 00 6d 00 75 00 6d 00 2e 00 64 00 6c 00 6c 00 } //1 Amphistomum.dll
		$a_01_4 = {4b 00 72 00 65 00 61 00 74 00 69 00 63 00 2e 00 69 00 6e 00 69 00 } //1 Kreatic.ini
		$a_01_5 = {55 00 65 00 6e 00 69 00 67 00 68 00 65 00 64 00 2e 00 64 00 6c 00 6c 00 } //1 Uenighed.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}