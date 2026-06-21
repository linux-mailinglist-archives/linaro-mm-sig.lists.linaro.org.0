Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nn4PDszVN2o1UgcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:15:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F876AAAE8
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:15:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE60140AE5
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 12:15:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39F3A409A5
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 12:15:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: douglasesmith206@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 21 Jun 2026 12:15:01 -0000
Message-ID: <178204410123.3078834.6169808582371299876@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: N6LQ2WSOQ6HIECVHSFS3XKYJ7QHL5JQB
X-Message-ID-Hash: N6LQ2WSOQ6HIECVHSFS3XKYJ7QHL5JQB
X-MailFrom: douglasesmith206@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?6LSt5Lmw6aaZ5riv5oqk54WnICjlvq7kv6FJRO+8mldlc2J1dG1hbikg6LSt5Lmw5Lit5Zu95oqk54WnLCDos7zosrfpn5PlnIvorbfnhacsIOizvOiyt+ato+WTgeaXpeacrOitt+eFpywg6LO86LK35q2j5ZOB576O5ZyL6K2354WnLCDos7zosrflj7DngaPorbfnhacsIOizvOiyt+azsOWci+itt+eFpywg6LO86LK35q2j5ZOB5rOi6Jit6K2354WnLCDos7zosrfmraPlk4HmvrPmtLLorbfnhacsIOizvOiyt+ato+WTgeiLseWci+itt+eFpywg6LO86LK35q2j5ZOB5Yqg5ou/5aSn6K2354Wn?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N6LQ2WSOQ6HIECVHSFS3XKYJ7QHL5JQB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.69 / 15.00];
	SPAM_FLAG(5.00)[];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[firstdocumentsonline.com:url,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9F876AAAE8

6LSt5Lmw6aaZ5riv5oqk54WnICjlvq7kv6FJRO+8mldlc2J1dG1hbikg6LSt5Lmw5Lit5Zu95oqk
54WnLCDos7zosrfpn5PlnIvorbfnhacsIOizvOiyt+ato+WTgeaXpeacrOitt+eFpywg6LO86LK3
5q2j5ZOB576O5ZyL6K2354WnLCDos7zosrflj7DngaPorbfnhacsIOizvOiyt+azsOWci+itt+eF
pywg6LO86LK35q2j5ZOB5rOi6Jit6K2354WnLCDos7zosrfmraPlk4HmvrPmtLLorbfnhacsIOiz
vOiyt+ato+WTgeiLseWci+itt+eFpywg6LO86LK35q2j5ZOB5Yqg5ou/5aSn6K2354WnLCDos7zo
srfmraPlk4HmjKrlqIHorbfnhacsIOWcqOe3muizvOiyt+ecn+ato+eahOmmrOS+huilv+S6nuit
t+eFpyzos7zosrfmraPlk4Hms5XlnIvorbfnhacsIOizvOiyt+ato+WTgeaNt+WFi+itt+eFpywg
6LO86LK35q2j5ZOB5be06KW/6K2354WnLCDos7zosrfmraPlk4HmhJvmspnlsLzkup7orbfnhacs
IOizvOiyt+ecn+WBh+i6q+WIhuitiSwg6LO86LK35Y+w54Gj6Lqr5YiG6K2JLCDos7zosrflj7Dn
gaPpp5XnhacsIOizvOiyt+azsOWci+mnlemnm+Wft+eFpywg6LO86LK35rOw5ZyL6Lqr5YiG6K2J
LCDos7zosrfnnJ/lgYfnsL3orYksIOizvOiyt+WBh+e+juWFgywg6LO86LK35YGHQ1lOLCDos7zo
srflgYfmvrPluaMsIOizvOiyt+ecn+itt+eFp+aIluWBh+itt+eFpywg6LO86LK355yf5YGH6aeV
54WnLCDos7zosrfnnJ/lgYfouqvliIborYksIA0KDQooVGVsZWdyYW3vvJp3ZXNidXRtYW4wKQ0K
DQooV2hhdHNBcHDvvJorNDkgMTUyMSA1MDY2NDYyKQ0KDQoo5b6u5L+hSUTvvJpXZXNidXRtYW4p
DQoNCijkv6HnrrHvvJp3ZXNidXRtYW4wQGdtYWlsLmNvbSkNCg0K6LSt5Lmw6aaZ5riv5oqk54Wn
OiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/otK3kubDpppnmuK/miqTnhacvDQro
tK3kubDkuK3lm73miqTnhac6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL+i0reS5
sOS4reWbveaKpOeFpy8NCuizvOiyt+ato+WTgeWKoOaLv+Wkp+itt+eFpzogaHR0cHM6Ly9maXJz
dGRvY3VtZW50c29ubGluZS5jb20v6LO86LK35q2j5ZOB5Yqg5ou/5aSn6K2354WnLw0K6LO86LK3
5q2j5ZOB5oyq5aiB6K2354WnOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/os7zo
srfmraPlk4HmjKrlqIHorbfnhacvDQrlnKjnt5ros7zosrfnnJ/mraPnmoTppqzkvobopb/kup7o
rbfnhac6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL+WcqOe3muizvOiyt+ecn+at
o+eahOmmrOS+huilv+S6nuitt+eFpy8NCuWcqOe3muizvOiyt+ecn+ato+eahOazsOWci+itt+eF
pzogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20v5Zyo57ea6LO86LK355yf5q2j55qE
5rOw5ZyL6K2354WnLw0K6LO86LK35q2j5ZOB5rOV5ZyL6K2354WnOiBodHRwczovL2ZpcnN0ZG9j
dW1lbnRzb25saW5lLmNvbS/os7zosrfmraPlk4Hms5XlnIvorbfnhacvDQrlnKjnt5ros7zosrfn
nJ/mraPnmoTlj7DngaPorbfnhac6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL+Wc
qOe3muizvOiyt+ecn+ato+eahOWPsOeBo+itt+eFpy8NCuWcqOe3muizvOiyt+ecn+ato+eahOiR
oeiQhOeJmeitt+eFpzogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20v5Zyo57ea6LO8
6LK355yf5q2j55qE6JGh6JCE54mZ6K2354WnLw0K6LO86LK35q2j5ZOB6Iux5ZyL6K2354WnOiBo
dHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/os7zosrfmraPlk4Hoi7HlnIvorbfnhacv
DQros7zosrfmraPlk4HmvrPmtLLorbfnhac6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUu
Y29tL+izvOiyt+ato+WTgea+s+a0suitt+eFpy8NCuizvOiyt+ato+WTgeazouiYreitt+eFpzog
aHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20v6LO86LK35q2j5ZOB5rOi6Jit6K2354Wn
Lw0K6LO86LK35q2j5ZOB576O5ZyL6K2354WnOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5l
LmNvbS/os7zosrfmraPlk4Hnvo7lnIvorbfnhacvDQros7zosrfmraPlk4HmhJvmspnlsLzkup7o
rbfnhac6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL+izvOiyt+ato+WTgeaEm+ay
meWwvOS6nuitt+eFpy8NCuizvOiyt+ato+WTgeW3tOilv+itt+eFpzogaHR0cHM6Ly9maXJzdGRv
Y3VtZW50c29ubGluZS5jb20v6LO86LK35q2j5ZOB5be06KW/6K2354WnLw0K6LO86LK35q2j5ZOB
5o235YWL6K2354WnOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/os7zosrfmraPl
k4HmjbflhYvorbfnhacvDQros7zosrfmraPlk4Hml6XmnKzorbfnhac6IGh0dHBzOi8vZmlyc3Rk
b2N1bWVudHNvbmxpbmUuY29tL+izvOiyt+ato+WTgeaXpeacrOitt+eFpy8NCuizvOiyt+ecn+at
o+eahOmfk+Wci+itt+eFpzogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LXJl
YWwta29yZWFuLXBhc3Nwb3J0Lw0KDQrlnKjnt5ros7zosrfpppnmuK/nsL3orYnvvIjlvq7kv6FJ
RO+8mldlc2J1dG1hbu+8ie+8jOWcqOe3muizvOiyt+S4reWci+ewveitie+8jOWcqOe3muizvOiy
t+mfk+Wci+ewveitie+8jOWcqOe3muizvOiyt+ato+WTgeaXpeacrOewveitie+8jOWcqOe3muiz
vOiyt+ato+WTgee+juWci+ewveitie+8jOWcqOe3muizvOiyt+WPsOeBo+ewveitie+8jOWcqOe3
muizvOiyt+azsOWci+ewveitie+8jOWcqOe3muizvOiyt+ato+WTgeazouiYreewveitie+8jOWc
qOe3muizvOiyt+ato+WTgea+s+a0suewveitie+8jOe3muS4iuizvOiyt+ato+WTgeiLseWci+ew
veitie+8jOe3muS4iuizvOiyt+ato+WTgeWKoOaLv+Wkp+ewveitie+8jOe3muS4iuizvOiyt+at
o+WTgeaMquWogeewveitie+8jOe3muS4iuizvOiyt+ato+WTgemmrOS+huilv+S6nuewveitie+8
jOe3muS4iuizvOiyt+ato+WTgeazleWci+ewveitie+8jOe3muS4iuizvOiyt+ato+WTgeaNt+WF
i+ewveitie+8jOe3muS4iuizvOiyt+ato+WTgeW3tOilv+ewveitie+8jOe3muS4iuizvOiyt+at
o+WTgeaEm+aymeWwvOS6nuewveitiQ0KDQrlnKjnt5ros7zosrfnnJ/mraPnmoTnvo7lnIt2aXNh
5Y2hOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/lnKjnt5ros7zosrfnnJ/mraPn
moTnvo7lnIt2aXNh5Y2hLw0K5Zyo57ea6LO86LK355yf5q2j55qE5Lit5ZyL57C96K2JOiBodHRw
czovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/lnKjnt5ros7zosrfnnJ/mraPnmoTkuK3lnIvn
sL3orYkvDQrlnKjnt5ros7zosrfnnJ/mraPnmoTlj7DngaPnsL3orYk6IGh0dHBzOi8vZmlyc3Rk
b2N1bWVudHNvbmxpbmUuY29tL+WcqOe3muizvOiyt+ecn+ato+eahOWPsOeBo+ewveitiS8NCuWc
qOe3muizvOiyt+ecn+ato+eahOmmrOS+huilv+S6nuewveitiTogaHR0cHM6Ly9maXJzdGRvY3Vt
ZW50c29ubGluZS5jb20v5Zyo57ea6LO86LK355yf5q2j55qE6aas5L6G6KW/5Lqe57C96K2JLw0K
5Zyo57ea6LO86LK355yf5a+m55qE6Iux5ZyL57C96K2JOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRz
b25saW5lLmNvbS9idXktcmVhbC11ay12aXNhLw0K57ea5LiK6LO86LK355Sz5qC557C96K2JOiBo
dHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktc2NoZW5nZW4tdmlzYS1vbmxpbmUv
DQrlnKjnt5ros7zosrfnnJ/lr6bnmoTnvo7lnIvnsL3orYk6IGh0dHBzOi8vZmlyc3Rkb2N1bWVu
dHNvbmxpbmUuY29tL2J1eS1yZWFsLXUtcy12aXNhcy8NCuWcqOe3muizvOiyt+ecn+WvpueahOaW
sOWKoOWdoeewveitiTogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LXJlYWwt
c2luZ2Fwb3JlLXZpc2FzLw0K5Zyo57ea6LO86LK355yf5q2j55qE5Yqg5ou/5aSn57C96K2JOiBo
dHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktcmVhbC1jYW5hZGlhbi12aXNhcy8N
CuWcqOe3muizvOiyt+ecn+ato+eahOa+s+a0suewveitiTogaHR0cHM6Ly9maXJzdGRvY3VtZW50
c29ubGluZS5jb20vYnV5LXJlYWwtYXVzdHJhbGlhbi12aXNhcy8NCuizvOiyt+WKoOaLv+Wkp+aw
uOS5heWxheawkeWNoTogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20v6LO86LK35Yqg
5ou/5aSn5rC45LmF5bGF5rCR5Y2hLw0KDQooVGVsZWdyYW3vvJp3ZXNidXRtYW4wKQ0KDQooV2hh
dHNBcHDvvJorNDkgMTUyMSA1MDY2NDYyKQ0KDQoo5b6u5L+hSUTvvJpXZXNidXRtYW4pDQoNCijk
v6HnrrHvvJp3ZXNidXRtYW4wQGdtYWlsLmNvbSkNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
