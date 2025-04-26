
rule PWS_Win32_Predator_KM_MTB{
	meta:
		description = "PWS:Win32/Predator.KM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {c1 e9 05 03 8d ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8b ?? ?? ?? ?? ?? 31 ?? ?? ?? ?? ?? 81 3d ?? ?? ?? ?? 72 07 00 00 75 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule PWS_Win32_Predator_KM_MTB_2{
	meta:
		description = "PWS:Win32/Predator.KM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {03 ce 89 4d e0 8b ce c1 e9 05 03 4d ?? 89 45 ?? 89 1d ?? ?? ?? ?? 89 1d ?? ?? ?? ?? 8b 45 e0 31 45 fc 81 3d ?? ?? ?? ?? 72 07 00 00 75 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule PWS_Win32_Predator_KM_MTB_3{
	meta:
		description = "PWS:Win32/Predator.KM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {c1 e8 05 89 45 ?? c7 05 ?? ?? ?? ?? 2e ce 50 91 8b 85 ?? ?? ?? ?? ?? 45 ?? 33 d2 81 3d ?? ?? ?? ?? 12 09 00 00 75 } //1
		$a_00_1 = {8a 04 0e 88 04 11 41 3b cb 72 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}
rule PWS_Win32_Predator_KM_MTB_4{
	meta:
		description = "PWS:Win32/Predator.KM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_80_0 = {43 6f 69 6e 73 5c 25 73 5c 77 61 6c 6c 65 74 2e 64 61 74 } //Coins\%s\wallet.dat  1
		$a_80_1 = {50 61 73 73 77 6f 72 64 73 4c 69 73 74 2e 74 78 74 } //PasswordsList.txt  1
		$a_80_2 = {43 6f 69 6e 73 5c 4e 61 6d 65 63 6f 69 6e 5c 77 61 6c 6c 65 74 2e 64 61 74 } //Coins\Namecoin\wallet.dat  1
		$a_80_3 = {43 6f 69 6e 73 5c 4d 6f 6e 65 72 6f 5c 77 61 6c 6c 65 74 5f 25 64 2e 64 61 74 } //Coins\Monero\wallet_%d.dat  1
		$a_80_4 = {43 6f 6f 6b 69 65 4c 69 73 74 2e 74 78 74 } //CookieList.txt  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1) >=5
 
}
rule PWS_Win32_Predator_KM_MTB_5{
	meta:
		description = "PWS:Win32/Predator.KM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_02_0 = {c1 eb 05 03 9d ?? ?? ?? ?? 89 85 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 8b 85 ?? ?? ?? ?? 31 85 ?? ?? ?? ?? 81 3d ?? ?? ?? ?? 72 07 00 00 75 } //1
		$a_02_1 = {c1 e9 05 03 4d ?? c7 05 ?? ?? ?? ?? b4 1a 3a df 89 45 ?? 89 35 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 8b 45 ?? 31 45 ?? 81 3d ?? ?? ?? ?? 72 07 00 00 75 } //1
		$a_02_2 = {c1 e9 05 03 4c 24 ?? c7 05 ?? ?? ?? ?? b4 1a 3a df 89 44 24 ?? 89 35 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 8b 44 24 ?? 31 44 24 ?? 81 3d ?? ?? ?? ?? 72 07 00 00 75 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=1
 
}