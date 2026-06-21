Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1FjLE+TVN2o6UgcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:15:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D62D46AAAEB
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:15:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F277340AF7
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 12:15:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 81021409A5
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 12:15:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: douglasesmith206@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 21 Jun 2026 12:15:24 -0000
Message-ID: <178204412452.3079621.956273017742667406@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: WYF644GBUN6ZCCDHVVIASRSNUKXGV6IO
X-Message-ID-Hash: WYF644GBUN6ZCCDHVVIASRSNUKXGV6IO
X-MailFrom: douglasesmith206@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?6LSt5Lmw5YGH5Lq65rCR5biB77yIQ05Z77yJ77yMKOW+ruS/oUlE77yaV2VzYnV0bWFuKSDotK3kubDlgYfkurrmsJHluIEvUk1C77yMIOWBh+S6uuawkeW4gSB8IOS6uuawkeW4ge+8jOi0reS5sOWBh+S6uuawkeW4ge+8jOi0reS5sOWBh+S6uuawkSDotK3kubDlgYfnvo7lhYMv5r6z5YWDL+WKoOWFgy/kurrmsJHluIEv5qyn5YWDL+S6uuawkeW4gQ==?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WYF644GBUN6ZCCDHVVIASRSNUKXGV6IO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.99 / 15.00];
	SEM_URIBL_FRESH15(3.00)[buytraveldocsonline.com:url];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ALIAS_RESOLVED(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_SPF_ALLOW(0.00)[+mx:c];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[firstdocumentsonline.com:url,vitamondopeptides.com:url,linaro.org:email,buytraveldocsonline.com:url,lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D62D46AAAEB

6LSt5Lmw5YGH5Lq65rCR5biB77yIQ05Z77yJ77yMKOW+ruS/oUlE77yaV2VzYnV0bWFuKSDotK3k
ubDlgYfkurrmsJHluIEvUk1C77yMIOWBh+S6uuawkeW4gSB8IOS6uuawkeW4ge+8jOi0reS5sOWB
h+S6uuawkeW4ge+8jOi0reS5sOWBh+S6uuawkQ0K6LSt5Lmw5YGH576O5YWDL+a+s+WFgy/liqDl
hYMv5Lq65rCR5biBL+asp+WFgy/kurrmsJHluIHvvIzotK3kubDlgYfmrKflhYPpkp7npajvvIzo
tK3kubDlgYfmvrPlhYPvvIzotK3kubDlgYfliqDmi7/lpKflhYPvvIzotK3kubDlgYfnvo7lhYPv
vIzlnKjnur/otK3kubDlgYfkurrmsJHluIHvvIzotK3kubDlgYfkurrmsJHluIEg6LSt5Lmw5YGH
5YWD77yM6LSt5Lmw5YGH55qE5Lit5Zu95Lq65YWD77yMKFdIQVRTQVBQ77yaKzQ5IDE1MjEgNTA2
NjQ2Mikg6LSt5Lmw5YGHQ05ZIOi0reS5sOWBh+S6uuawkeW4gSDotK3kubDlgYfkurrmsJHluIEg
6LSt5Lmw576O5YWD44CB5Lq65rCR5biB44CBKOW+ruS/oUlE77yaV2VzYnV0bWFuKSDkurrmsJHl
uIHlkozpqazmnaXopb/kuprmnpflkInnibnnrYnlgYfluIHvvIHor6bmg4Xor7fnp4Hkv6HvvIHo
tK3kubDlgYfnvo7lhYPlkozkurrmsJHluIHvvIHkuobop6Pmm7TlpJrlgYfluIHkv6Hmga/vvIHo
tK3kubDlgYfnvo7lhYPlkozkurrmsJHluIHvvIHmjqLntKLmm7TlpJrvvIHotK3kubDlgYfluIHv
vJrnvo7lhYPlkozkurrmsJHluIHjgILor6bmg4Xor7fnp4Hkv6HvvIEg6LSt5Lmw5YGH5biB77ya
576O5YWD44CB5Lq65rCR5biB44CB6ams5p2l6KW/5Lqa5p6X5ZCJ54m5562J77yB6K+m5oOF6K+3
56eB5L+h77yBDQoNCui0reS5sOWBh+e+juWFg++8iFVTRO+8iSBodHRwczovL2ZpcnN0ZG9jdW1l
bnRzb25saW5lLmNvbS9wcm9kdWN0LWNhdGVnb3J5L+WBh+W4gS8NCui0reS5sOWBh+S6uuawkeW4
ge+8iFJNQu+8iSBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9wcm9kdWN0LWNhdGVn
b3J5L+WBh+W4gS8NCui0reS5sOWBh+S6uuawkeW4ge+8iENOWe+8iSBodHRwczovL2ZpcnN0ZG9j
dW1lbnRzb25saW5lLmNvbS9wcm9kdWN0LWNhdGVnb3J5L+WBh+W4gS8NCui0reS5sOWBh+WKoOWF
g++8iENBRO+8iSBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9wcm9kdWN0LWNhdGVn
b3J5L+WBh+W4gS8NCui0reS5sOWBh+a+s+WFg++8iEFVRO+8iSAgaHR0cHM6Ly9idXl0cmF2ZWxk
b2Nzb25saW5lLmNvbS9wcm9kdWN0LWNhdGVnb3J5L+WBh+W4gS8NCui0reS5sOWBh+iLsemVke+8
iEdCUO+8iSAgaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS9wcm9kdWN0LWNhdGVnb3J5
L+WBh+W4gS8NCui0reS5sOWBh+asp+WFg++8iEVVUu+8iSAgaHR0cHM6Ly9idXl0cmF2ZWxkb2Nz
b25saW5lLmNvbS9wcm9kdWN0LWNhdGVnb3J5L+WBh+W4gS8NCui0reS5sOWBh+mmmea4r+WFg++8
iEhL77yJIGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20vcHJvZHVjdC1jYXRlZ29yeS/l
gYfluIEvDQoNCui0reS5sOe+juWFg+OAgeS6uuawkeW4geWSjOmprOadpeilv+S6muael+WQieeJ
ueetieWBh+W4ge+8geivpuaDheivt+engeS/oe+8geS4k+iQpemrmOWTgei0qOWBh+W4gSDotK3k
ubDlgYfluIHvvJrnvo7lhYPjgIHkurrmsJHluIHjgIHkurrmsJHluIHlkozpqazmnaXopb/kuprm
npflkInnibnjgILmgqjnmoTlgYfluIHpppbpgInvvIENCui0reS5sOWBh+W4geOAgijlvq7kv6FJ
RO+8mldlc2J1dG1hbikg6LSt5Lmw5YGH576O5YWD77yIVVNE77yJ77yM6LSt5Lmw5YGH5Lq65rCR
5biB77yIUk1C77yJ77yMKFdoYXRzQXBwOiArNDkgMTUyMSA1MDY2NDYyKSDotK3kubDlgYfluIHv
vIhDTlnvvInvvIzotK3kubDlgYfpqazmnaXopb/kuprmnpflkInnibnvvIhNWVLvvInvvIzotK3k
ubDlgYfliqDmi7/lpKflhYPvvIhDQUTvvInvvIzotK3kubDlgYfmvrPlhYPvvIhBVUTvvInvvIzo
tK3kubDlgYfoi7HplZHvvIhHQlDvvInvvIzotK3kubDlgYfmrKflhYPvvIhFVVLvvInvvIzotK3k
ubDlgYfmuK/lhYPvvIhIS++8ieOAgiDotK3kubDpq5jotKjph4/jgIHmnKrnu4/pqozor4HnmoTn
urjluIENCg0KKFdoYXRzQXBw77yaKzQ5IDE1MjEgNTA2NjQ2MikNCg0KKOW+ruS/oUlE77yaV2Vz
YnV0bWFuKQ0KDQooVGVsZWdyYW3vvJp3ZXNidXRtYW4wKQ0KDQoo5L+h566x77yad2VzYnV0bWFu
MEBnbWFpbC5jb20pDQoNCmh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tLw0KDQpodHRw
Oi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20vDQoNCuWcqOe6v+i0reS5sOWbuuaAgeehrOebmOWM
luWtpua6tua2su+8jOi0reS5sOWbuuaAgeehrOebmOWMluWtpua6tua2su+8jOWbuuaAgeehrOeb
mOWMluWtpua6tua2su+8jCjlvq7kv6FJRO+8mldlc2J1dG1hbikg5Lqa6ams6YCK5Zu65oCB56Gs
55uY5YyW5a2m5rq25rayDQrlnKjnur/otK3kubDlm7rmgIHnoaznm5jljJblrablk4HvvIzotK3k
ubDlm7rmgIHnoaznm5jljJblrablk4HvvIzotK3kubBKLiBTb2x1dGlvbiBDaGVt77yM6LSt5Lmw
5Zu65oCB56Gs55uY5ray5L2T5YyW5a2m5ZOB77yM6LSt5LmwTS1DaGVtIFNvbHV0aW9ucyBMTEMN
CuWbuuaAgeehrOebmOa6tua2suWMluWtpumFjeaWue+8jOWbuuaAgeehrOebmOmAmueUqOa6tua2
su+8jOaIkeS7rOi0reS5sOWbuuaAgeehrOebmO+8jOi0reS5sFotQ2hlbea6tua2su+8jOWbuuaA
geehrOebmOWMluWtpua6tua2suS7t+agvCAoV2hhdHNBcHDvvJorNDkgMTUyMSA1MDY2NDYyKQ0K
5Zyo57q/6LSt5Lmw5oqk54WnKirvvIjpgq7nrrHvvJp3ZXNidXRtYW4wQGdtYWlsLmNvbe+8ieOA
gei0reS5sOWQiOazlee+juWbveaKpOeFp+OAgei0reS5sOS4reWbveaKpOeFp+OAgSjlvq7kv6FJ
RO+8mldlc2J1dG1hbikqKuOAgei0reS5sOWKoOaLv+Wkp+aKpOeFp+OAgei0reS5sOmprOadpeil
v+S6muaKpOeFp+OAgei0reS5sOmmmea4r+aKpOeFp+OAgei0reS5sOWPsOa5vuaKpOeFp+OAgeWQ
iOazleeUn+eJqeeJueW+geaKpOeFp+OAgei0reS5sOe+juWbveaKpOeFp+OAgei0reS5sOasp+a0
suaKpOeFp+OAgei0reS5sOa+s+Wkp+WIqeS6muaKpOeFp+OAgei0reS5sOWcqOaUv+W6nOaVsOaN
ruW6k+S4reazqOWGjOeahOaKpOeFp+OAgei0reS5sOWKoOaLv+Wkp+WxheeVmeiuuOWPr++8iFJQ
5Y2h77yJ44CB6I635b6X576O5Zu95YWs5rCR6Lqr5Lu95ZKM57u/5Y2h77yM5oiR5Zyo5ZOq6YeM
5Y+v5Lul6I635b6X5oqk54Wn77yfIChXSEFUU0FQUO+8mis0OSAxNTIxIDUwNjY0NjIp77yM5Zyo
57q/6LSt5Lmw6am+54Wn77yM5pu05paw5oqk54WnDQrotK3kubDmiZjnpo/jgIHpm4XmgJ3jgIHm
iZjkuJogKOW+ruS/oUlE77yaV2VzYnV0bWFuKe+8jOi0reS5sOWKoOaLv+Wkp+WFrOawkei6q+S7
ve+8jOi0reS5sOe+juWbveWFrOawkei6q+S7ve+8jOi0reS5sOWKoOaLv+Wkp1RDRuOAgVRFRuOA
gUNFTFBJUOOAgUNlbHRh6K+B5Lmm77yM5Yqg5ou/5aSn5bGF55WZ5p2D77yM55u05o6l56e75rCR
5Yqg5ou/5aSn77yM6LSt5Lmw6am+54Wn44CB6Lqr5Lu96K+B77yM6LSt5Lmw576O5Zu957u/5Y2h
ICjlvq7kv6FJRO+8mldlc2J1dG1hbinvvIzotK3kubDnpL7kvJrlronlhajlj7fnoIEgKFNTTinj
gIHlt6XkvZzorrjlj6/or4HvvIzojrflj5bmlrDouqvku73or4HjgIHlm73msJHkv53pmanljaHj
gIFOSU7jgIFTSU7vvIzotK3kubBTU07vvIzotK3kubDnu5PlqZror4HvvIzotK3kubDlh7rnlJ/o
r4HmmI7jgILlnKjnur/orqLotK0gKOW+ruS/oUlE77yaV2VzYnV0bWFuKSDmgqjmg7Pku6XmlrDn
moTouqvku73lvIDlkK/nrKzkuozkurrnlJ/lkJfvvJ/kv53miqTmgqjnmoTpmpDnp4HvvIzlu7rn
q4vmlrDnmoTkv6HnlKjorrDlvZXvvIznu5Xov4fniq/nvarorrDlvZXmo4Dmn6XvvIzph43ojrfo
h6rnlLHvvJ8gKOW+ruS/oUlE77yaV2VzYnV0bWFuKQ0K5pu05aSa5L+h5oGv77ya5pys5YWs5Y+4
5Zyo5Yi25L2c5YGH5oqk54Wn5ZKM5YW25LuW6Lqr5Lu96K+B5Lu25pa56Z2i5oul5pyJ5aSa5bm0
57uP6aqM44CC5oiR5Lus5L2/55So6auY5ZOB6LSo55qE6K6+5aSH5ZKM5p2Q5paZ5Yi25L2c5YGH
5oqk54Wn44CC5oiR5Lus57K+5b+D5aSN5Yi255yf5oqk54Wn55qE5omA5pyJ56eY5a+G54m55b6B
77yM5Lul5Yi25L2c5YGH6K+B5Lu244CC5oiR5Lus5piv5LyY6LSo5YGH6Lqr5Lu96K+B5Lu255qE
5pyA5L2z5Yi26YCg5ZWG44CCDQoNCuabtOWkmuS/oeaBr++8mg0KDQooV2hhdHNBcHDvvJorNDkg
MTUyMSA1MDY2NDYyKQ0KDQoo5b6u5L+hSUTvvJpXZXNidXRtYW4pDQoNCihUZWxlZ3Jhbe+8mndl
c2J1dG1hbjApDQoNCijkv6HnrrHvvJp3ZXNidXRtYW4wQGdtYWlsLmNvbSkNCg0KaHR0cHM6Ly9m
aXJzdGRvY3VtZW50c29ubGluZS5jb20vDQoNCmh0dHBzOi8vcnVzaG15bmV3cGFzc3BvcnQuY29t
Lw0KDQpodHRwczovL1ZpdGFtb25kb3BlcHRpZGVzLmNvbS8NCg0KaHR0cHM6Ly9jb3VudGVyZmVp
dGRvY3Nmb3JzYWxlLmNvbS8NCg0KaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vDQoN
Cmh0dHA6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS8NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
