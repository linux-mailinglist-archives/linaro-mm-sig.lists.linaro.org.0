Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RyCxI2aHMmo51gUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 13:39:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC276992F6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 13:39:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30A09443E1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 11:39:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A341413DB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2026 11:30:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: chenshentu92@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Wed, 17 Jun 2026 11:30:27 -0000
Message-ID: <178169582749.625292.1862574079012916214@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: FHATYHENZD3SP2ZGGTFUJ3Z2H6C7TANV
X-Message-ID-Hash: FHATYHENZD3SP2ZGGTFUJ3Z2H6C7TANV
X-MailFrom: chenshentu92@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?6LSt5Lmw5Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2h77yM77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iei0reS5sOWKoOaLv+Wkp+awuOS5heWxheeVmeiuuOWPr++8jOi0reS5sOWKoOaLv+Wkp+WFrOawkei6q+S7ve+8jOeUs+ivt+WKoOaLv+Wkp+WxheeVmeiuuOWPr++8jOWcqOe6v+i0reS5sOWxheeVmeiuuOWPr++8jOeUs+ivt+WKoOaLv+Wkp+awuOS5heWxheawkei6q+S7ve+8jOWKnueQhuOAgee7reetvuaIluihpeWKnuawuOS5heWxheawkeWNoe+8jOiOt+WPluawuOS5heWxheawkeWNoe+8jOWmguS9leiOt+W+l+WKoOaLv+Wkp+WxheeVmeiuuOWPr++8jOWKoOaLv+Wkp+awuOS5heWxheawke+8iFBS77yJ77yMIChXaGF0c0FwcO+8mis0OSAxNTc1IDM3NTY5NzQpIOWmguS9leeUs+ivt+WKoOaLv+Wkp+awuOS5heWxheawkeWNoe+8jOWmguS9leiOt+W+l+WKoOaLv+Wkp+awuOS5heWxheeVmeadg++8jOWKoOaLv+Wkp+awuOS5heWxheawkeWNoe+8jOWcqOWKoOaLv+Wkp+awuOS5heWxheS9j++8jO+8iOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDTvvIkg6I635Y+W5rC45LmF5bGF5rCR5Y2h77yM6LSt5Lmw5Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2h77yM6LSt5Lmw5Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2h77yM55Sz6K+35rC45LmF5bGF5rCR5Y2h44CCIOebtOaOpeenu+awkeWKoOaLv+Wkp+W5tuiOt+WPlumpvueFp+OAgeWxheeVmeiuuOWPr+OAgeawuOS5heW
 xheawkeWNoeWPiui6q+S7veivgSDlsYXnlZnljaHjgIHouqvku73or4Eg4oCTIOebtOaOpeenu+awkeWKoOaLv+Wkp++8jOiOt+WPlumpvueFpyBodHRwczovL3J1c2hteW5ld3Bhc3Nwb3J0LmNvbS9wcm9kdWN0L+i0reS5sOWKoOaLv+Wkp+WxheeVmeiuuOWPry8gaHR0cHM6Ly9ydXNobXluZXdwYXNzcG9ydC5jb20vcHJvZHVjdC10YWcv5Zyo57q/55Sz6K+35bGF55WZ6K645Y+vLyBodHRwczovL3J1c2hteW5ld3Bhc3Nwb3J0LmNvbS9wcm9kdWN0LXRhZy/os7zosrfliqDmi7/lpKfmsLjkuYXlsYXnlZnmrIovIGh0dHBzOi8vcnVzaG15bmV3cGFzc3BvcnQuY29tL3Byb2R1Y3QtdGFnL+izvOiyt+ato+WTgeWKoOaLv+Wkp+itt+eFpy8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv5Yqg5ou/5aSn5bGF55WZ6K645Y+vLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC10YWcv5Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2hLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC10YWcv5Zyo57q/6LSt5Lmw5bGF55WZ6K645Y+vLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC10YWcv5aaC5L2V6I635b6X5Yqg5ou/5aSn5bGF55WZ6K645Y+vLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC10YWcv5aaC5L2V55Sz6K+35Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2hLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/liqDm
 i7/lpKflsYXnlZnorrjlj68vIOmCrueuse+8mmF1dGhlbnRpY25vdGVzNUBnbWFpbC5jb20g5b6u5L+h77yaU2NvdHRib3dlcnM0NA==?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FHATYHENZD3SP2ZGGTFUJ3Z2H6C7TANV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.69 / 15.00];
	LONG_SUBJ(3.00)[876];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,buyrealcurrency.com:url,rushmynewpassport.com:url,lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AC276992F6

