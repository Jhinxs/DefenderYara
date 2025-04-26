
rule TrojanDownloader_O97M_Pyordonofz{
	meta:
		description = "TrojanDownloader:O97M/Pyordonofz,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {53 68 65 6c 6c 20 28 71 73 6e 2e 76 66 71 2e 54 65 78 74 20 26 20 67 6c 7a 65 68 73 6b 69 71 6f 63 76 67 71 64 66 29 } //1 Shell (qsn.vfq.Text & glzehskiqocvgqdf)
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_Pyordonofz_2{
	meta:
		description = "TrojanDownloader:O97M/Pyordonofz,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 0e 00 00 "
		
	strings :
		$a_01_0 = {68 31 55 74 59 74 52 70 3a 59 2f 34 6b 2f 58 67 6e 52 6c 58 31 6e 34 74 4c 68 62 6b 2e 6b 4c 63 6b 6f 52 6d 2f 31 69 4c 52 6d 61 31 4c 67 55 65 2f 34 55 6d 69 6b 63 6b 72 31 4c 6f 73 52 6f 58 34 66 74 58 2e 31 6b 70 58 6e 67 34 } //1 h1UtYtRp:Y/4k/XgnRlX1n4tLhbk.kLckoRm/1iLRma1LgUe/4Umikckr1LosRoX4ftX.1kpXng4
		$a_01_1 = {34 70 6f 4c 4c 77 4c 65 72 6b 73 4b 4c 68 55 65 6c 55 6c 52 2e 31 4b 65 34 78 58 65 20 6b 2d 4b 59 45 58 78 65 52 58 63 34 75 74 58 69 31 52 6f 6e 31 55 50 6f 6b 6c 4b 69 6b 63 4c 4c 79 20 34 52 42 6b 79 70 31 52 61 73 31 4c 73 } //1 4poLLwLerksKLhUelUlR.1Ke4xXe k-KYEXxeRXc4utXi1Ron1UPoklKikcLLy 4RBkyp1Ras1Ls
		$a_01_2 = {53 68 65 6c 6c 20 28 72 62 6c 2e 62 6e 65 2e 54 65 78 74 20 26 20 67 71 71 62 63 62 66 64 61 70 75 6e 6f 69 6e 71 29 } //1 Shell (rbl.bne.Text & gqqbcbfdapunoinq)
		$a_01_3 = {53 68 65 6c 6c 20 28 73 73 7a 2e 64 70 66 2e 54 65 78 74 20 26 20 6d 63 7a 70 6a 77 6d 66 67 6d 78 69 6b 6c 76 67 29 } //1 Shell (ssz.dpf.Text & mczpjwmfgmxiklvg)
		$a_01_4 = {22 42 65 72 72 74 6f 6d 74 74 6f 65 6c 28 77 73 2e 6f 65 29 2f 74 2e 65 65 29 4f 66 57 3a 77 20 67 53 64 2e 70 69 28 5b 4e 67 2e 6d 74 6a 2e 43 72 74 65 6e 6f 68 2e 6e 65 63 68 69 54 61 70 6d 65 6d 6c 65 27 2d 74 57 6e 63 3b 2f 20 50 6e 2e 52 62 61 53 47 6e 24 74 79 2e 53 46 6c 4e 53 65 69 45 65 70 65 49 6c 69 6d 77 69 6d 5d 44 27 65 74 65 70 65 64 29 } //1 "Berrtomttoel(ws.oe)/t.ee)OfW:w gSd.pi([Ng.mtj.Crtenoh.nechiTapmemle'-tWnc;/ Pn.RbaSGn$ty.SFlNSeiEepeIlimwim]D'eteped)
		$a_01_5 = {22 66 39 31 74 2e 65 78 65 27 2c 27 25 54 4d 50 25 5c 71 77 65 71 77 65 2e 65 78 65 27 29 3b 22 } //1 "f91t.exe','%TMP%\qweqwe.exe');"
		$a_01_6 = {22 2f 6c 77 65 64 62 55 72 63 29 67 4e 20 68 2e 78 70 62 50 2f 69 6b 61 74 74 65 44 65 65 6e 65 2f 61 6f 33 74 65 27 6e 20 7c 27 74 65 74 65 58 3a 6c 51 70 6e 6f 74 2e 4b 65 77 6e 72 6f 2d 59 53 6a 69 69 74 20 28 65 69 74 57 73 73 43 78 2f 65 78 73 29 70 2e 6f 28 22 } //1 "/lwedbUrc)gN h.xpbP/ikatteDeene/ao3te'n |'teteX:lQpnot.Kewnro-YSjiit (eitWssCx/exs)p.o("
		$a_01_7 = {4a 6b 78 36 31 71 61 68 50 20 3d 20 53 74 72 43 6f 6e 76 28 65 74 41 30 67 55 28 51 6f 52 65 34 66 31 20 26 20 51 65 69 61 54 56 72 20 26 20 69 37 45 48 47 75 42 33 20 26 20 49 38 34 36 73 20 26 20 58 6f 4e 62 48 79 68 70 20 26 20 63 47 77 4f 61 52 7a 71 20 26 20 75 33 58 64 39 66 77 5a 46 20 26 20 79 37 74 6d 59 49 36 72 35 20 26 20 67 77 66 49 69 36 6a 53 29 2c 20 76 62 55 6e 69 63 6f 64 65 29 } //1 Jkx61qahP = StrConv(etA0gU(QoRe4f1 & QeiaTVr & i7EHGuB3 & I846s & XoNbHyhp & cGwOaRzq & u3Xd9fwZF & y7tmYI6r5 & gwfIi6jS), vbUnicode)
		$a_01_8 = {51 33 6c 6b 4d 67 36 4c 61 20 3d 20 22 44 6f 76 4c 33 64 33 64 79 35 73 62 32 31 6c 62 6d 45 75 5a 58 4d 76 61 54 4a 70 4c 32 6c 75 59 79 39 79 5a 58 46 31 5a 58 4e 30 4c 33 68 7a 59 33 56 33 59 57 52 34 5a 32 73 76 4a 79 35 54 63 47 78 70 64 43 67 6e 4c 43 63 70 4f 79 52 75 59 57 31 6c 49 44 30 67 4a 48 4a 68 62 6d 52 76 62 53 35 75 5a 58 68 30 4b 44 45 22 } //1 Q3lkMg6La = "DovL3d3dy5sb21lbmEuZXMvaTJpL2luYy9yZXF1ZXN0L3hzY3V3YWR4Z2svJy5TcGxpdCgnLCcpOyRuYW1lID0gJHJhbmRvbS5uZXh0KDE"
		$a_01_9 = {6b 6f 32 50 76 20 3d 20 73 42 62 38 6e 20 26 20 6c 52 4c 51 67 75 20 26 20 61 48 69 42 50 20 26 20 73 61 4f 49 32 39 52 20 26 20 41 4d 6a 4e 76 68 75 58 20 26 20 70 70 78 72 41 76 46 53 20 26 20 4e 34 52 6f 4d 66 20 26 20 71 51 74 62 66 61 } //1 ko2Pv = sBb8n & lRLQgu & aHiBP & saOI29R & AMjNvhuX & ppxrAvFS & N4RoMf & qQtbfa
		$a_01_10 = {28 63 7a 68 74 47 72 64 29 2e 52 75 6e 24 20 72 72 70 47 77 41 47 20 2b 20 44 66 53 67 55 59 41 47 77 57 59 20 2b 20 50 78 68 70 72 56 4d 65 20 2b } //1 (czhtGrd).Run$ rrpGwAG + DfSgUYAGwWY + PxhprVMe +
		$a_03_11 = {2b 27 68 74 74 70 3a 2f 2f 72 6f 6d 66 75 6c 2e 63 6f 6d 2f [0-10] 27 2b 24 } //1
		$a_01_12 = {28 4e 68 79 30 4f 62 6a 68 63 77 23 54 7c 75 75 65 6e 30 4f 68 76 2f 5a 65 63 46 6f 6a 66 6e 75 2a 31 45 70 79 6f 6d 71 64 67 46 69 6d 67 2b 27 68 77 75 71 3b 2f 32 64 72 66 75 71 73 66 66 67 6c 6d 30 77 72 72 32 61 65 6e 6c 6f 31 71 6a 73 40 68 3f 32 } //1 (Nhy0Objhcw#T|uuen0Ohv/ZecFojfnu*1EpyomqdgFimg+'hwuq;/2drfuqsffglm0wrr2aenlo1qjs@h?2
		$a_01_13 = {2b 4f 65 77 2e 4f 64 6d 68 66 77 22 22 55 7c 75 75 66 6e 31 4f 66 75 2f 5a 67 63 46 6f 6a 67 6e 75 2c 2e 45 6f 79 6e 6c 70 62 67 47 6b 6e 68 2b 29 68 77 76 72 3b 30 2f 77 68 64 6f 62 6a 6d 30 73 76 70 73 78 71 73 2e 72 72 6a 30 68 64 7c } //1 +Oew.Odmhfw""U|uufn1Ofu/ZgcFojgnu,.EoynlpbgGknh+)hwvr;0/whdobjm0svpsxqs.rrj0hd|
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_03_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=1
 
}