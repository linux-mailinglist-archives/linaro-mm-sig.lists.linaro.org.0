Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id skUKAjuCMmqT1AUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 13:17:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FE2698EAB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 13:17:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F76B40AA8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 11:17:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8595A40A9D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2026 11:16:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: chenshentu92@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Wed, 17 Jun 2026 11:16:49 -0000
Message-ID: <178169500954.594047.18048293505769651557@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: JO6QBKJQYHTQNFLC6CA6Q6EUCCRQ22QX
X-Message-ID-Hash: JO6QBKJQYHTQNFLC6CA6Q6EUCCRQ22QX
X-MailFrom: chenshentu92@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?6LSt5Lmw5YGH5Lq65rCR5biB77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iSDotK3kubDlgYfkurrmsJHluIEsIOi0reS5sOWBh+S6uuawkeW4ge+8iFJNQinvvIhXaGF0c0FwcO+8mis0OSAxNTc1IDM3NTY5NzTvvIkg6LSt5Lmw5YGH576O5YWD44CB6LSt5Lmw5YGH5qyn5YWD44CB5Zyo57q/6LSt5Lmw6Lqr5Lu96K+B44CB6LSt5Lmw5q2j54mI5Yqg5ou/5aSn6Lqr5Lu96K+BIO+8iOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDTvvInjgIHotK3kubDnnJ/lgYfmiqTnhafjgIHotK3kubDliqDmi7/lpKflsYXnlZnor4HjgIHnlLPor7fliqDmi7/lpKflm73nsY3jgIHotK3kubDnuqrlv7XniYjouqvku73or4HvvIwg77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iSBodHRwczovL3J1c2hteW5ld3Bhc3Nwb3J0LmNvbS/otK3kubDlgYfkurrmsJHluIEtcm1iLei0reS5sOWBh+e+juWFgy3mvrPlhYMt5Yqg5YWDLeS6uuawkeW4gS3mrKflhYMt5Lq6LyDotK3kubDlgYfnvo7lhYPvvIhVU0TvvIkg6LSt5Lmw5YGH5Lq65rCR5biB77yIUk1C77yJIOi0reS5sOWBh+S6uuawkeW4ge+8iENOWe+8iSDotK3kubDlgYfliqDlhYPvvIhDQUTvvIkg6LSt5Lmw5YGH5r6z5YWD77yIQVVE77yJIOi0reS5sOWBh+iLsemVke+8iEdCUO+8iSDotK3kubDlgYfmrKflhYPvvIhFVVLvvIkg6LSt5Lmw5YGH6aaZ5riv5YWD77yISEvvvIkg5Zyo57q/6LSt5Lmw5oqk54Wn77yI5b6u5L+h77yaU2N
 vdHRib3dlcnM0NO+8ie+8jOi0reS5sOe+juWbvempvueFpywg5Zyo57q/6LSt5Lmw55yf5Lyq5oqk54Wn77yM6LSt5Lmw5ZCI5rOV576O5Zu95oqk54Wn77yM6LSt5Lmw5Lit5Zu95oqk54Wn77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8ie+8jOi0reS5sOWKoOaLv+Wkp+aKpOeFp++8jOi0reS5sOmmmea4r+aKpOeFp++8jOi0reS5sOWPsOa5vuaKpOeFp++8jOi0reS5sOWkluS6pOaKpOeFpyBodHRwczovL3J1c2hteW5ld3Bhc3Nwb3J0LmNvbS/otK3kubDmraPniYjnvo7lm73pqb7nhacvIGh0dHBzOi8vcnVzaG15bmV3cGFzc3BvcnQuY29tL3Byb2R1Y3Qv6LSt5Lmw5Yqg5ou/5aSn5bGF55WZ6K645Y+vLTIvIGh0dHBzOi8vcnVzaG15bmV3cGFzc3BvcnQuY29tL2J1eS1kcml2ZXJzLWxpY2Vuc2UvIGh0dHBzOi8vcnVzaG15bmV3cGFzc3BvcnQuY29tL2J1eS11c2EtZHJpdmVycy1saWNlbnNlLyDlvq7kv6HvvJpTY290dGJvd2VyczQ0IOWcqOe6v+i0reS5sOaKpOeFp++8iOmCrueuse+8mmF1dGhlbnRpY25vdGVzNUBnbWFpbC5jb23vvInvvIzotK3kubDlkIjms5Xnvo7lm73miqTnhafvvIzotK3kubDkuK3lm73miqTnhafvvIwgKOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDQp77yM6LSt5Lmw5Yqg5ou/5aSn5oqk54Wn77yM6LSt5Lmw6ams5p2l6KW/5Lqa5oqk54Wn77yM6LSt5Lmw6aaZ5riv5oqk54Wn77yM6LSt5Lmw5Y+w5rm+5oqk54Wn77yM5ZCI5rOV55Sf54mp6K+G5Yir5oqk54Wn77yM6LSt5Lmw576O5Zu9
 5oqk54Wn77yM6LSt5Lmw5qyn5rSy5oqk54Wn77yM6LSt5Lmw5r6z5aSn5Yip5Lqa5oqk54Wn77yM6LSt5Lmw5Zyo5pS/5bqc5pWw5o2u5bqT5Lit5rOo5YaM55qE5oqk54Wn77yM6LSt5Lmw5Yqg5ou/5aSn5bGF5rCR5Y2h77yIUlDljaHvvInvvIzojrflj5bnvo7lm73lhazmsJHouqvku73lkoznu7/ljaHvvIzlnKjlk6rph4zlj6/ku6Xlip7nkIbmiqTnhafvvJ/lnKjnur/otK3kubDpqb7nhafvvIzmiqTnhafnu63nrb4g5pu05aSa5L+h5oGv77yaIOmCrueuse+8mmF1dGhlbnRpY25vdGVzNUBnbWFpbC5jb20gaHR0cHM6Ly9ydXNobXluZXdwYXNzcG9ydC5jb20v?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JO6QBKJQYHTQNFLC6CA6Q6EUCCRQ22QX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.69 / 15.00];
	LONG_SUBJ(3.00)[927];
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
	FORGED_SENDER(0.00)[chenshentu92@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[chenshentu92@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,rushmynewpassport.com:url,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 49FE2698EAB

6LSt5Lmw5YGH5Lq65rCR5biB77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iSDotK3kubDlgYfk
urrmsJHluIEsIOi0reS5sOWBh+S6uuawkeW4ge+8iFJNQinvvIhXaGF0c0FwcO+8mis0OSAxNTc1
IDM3NTY5NzTvvIkg6LSt5Lmw5YGH576O5YWD44CB6LSt5Lmw5YGH5qyn5YWD44CB5Zyo57q/6LSt
5Lmw6Lqr5Lu96K+B44CB6LSt5Lmw5q2j54mI5Yqg5ou/5aSn6Lqr5Lu96K+BIO+8iOW+ruS/oe+8
mlNjb3R0Ym93ZXJzNDTvvInjgIHotK3kubDnnJ/lgYfmiqTnhafjgIHotK3kubDliqDmi7/lpKfl
sYXnlZnor4HjgIHnlLPor7fliqDmi7/lpKflm73nsY3jgIHotK3kubDnuqrlv7XniYjouqvku73o
r4HvvIwg77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iQ0KDQpodHRwczovL3J1c2hteW5ld3Bh
c3Nwb3J0LmNvbS/otK3kubDlgYfkurrmsJHluIEtcm1iLei0reS5sOWBh+e+juWFgy3mvrPlhYMt
5Yqg5YWDLeS6uuawkeW4gS3mrKflhYMt5Lq6LyAgDQoNCui0reS5sOWBh+e+juWFg++8iFVTRO+8
iQ0K6LSt5Lmw5YGH5Lq65rCR5biB77yIUk1C77yJDQrotK3kubDlgYfkurrmsJHluIHvvIhDTlnv
vIkNCui0reS5sOWBh+WKoOWFg++8iENBRO+8iQ0K6LSt5Lmw5YGH5r6z5YWD77yIQVVE77yJDQro
tK3kubDlgYfoi7HplZHvvIhHQlDvvIkNCui0reS5sOWBh+asp+WFg++8iEVVUu+8iQ0K6LSt5Lmw
5YGH6aaZ5riv5YWD77yISEvvvIkNCg0KDQrlnKjnur/otK3kubDmiqTnhafvvIjlvq7kv6HvvJpT
Y290dGJvd2VyczQ077yJ77yM6LSt5Lmw576O5Zu96am+54WnLCDlnKjnur/otK3kubDnnJ/kvKrm
iqTnhafvvIzotK3kubDlkIjms5Xnvo7lm73miqTnhafvvIzotK3kubDkuK3lm73miqTnhafvvIjl
vq7kv6HvvJpTY290dGJvd2VyczQ077yJ77yM6LSt5Lmw5Yqg5ou/5aSn5oqk54Wn77yM6LSt5Lmw
6aaZ5riv5oqk54Wn77yM6LSt5Lmw5Y+w5rm+5oqk54Wn77yM6LSt5Lmw5aSW5Lqk5oqk54WnDQpo
dHRwczovL3J1c2hteW5ld3Bhc3Nwb3J0LmNvbS/otK3kubDmraPniYjnvo7lm73pqb7nhacvDQpo
dHRwczovL3J1c2hteW5ld3Bhc3Nwb3J0LmNvbS9wcm9kdWN0L+i0reS5sOWKoOaLv+Wkp+WxheeV
meiuuOWPry0yLw0KaHR0cHM6Ly9ydXNobXluZXdwYXNzcG9ydC5jb20vYnV5LWRyaXZlcnMtbGlj
ZW5zZS8NCmh0dHBzOi8vcnVzaG15bmV3cGFzc3BvcnQuY29tL2J1eS11c2EtZHJpdmVycy1saWNl
bnNlLw0KDQrlvq7kv6HvvJpTY290dGJvd2VyczQ0DQoNCuWcqOe6v+i0reS5sOaKpOeFp++8iOmC
rueuse+8mmF1dGhlbnRpY25vdGVzNUBnbWFpbC5jb23vvInvvIzotK3kubDlkIjms5Xnvo7lm73m
iqTnhafvvIzotK3kubDkuK3lm73miqTnhafvvIwgKOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDQp77yM
6LSt5Lmw5Yqg5ou/5aSn5oqk54Wn77yM6LSt5Lmw6ams5p2l6KW/5Lqa5oqk54Wn77yM6LSt5Lmw
6aaZ5riv5oqk54Wn77yM6LSt5Lmw5Y+w5rm+5oqk54Wn77yM5ZCI5rOV55Sf54mp6K+G5Yir5oqk
54Wn77yM6LSt5Lmw576O5Zu95oqk54Wn77yM6LSt5Lmw5qyn5rSy5oqk54Wn77yM6LSt5Lmw5r6z
5aSn5Yip5Lqa5oqk54Wn77yM6LSt5Lmw5Zyo5pS/5bqc5pWw5o2u5bqT5Lit5rOo5YaM55qE5oqk
54Wn77yM6LSt5Lmw5Yqg5ou/5aSn5bGF5rCR5Y2h77yIUlDljaHvvInvvIzojrflj5bnvo7lm73l
hazmsJHouqvku73lkoznu7/ljaHvvIzlnKjlk6rph4zlj6/ku6Xlip7nkIbmiqTnhafvvJ/lnKjn
ur/otK3kubDpqb7nhafvvIzmiqTnhafnu63nrb4NCg0KDQrmm7TlpJrkv6Hmga/vvJoNCg0K6YKu
566x77yaYXV0aGVudGljbm90ZXM1QGdtYWlsLmNvbQ0KaHR0cHM6Ly9ydXNobXluZXdwYXNzcG9y
dC5jb20vDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
