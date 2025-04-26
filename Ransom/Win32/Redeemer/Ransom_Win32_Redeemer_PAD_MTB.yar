
rule Ransom_Win32_Redeemer_PAD_MTB{
	meta:
		description = "Ransom:Win32/Redeemer.PAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 6d 56 6b 5a 57 56 74 5a 58 49 67 55 6d 46 75 63 32 39 74 64 32 46 79 5a 53 41 74 49 46 6c 76 64 58 49 67 52 47 46 30 59 53 42 4a 63 79 42 46 62 6d 4e 79 65 58 42 30 5a 57 51 3d } //1 UmVkZWVtZXIgUmFuc29td2FyZSAtIFlvdXIgRGF0YSBJcyBFbmNyeXB0ZWQ=
		$a_01_1 = {64 6e 4e 7a 59 57 52 74 61 57 34 67 5a 47 56 73 5a 58 52 6c 49 48 4e 6f 59 57 52 76 64 33 4d 67 4c 30 46 73 62 43 41 76 55 58 56 70 5a 58 51 3d } //1 dnNzYWRtaW4gZGVsZXRlIHNoYWRvd3MgL0FsbCAvUXVpZXQ=
		$a_01_2 = {68 65 6c 70 64 65 63 72 79 70 74 6d 79 66 69 6c 65 73 } //1 helpdecryptmyfiles
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 52 65 64 65 65 6d 65 72 } //1 SOFTWARE\Redeemer
		$a_01_4 = {52 65 64 65 65 6d 65 72 4d 75 74 65 78 } //1 RedeemerMutex
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}