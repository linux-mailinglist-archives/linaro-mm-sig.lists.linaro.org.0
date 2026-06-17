Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zMFXKx2CMmqM1AUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 13:16:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 79173698E8C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 13:16:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EC5440A78
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 11:16:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD42040A70
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2026 11:16:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: chenshentu92@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Wed, 17 Jun 2026 11:16:20 -0000
Message-ID: <178169498090.593036.17187978776802902316@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: RBFLVH3UJTFZXN52AKQTWBXQZA534BB3
X-Message-ID-Hash: RBFLVH3UJTFZXN52AKQTWBXQZA534BB3
X-MailFrom: chenshentu92@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?5Zyo57q/6LSt5Lmw55yf5YGH5oqk54Wn44CB5Zyo57q/6LSt5Lmw6Lqr5Lu96K+B77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8ieOAgei0reS5sOmpvueFp+OAgee7v+WNoeOAgeWxheeVmeiuuOWPr+OAgembheaAneaIkOe7qeOAgeW3peS9nOiuuOWPr+OAgeWFrOawkei6q+S7veOAgeWcqOe6v+i0reS5sOetvuivgeOAgei0reS5sOWKoOaLv+Wkp+WxheeVmeiuuOWPryDvvIjlvq7kv6HvvJpTY290dGJvd2VyczQ077yJIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WKoOaLv+Wkp+WxheeVmeiuuOWPry8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv572R5LiK5Ye65ZSu5YGH576O5Zu95oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDnvo7lm73pqb7pqbbmiafnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOato+Wul+e+juWbvee7v+WNoS8g5Zyo57q/6LSt5Lmw5oqk54Wn77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8ie+8jOi0reS5sOWQiOazlee+juWbveaKpOeFp++8jOi0reS5sOS4reWbveaKpOeFp++8jOi0reS5sOa+s+Wkp+WIqeS6muaKpOeFp++8jOi0reS5sOmprOadpeilv+S6muaKpOeFp++8jOWcqOe6v+i0reS5sOe+juWbveaKpOeFp++8jCDvvIhXaGF0c0FwcO+8mis0OSAxNTc1IDM3NTY5NzQgKe+8jOi0reS5sOWKoOaLv+Wkp+aKpOe
 Fp++8jOi0reS5sOmmmea4r+aKpOeFp++8jOi0reS5sOWPsOa5vuaKpOeFp++8jOi0reS5sOWkluS6pOaKpOeFp++8jOi0reS5sOWQiOazleeUn+eJqeivhuWIq+aKpOeFp++8jOi0reS5sOe+juWbveaKpOeFp++8jOi0reS5sOa+s+Wkp+WIqeS6muaKpOeFp++8jOi0reS5sOWcqOaUv+W6nOaVsOaNruW6k+S4reazqOWGjOeahOaKpOeFp++8jOi0reS5sOS4reWNjuS6uuawkeWFseWSjOWbveaXheihjOivgeS7tu+8jFdoYXRzQXBw77yaKzQ5IDE1NzUgMzc1Njk3NCBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/nvZHkuIrlh7rllK7lgYfnvo7lm73miqTnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOS4reWbveaKpOeFpy8g5Zyo57q/6LSt5Lmw6Lqr5Lu96K+B77yM6LSt5Lmw5q2j54mI5Yqg5ou/5aSn6Lqr5Lu96K+B77yI6YKu566x77yaYXV0aGVudGljbm90ZXM1QGdtYWlsLmNvbe+8ie+8jOi0reS5sOWKoOaLv+Wkp+awuOS5heWxheawkei6q+S7ve+8jOi0reS5sOWKoOaLv+Wkp+WxheeVmeiuuOWPr++8jOeUs+ivt+WKoOaLv+Wkp+WFrOawkeivgeS5pu+8jOi0reS5sOWKoOaLv+Wkp+i6q+S7veivge+8jOiOt+WPluaUv+W6nOetvuWPkeeahOi6q+S7veivge+8jOi0reS5sOWIm+aEj+i6q+S7veivge+8jOi0reS5sOecn+Wunui6q+S7veivgeaYjuaWh+S7tuOAgu+8iOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDTvvIkgaHR0cHM6Ly9idXlyZWFsY3VycmVuY3ku
 Y29tL3Byb2R1Y3Qv5Zyo57q/6LSt5Lmw5oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDmraPniYjpn6nlm73miqTnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WmguS9lei0reS5sOato+eJiOe+juWbveaKpOeFpy0yMDI2LyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/lnKjnur/otK3kubDmiqTnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOato+eJiOS4reWbveaKpOeFpy8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw55yf5q2j55qE5Yqg5ou/5aSn5oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDoi7Hlm73ljp/niYjmiqTnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WmguS9leWcqOWutuWQiOazleiOt+WPluato+eJiOW+t+WbveaKpOeFpy8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw5Lit5Zu95oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/nvZHkuIrlh7rllK7lgYfnvo7lm73miqTnhacvIFdoYXRzQXBw77yaKzQ5IDE1NzUgMzc1Njk3NCBodHRwczovL3J1c2hteW5ld3Bhc3Nwb3J0LmNvbS8g6LSt5Lmw5YGH576O5YWD44CB5Lq65rCR5biB77yM6LSt5Lmw5YGH5Lq65rCR5biB77yM77yI5b6u5L+h77yaU2NvdHRib3dlc
 nM0NO+8iSDlnKjnur/otK3kubBTU0TljJblrabmurbmtrLvvIwgaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL+i0reS5sHNzZOWMluWtpuWTgS8gaHR0cHM6Ly9nbG9iYWx0cmF2ZWxkb2NzLmNvbS8gV2hhdHNBcHDvvJorNDkgMTU3NSAzNzU2OTc0?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RBFLVH3UJTFZXN52AKQTWBXQZA534BB3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.69 / 15.00];
	LONG_SUBJ(3.00)[1407];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_SENDER(0.00)[chenshentu92@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[chenshentu92@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,buyrealcurrency.com:url,linaro.org:email,rushmynewpassport.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 79173698E8C

5Zyo57q/6LSt5Lmw55yf5YGH5oqk54Wn44CB5Zyo57q/6LSt5Lmw6Lqr5Lu96K+B77yI5b6u5L+h
77yaU2NvdHRib3dlcnM0NO+8ieOAgei0reS5sOmpvueFp+OAgee7v+WNoeOAgeWxheeVmeiuuOWP
r+OAgembheaAneaIkOe7qeOAgeW3peS9nOiuuOWPr+OAgeWFrOawkei6q+S7veOAgeWcqOe6v+i0
reS5sOetvuivgeOAgei0reS5sOWKoOaLv+Wkp+WxheeVmeiuuOWPryDvvIjlvq7kv6HvvJpTY290
dGJvd2VyczQ077yJIA0KDQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/liqDm
i7/lpKflsYXnlZnorrjlj68vDQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/n
vZHkuIrlh7rllK7lgYfnvo7lm73miqTnhacvDQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20v
cHJvZHVjdC/otK3kubDnvo7lm73pqb7pqbbmiafnhacvDQpodHRwczovL2J1eXJlYWxjdXJyZW5j
eS5jb20vcHJvZHVjdC/otK3kubDmraPlrpfnvo7lm73nu7/ljaEvDQoNCuWcqOe6v+i0reS5sOaK
pOeFp++8iOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDTvvInvvIzotK3kubDlkIjms5Xnvo7lm73miqTn
hafvvIzotK3kubDkuK3lm73miqTnhafvvIzotK3kubDmvrPlpKfliKnkuprmiqTnhafvvIzotK3k
ubDpqazmnaXopb/kuprmiqTnhafvvIzlnKjnur/otK3kubDnvo7lm73miqTnhafvvIwg77yIV2hh
dHNBcHDvvJorNDkgMTU3NSAzNzU2OTc0ICnvvIzotK3kubDliqDmi7/lpKfmiqTnhafvvIzotK3k
ubDpppnmuK/miqTnhafvvIzotK3kubDlj7Dmub7miqTnhafvvIzotK3kubDlpJbkuqTmiqTnhafv
vIzotK3kubDlkIjms5XnlJ/nianor4bliKvmiqTnhafvvIzotK3kubDnvo7lm73miqTnhafvvIzo
tK3kubDmvrPlpKfliKnkuprmiqTnhafvvIzotK3kubDlnKjmlL/lupzmlbDmja7lupPkuK3ms6jl
hoznmoTmiqTnhafvvIzotK3kubDkuK3ljY7kurrmsJHlhbHlkozlm73ml4XooYzor4Hku7bvvIxX
aGF0c0FwcO+8mis0OSAxNTc1IDM3NTY5NzQNCg0KDQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5j
b20vcHJvZHVjdC/nvZHkuIrlh7rllK7lgYfnvo7lm73miqTnhacvDQpodHRwczovL2J1eXJlYWxj
dXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDkuK3lm73miqTnhacvDQoNCuWcqOe6v+i0reS5sOi6
q+S7veivge+8jOi0reS5sOato+eJiOWKoOaLv+Wkp+i6q+S7veivge+8iOmCrueuse+8mmF1dGhl
bnRpY25vdGVzNUBnbWFpbC5jb23vvInvvIzotK3kubDliqDmi7/lpKfmsLjkuYXlsYXmsJHouqvk
u73vvIzotK3kubDliqDmi7/lpKflsYXnlZnorrjlj6/vvIznlLPor7fliqDmi7/lpKflhazmsJHo
r4HkuabvvIzotK3kubDliqDmi7/lpKfouqvku73or4HvvIzojrflj5bmlL/lupznrb7lj5HnmoTo
uqvku73or4HvvIzotK3kubDliJvmhI/ouqvku73or4HvvIzotK3kubDnnJ/lrp7ouqvku73or4Hm
mI7mlofku7bjgILvvIjlvq7kv6HvvJpTY290dGJvd2VyczQ077yJDQoNCmh0dHBzOi8vYnV5cmVh
bGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WcqOe6v+i0reS5sOaKpOeFpy8NCmh0dHBzOi8vYnV5cmVh
bGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOato+eJiOmfqeWbveaKpOeFpy8NCmh0dHBzOi8v
YnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WmguS9lei0reS5sOato+eJiOe+juWbveaKpOeF
py0yMDI2Lw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv5Zyo57q/6LSt5Lmw
5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw5q2j54mI
5Lit5Zu95oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw
55yf5q2j55qE5Yqg5ou/5aSn5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3By
b2R1Y3Qv6LSt5Lmw6Iux5Zu95Y6f54mI5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3ku
Y29tL3Byb2R1Y3Qv5aaC5L2V5Zyo5a625ZCI5rOV6I635Y+W5q2j54mI5b635Zu95oqk54WnLw0K
aHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw5Lit5Zu95oqk54WnLw0K
aHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv572R5LiK5Ye65ZSu5YGH576O5Zu9
5oqk54WnLw0KDQpXaGF0c0FwcO+8mis0OSAxNTc1IDM3NTY5NzQNCmh0dHBzOi8vcnVzaG15bmV3
cGFzc3BvcnQuY29tLw0KDQrotK3kubDlgYfnvo7lhYPjgIHkurrmsJHluIHvvIzotK3kubDlgYfk
urrmsJHluIHvvIzvvIjlvq7kv6HvvJpTY290dGJvd2VyczQ077yJIA0KDQrlnKjnur/otK3kubBT
U0TljJblrabmurbmtrLvvIwgDQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20v6LSt5Lmwc3Nk
5YyW5a2m5ZOBLw0KaHR0cHM6Ly9nbG9iYWx0cmF2ZWxkb2NzLmNvbS8NCg0KV2hhdHNBcHDvvJor
NDkgMTU3NSAzNzU2OTc0DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
