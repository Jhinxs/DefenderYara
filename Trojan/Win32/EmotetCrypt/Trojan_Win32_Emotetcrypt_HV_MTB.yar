
rule Trojan_Win32_Emotetcrypt_HV_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.HV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_03_0 = {0f b6 04 30 8b 54 24 10 0f b6 14 0a 03 c2 99 bd ?? ?? ?? ?? f7 fd 8b 44 24 60 8b 6c 24 1c 2b 54 24 50 03 d3 03 54 24 54 03 54 24 58 8a 04 02 30 04 2f 45 3b 6c 24 68 89 6c 24 1c 0f 82 } //1
		$a_81_1 = {67 49 71 4c 54 77 52 65 3f 26 33 78 6e 56 2b 68 4d 43 31 56 44 54 54 56 23 25 5f 69 66 62 57 69 40 43 53 24 3f 46 72 49 76 65 3f 39 36 23 6a 43 48 5f 38 58 35 3e 4b 62 59 51 33 30 37 4a 79 74 49 6b 38 76 5a 61 71 57 47 32 32 61 46 61 48 74 69 67 28 5e 65 77 5f 30 24 34 57 54 7a 2a 65 53 3c 6e 48 64 38 53 4a 5e 64 71 59 70 21 33 6c 70 29 } //1 gIqLTwRe?&3xnV+hMC1VDTTV#%_ifbWi@CS$?FrIve?96#jCH_8X5>KbYQ307JytIk8vZaqWG22aFaHtig(^ew_0$4WTz*eS<nHd8SJ^dqYp!3lp)
		$a_81_2 = {7a 41 3f 58 3c 73 52 30 4a 70 23 35 51 6a 58 3f 45 7a 6c 77 58 43 68 74 2a 74 42 31 26 3c 44 52 24 29 43 71 33 42 75 76 63 4e 41 69 39 4b 31 28 52 43 31 65 3f 58 54 63 24 5a 29 76 30 38 32 36 54 25 66 50 28 66 71 6e 64 74 70 6e 31 5f 44 77 52 32 46 78 4d 72 51 6a 63 68 4c 59 5f 79 28 40 21 26 47 6b 45 39 59 51 44 70 6e 54 } //1 zA?X<sR0Jp#5QjX?EzlwXCht*tB1&<DR$)Cq3BuvcNAi9K1(RC1e?XTc$Z)v0826T%fP(fqndtpn1_DwR2FxMrQjchLY_y(@!&GkE9YQDpnT
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=1
 
}