6LSt5Lmw5Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2h77yM77yI5b6u5L+h77yaU2NvdHRib3dlcnM0
NO+8iei0reS5sOWKoOaLv+Wkp+awuOS5heWxheeVmeiuuOWPr++8jOi0reS5sOWKoOaLv+Wkp+WF
rOawkei6q+S7ve+8jOeUs+ivt+WKoOaLv+Wkp+WxheeVmeiuuOWPr++8jOWcqOe6v+i0reS5sOWx
heeVmeiuuOWPr++8jOeUs+ivt+WKoOaLv+Wkp+awuOS5heWxheawkei6q+S7ve+8jOWKnueQhuOA
gee7reetvuaIluihpeWKnuawuOS5heWxheawkeWNoe+8jOiOt+WPluawuOS5heWxheawkeWNoe+8
jOWmguS9leiOt+W+l+WKoOaLv+Wkp+WxheeVmeiuuOWPr++8jOWKoOaLv+Wkp+awuOS5heWxheaw
ke+8iFBS77yJ77yMIChXaGF0c0FwcO+8mis0OSAxNTc1IDM3NTY5NzQpIOWmguS9leeUs+ivt+WK
oOaLv+Wkp+awuOS5heWxheawkeWNoe+8jOWmguS9leiOt+W+l+WKoOaLv+Wkp+awuOS5heWxheeV
meadg++8jOWKoOaLv+Wkp+awuOS5heWxheawkeWNoe+8jOWcqOWKoOaLv+Wkp+awuOS5heWxheS9
j++8jO+8iOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDTvvIkg6I635Y+W5rC45LmF5bGF5rCR5Y2h77yM
6LSt5Lmw5Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2h77yM6LSt5Lmw5Yqg5ou/5aSn5rC45LmF5bGF
5rCR5Y2h77yM55Sz6K+35rC45LmF5bGF5rCR5Y2h44CCDQrnm7TmjqXnp7vmsJHliqDmi7/lpKfl
ubbojrflj5bpqb7nhafjgIHlsYXnlZnorrjlj6/jgIHmsLjkuYXlsYXmsJHljaHlj4rouqvku73o
r4ENCuWxheeVmeWNoeOAgei6q+S7veivgSDigJMg55u05o6l56e75rCR5Yqg5ou/5aSn77yM6I63
5Y+W6am+54WnDQoNCmh0dHBzOi8vcnVzaG15bmV3cGFzc3BvcnQuY29tL3Byb2R1Y3Qv6LSt5Lmw
5Yqg5ou/5aSn5bGF55WZ6K645Y+vLw0KaHR0cHM6Ly9ydXNobXluZXdwYXNzcG9ydC5jb20vcHJv
ZHVjdC10YWcv5Zyo57q/55Sz6K+35bGF55WZ6K645Y+vLw0KaHR0cHM6Ly9ydXNobXluZXdwYXNz
cG9ydC5jb20vcHJvZHVjdC10YWcv6LO86LK35Yqg5ou/5aSn5rC45LmF5bGF55WZ5qyKLw0KaHR0
cHM6Ly9ydXNobXluZXdwYXNzcG9ydC5jb20vcHJvZHVjdC10YWcv6LO86LK35q2j5ZOB5Yqg5ou/
5aSn6K2354WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv5Yqg5ou/5aSn
5bGF55WZ6K645Y+vLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3QtdGFnL+WK
oOaLv+Wkp+awuOS5heWxheawkeWNoS8NCmh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9k
dWN0LXRhZy/lnKjnur/otK3kubDlsYXnlZnorrjlj68vDQpodHRwczovL2J1eXJlYWxjdXJyZW5j
eS5jb20vcHJvZHVjdC10YWcv5aaC5L2V6I635b6X5Yqg5ou/5aSn5bGF55WZ6K645Y+vLw0KaHR0
cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3QtdGFnL+WmguS9leeUs+ivt+WKoOaLv+Wk
p+awuOS5heWxheawkeWNoS8NCmh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WK
oOaLv+Wkp+WxheeVmeiuuOWPry8NCg0K6YKu566x77yaYXV0aGVudGljbm90ZXM1QGdtYWlsLmNv
bQ0K5b6u5L+h77yaU2NvdHRib3dlcnM0NA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
