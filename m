Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HHGAJ41wTWpA0AEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 23:33:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A6271FC4B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 23:33:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27E6A40AD3
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2026 21:33:00 +0000 (UTC)
Received: from [10.88.0.4] (40.107.139.34.bc.googleusercontent.com [34.139.107.40])
	by lists.linaro.org (Postfix) with ESMTP id 7764E40A95
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 21:32:54 +0000 (UTC)
MIME-Version: 1.0
From: Webmail Support <noreply@lists.linaro.org>
To: linaro-mm-sig@lists.linaro.org
X-Priority: 2
Date: Tue, 07 Jul 2026 21:32:54 +0000
Message-ID: <e61d3d58-aef8-4089-85a0-fe2f4dc0bec1@example.com>
X-Spamd-Bar: ++++++++
X-Spam-Level: ********
Message-ID-Hash: HQEXNE3MFZ5G4IAZTP346GPIHBIC7XO2
X-Message-ID-Hash: HQEXNE3MFZ5G4IAZTP346GPIHBIC7XO2
X-MailFrom: <>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Validate Message Report
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HQEXNE3MFZ5G4IAZTP346GPIHBIC7XO2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8191627788482978320=="
X-Rspamd-Action: add header
X-Spamd-Result: default: False [14.59 / 15.00];
	URIBL_BLACK(7.50)[edgeone.dev:url];
	SPAM_FLAG(5.00)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	CTYPE_MIXED_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	MIME_HTML_ONLY(0.20)[];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/related,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~,3:+];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	HAS_X_PRIO_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[noreply@lists.linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[noreply@lists.linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DOM_EQ_FROM_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+mx];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,edgeone.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23A6271FC4B
X-Spam: Yes

--===============8191627788482978320==
Content-Type: multipart/related; boundary="===============3191884302973714644=="

--===============3191884302973714644==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64

PCFET0NUWVBFIEhUTUwgUFVCTElDICItLy9XM0MvL0RURCBIVE1MIDQuMDEgVHJhbnNpdGlvbmFs
Ly9FTiIgImh0dHA6Ly93d3cudzMub3JnL1RSL2h0bWw0L2xvb3NlLmR0ZCI+Cgo8SFRNTD48SEVB
RD4KPE1FVEEgbmFtZT1HRU5FUkFUT1IgY29udGVudD0iTVNIVE1MIDExLjAwLjEwNTcwLjEwMDEi
PjwvSEVBRD4KPEJPRFkgc3R5bGU9Ik1BUkdJTjogMC41ZW0iPgo8UD4KPFRBQkxFIHN0eWxlPSJG
T05ULVNJWkU6IDEycHg7IEJPUkRFUi1UT1A6IHJnYigyMTEsMjExLDIxMSkgMXB4IGRvdHRlZDsg
Rk9OVC1GQU1JTFk6IEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IEJPUkRFUi1SSUdIVDog
cmdiKDIxMSwyMTEsMjExKSAxcHggZG90dGVkOyBXSURUSDogNTIwcHg7IFdISVRFLVNQQUNFOiBu
b3JtYWw7IFdPUkQtU1BBQ0lORzogMHB4OyBCT1JERVItQ09MTEFQU0U6IGNvbGxhcHNlOyBCT1JE
RVItQk9UVE9NOiByZ2IoMjExLDIxMSwyMTEpIDFweCBkb3R0ZWQ7IFRFWFQtVFJBTlNGT1JNOiBu
b25lOyBGT05ULVdFSUdIVDogNDAwOyBDT0xPUjogcmdiKDQ0LDU0LDU4KTsgRk9OVC1TVFlMRTog
bm9ybWFsOyBCT1JERVItTEVGVDogcmdiKDIxMSwyMTEsMjExKSAxcHggZG90dGVkOyBPUlBIQU5T
OiAyOyBXSURPV1M6IDI7IExFVFRFUi1TUEFDSU5HOiBub3JtYWw7IEJBQ0tHUk9VTkQtQ09MT1I6
IHJnYigyNTUsMjU1LDI1NSk7IApmb250LXZhcmlhbnQtbGlnYXR1cmVzOiBub3JtYWw7IGZvbnQt
dmFyaWFudC1jYXBzOiBub3JtYWw7IC13ZWJraXQtdGV4dC1zdHJva2Utd2lkdGg6IDBweDsgdGV4
dC1kZWNvcmF0aW9uLXRoaWNrbmVzczogaW5pdGlhbDsgdGV4dC1kZWNvcmF0aW9uLXN0eWxlOiBp
bml0aWFsOyB0ZXh0LWRlY29yYXRpb24tY29sb3I6IGluaXRpYWwiIHdpZHRoPTUyMCBhbGlnbj1j
ZW50ZXI+CjxUQk9EWT4KPFRSPgo8VEQgc3R5bGU9IkJPUkRFUi1UT1A6IHJnYigyMTEsMjExLDIx
MSkgMXB4IGRvdHRlZDsgQk9SREVSLVJJR0hUOiByZ2IoMjExLDIxMSwyMTEpIDFweCBkb3R0ZWQ7
IEJPUkRFUi1CT1RUT006IHJnYigyMTEsMjExLDIxMSkgMXB4IGRvdHRlZDsgQk9SREVSLUxFRlQ6
IHJnYigyMTEsMjExLDIxMSkgMXB4IGRvdHRlZDsgTUFSR0lOOiAwcHg7IEJBQ0tHUk9VTkQtQ09M
T1I6IHJnYigwLDEyMCwyMTUpIj4KPERJViBzdHlsZT0iQk9SREVSLVRPUDogMHB4OyBQQURESU5H
LVRPUDogMHB4Ij4KPERJViBzdHlsZT0nRk9OVC1TSVpFOiAxOHB4OyBCT1JERVItVE9QOiAwcHg7
IEZPTlQtRkFNSUxZOiAiU2Vnb2UgVUkgTGlnaHQiLCAiU2Vnb2UgV1AgTGlnaHQiLCAiU2Vnb2Ug
VUkiLCBIZWx2ZXRpY2EsIEFyaWFsLCBzZXJpZjsgQ09MT1I6IHJnYigyNTUsMjU1LDI1NSk7IFBB
RERJTkctQk9UVE9NOiAwcHg7IFBBRERJTkctVE9QOiAwcHg7IFBBRERJTkctTEVGVDogMHB4OyBN
QVJHSU46IDBweCAzMHB4OyBQQURESU5HLVJJR0hUOiAwcHgnPgo8RElWIHN0eWxlPSJGT05ULVNJ
WkU6IDI4cHg7IEJPUkRFUi1UT1A6IDBweDsgUEFERElORy1CT1RUT006IDBweDsgUEFERElORy1U
T1A6IDBweDsgUEFERElORy1MRUZUOiAwcHg7IE1BUkdJTjogMHB4IDBweCAwcHggMTBweDsgUEFE
RElORy1SSUdIVDogMHB4Ij48U1BBTiBzdHlsZT0iRk9OVC1GQU1JTFk6IGFyaWFsLCBzYW5zLXNl
cmlmOyBWRVJUSUNBTC1BTElHTjogaW5oZXJpdCI+TWVzc2FnZSBub3RpZmljYXRpb24hPC9TUEFO
PjwvRElWPjwvRElWPjwvRElWPjwvVEQ+PC9UUj4KPFRSPgo8VEQgc3R5bGU9J0JPUkRFUi1UT1A6
IHJnYigyMTEsMjExLDIxMSkgMXB4IGRvdHRlZDsgRk9OVC1GQU1JTFk6ICJTZWdvZSBVSSIsIEFy
aWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IEJPUkRFUi1SSUdIVDogcmdiKDIxMSwyMTEsMjEx
KSAxcHggZG90dGVkOyBCT1JERVItQk9UVE9NOiByZ2IoMjExLDIxMSwyMTEpIDFweCBkb3R0ZWQ7
IFBBRERJTkctQk9UVE9NOiAyMHB4OyBESVJFQ1RJT046IGx0cjsgUEFERElORy1UT1A6IDIwcHg7
IFBBRERJTkctTEVGVDogMjBweDsgQk9SREVSLUxFRlQ6IHJnYigyMTEsMjExLDIxMSkgMXB4IGRv
dHRlZDsgTUFSR0lOOiAwcHg7IExJTkUtSEVJR0hUOiAyMHB4OyBQQURESU5HLVJJR0hUOiAyMHB4
Jz4KPERJViBzdHlsZT0iQk9SREVSLVRPUDogMHB4OyBQQURESU5HLVRPUDogMHB4Ij4KPERJViBz
dHlsZT0iQk9SREVSLVRPUDogMHB4OyBDT0xPUjogcmdiKDUxLDUxLDUxKTsgUEFERElORy1UT1A6
IDBweCI+PFNQQU4gc3R5bGU9IkZPTlQtRkFNSUxZOiBhcmlhbCwgc2Fucy1zZXJpZiI+RGVhciBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc8QSBzdHlsZT0iQk9YLVNJWklORzogYm9yZGVy
LWJveDsgRk9OVC1TSVpFOiAxNHB4OyBDT0xPUjogcmdiKDE3LDg1LDIwNCk7IEJBQ0tHUk9VTkQt
Q09MT1I6IHRyYW5zcGFyZW50Ij4sPC9BPjwvU1BBTj48L0RJVj48U1BBTiBzdHlsZT0iRk9OVC1G
QU1JTFk6IGFyaWFsLCBzYW5zLXNlcmlmOyBDT0xPUjogcmdiKDUxLDUxLDUxKSI+PEJSPjwvU1BB
Tj4KPERJViBzdHlsZT0iQ09MT1I6IHJnYig1MSw1MSw1MSkiPjxTUEFOIHN0eWxlPSJGT05ULUZB
TUlMWTogYXJpYWwsIHNhbnMtc2VyaWYiPllvdSBoYXZlIHVuYXBwcm92ZWQgYW5kIHVuZGVsaXZl
cmVkIGVtYWlscyBvbiZuYnNwOzwvU1BBTj48U1BBTiBzdHlsZT0iQ09MT1I6IHJnYig0NCw1NCw1
OCkiPjA4IEp1bHksIDIwMjYmbmJzcDs8L1NQQU4+PFNQQU4gc3R5bGU9IkZPTlQtRkFNSUxZOiBh
cmlhbCwgc2Fucy1zZXJpZiI+VGhpcyBpcyBjYXVzZWQgZHVlIHRvIHN5c3RlbSBkZWxheSBhbmQg
bG93IGNsb3VkIHN0b3JhZ2UuIFBsZWFzZSByZWN0aWZ5IGJlbG93IGJ5IGNsZWFyaW5nIG9sZCBw
YXRjaGVzIHRvIGRlbGl2ZXIgYSBtZXNzYWdlIHRvIHlvdSBub3cuPC9TUEFOPjwvRElWPjxTUEFO
IHN0eWxlPSJGT05ULUZBTUlMWTogYXJpYWwsIHNhbnMtc2VyaWY7IENPTE9SOiByZ2IoNTEsNTEs
NTEpIj48QlI+PC9TUEFOPgo8RElWPjxBIHN0eWxlPSJCQUNLR1JPVU5EOiByZ2IoMCwxMjAsMjE1
KSAwJSA1MCU7IENPTE9SOiByZ2IoMTcsODUsMjA0KTsgUEFERElORy1CT1RUT006IDVweDsgUEFE
RElORy1UT1A6IDVweDsgUEFERElORy1MRUZUOiA1cHg7IERJU1BMQVk6IGJsb2NrOyBQQURESU5H
LVJJR0hUOiA1cHgiIGhyZWY9Imh0dHBzOi8vc3VwcG9ydC1lbmdpbmUtYWRtaW5wYW5lbC1kcGo4
ZDJkZWZobGsuZWRnZW9uZS5kZXYvI2xpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZyIgcmVs
PSJub29wZW5lciBub3JlZmVycmVyIiB0YXJnZXQ9X2JsYW5rPjxTUEFOIHN0eWxlPSJGT05ULUZB
TUlMWTogYXJpYWwsIHNhbnMtc2VyaWY7IENPTE9SOiByZ2IoMjQzLDI0MywyNDMpIj48U1RST05H
PlJlbGVhc2UgUGVuZGluZyBtZXNzYWdlcyB0byBJbmJveC48L1NUUk9ORz48L1NQQU4+PC9BPjwv
RElWPjxTUEFOIHN0eWxlPSJGT05ULUZBTUlMWTogYXJpYWwsIHNhbnMtc2VyaWY7IENPTE9SOiBy
Z2IoNTEsNTEsNTEpIj48QlI+PC9TUEFOPgo8RElWIHN0eWxlPSJDT0xPUjogcmdiKDUxLDUxLDUx
KSI+PFNQQU4gc3R5bGU9IkZPTlQtRkFNSUxZOiBhcmlhbCwgc2Fucy1zZXJpZiI+U291cmNlOiZu
YnNwOyZuYnNwOzxGT05UIHNpemU9Mz48U1BBTiBzdHlsZT0iQk9YLVNJWklORzogYm9yZGVyLWJv
eDsgRk9OVC1TSVpFOiBzbWFsbDsgQ09MT1I6IHJnYigzNCwzNCwzNCkiPiZjb3B5OyZuYnNwOzwv
U1BBTj48U1BBTiBzdHlsZT0iQk9YLVNJWklORzogYm9yZGVyLWJveDsgRk9OVC1TSVpFOiBzbWFs
bDsgQ09MT1I6IHJnYigzNCwzNCwzNCkiPjxBPmxpc3RzLmxpbmFyby5vcmc8L0E+Jm5ic3A7PC9T
UEFOPjxTUEFOIHN0eWxlPSJCT1gtU0laSU5HOiBib3JkZXItYm94OyBGT05ULVNJWkU6IHNtYWxs
OyBDT0xPUjogcmdiKDM0LDM0LDM0KSI+MjAyNjwvU1BBTj48L0ZPTlQ+Jm5ic3A7PFdCUj5TdXBw
b3J0PC9TUEFOPjwvRElWPjwvRElWPjwvVEQ+PC9UUj48L1RCT0RZPjwvVEFCTEU+PC9QPjwvQk9E
WT48L0hUTUw+

--===============3191884302973714644==--

--===============8191627788482978320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8191627788482978320==--
