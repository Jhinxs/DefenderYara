
rule Trojan_Win32_Emotetcrypt_HR_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.HR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_81_0 = {6a 56 70 3e 30 23 4c 7a 36 50 65 53 2b 28 56 69 61 50 21 38 53 73 41 46 21 68 7a 26 2a 39 71 23 6f 76 59 61 74 4d 49 26 72 58 4b 78 36 71 47 2a 47 35 78 7a 5f 33 28 68 6b 76 36 64 4d 77 64 3f 61 4b 4e 6a 4f 6a 6d 3f 64 59 29 21 2b 21 5e 4f 46 54 59 47 56 } //1 jVp>0#Lz6PeS+(ViaP!8SsAF!hz&*9q#ovYatMI&rXKx6qG*G5xz_3(hkv6dMwd?aKNjOjm?dY)!+!^OFTYGV
		$a_81_1 = {32 28 4d 29 7a 29 5e 33 5e 43 24 6e 63 28 6d 4e 2a 64 6f 4a 4f 62 77 58 30 30 26 45 29 6b 6f 4b 58 58 68 75 63 72 55 52 24 3c 26 58 23 43 2b 55 59 41 4b 6e 76 29 24 33 75 33 44 76 69 76 73 52 3c 73 77 59 40 52 79 71 62 44 53 31 6f 51 4e 61 28 53 57 50 50 4f 38 5f 50 62 75 6c 4a 52 45 4b 40 72 21 75 63 50 2b 76 42 31 41 48 37 6b 4e 25 } //1 2(M)z)^3^C$nc(mN*doJObwX00&E)koKXXhucrUR$<&X#C+UYAKnv)$3u3DvivsR<swY@RyqbDS1oQNa(SWPPO8_PbulJREK@r!ucP+vB1AH7kN%
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}