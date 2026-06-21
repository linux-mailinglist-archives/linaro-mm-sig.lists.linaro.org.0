Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hHK9FHbWN2pKUgcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:17:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DBB6AAB06
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:17:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0ADA840B14
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 12:17:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D98E409A5
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 12:17:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: douglasesmith206@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 21 Jun 2026 12:17:51 -0000
Message-ID: <178204427131.3081933.3664703769616238043@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: HGFGTLHH3W2DDBSTO5IUAUP7BVQQGRHK
X-Message-ID-Hash: HGFGTLHH3W2DDBSTO5IUAUP7BVQQGRHK
X-MailFrom: douglasesmith206@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?6LSt5Lmw6aaZ5riv5oqk54WnICjlvq7kv6FJRO+8mldlc2J1dG1hbikg6LSt5Lmw5Lit5Zu95oqk54WnLCDos7zosrfpn5PlnIvorbfnhacsIOizvOiyt+ato+WTgeaXpeacrOitt+eFpywg6LO86LK35q2j5ZOB576O5ZyL6K2354WnLCDos7zosrflj7DngaPorbfnhacsIOizvOiyt+azsOWci+itt+eFpywg6LO86LK35q2j5ZOB5rOi6Jit6K2354WnLCDos7zosrfmraPlk4HmvrPmtLLorbfnhacsIOizvOiyt+ato+WTgeiLseWci+itt+eFpywg6LO86LK35q2j5ZOB5Yqg5ou/5aSn6K2354WnLCDos7zosrfmraPlk4HmjKrlqIHorbfnhacsIOWcqOe3muizvOiyt+ecn+ato+eahOmmrOS+huilv+S6nuitt+eFpyzos7zosrfmraPlk4Hms5XlnIvorbfnhacsIOizvOiyt+ato+WTgeaNt+WFi+itt+eFpywg6LO86LK35q2j5ZOB5be06KW/6K2354WnLCDos7zosrfmraPlk4HmhJvmspnlsLzkup7orbfnhacsIOizvOiyt+ecn+WBh+i6q+WIhuitiSwg6LO86LK35Y+w54Gj6Lqr5YiG6K2JLCDos7zosrflj7DngaPpp5XnhacsIOizvOiyt+azsOWci+mnlemnm+Wft+eFpywg6LO86LK35rOw5ZyL6Lqr5YiG6K2JLCDos7zosrfnnJ/lgYfnsL3orYksIOizvOiyt+WBh+e+juWFgywg6LO86LK35YGHQ1lOLCDos7zosrflgYfmvrPluaMsIOizvOiyt+ecn+itt+eFp+aIluWBh+itt+eFpywg6LO86LK355yf5YGH6aeV54WnLCDos7zosrfnnJ/lgYfouqvliIborYks?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HGFGTLHH3W2DDBSTO5IUAUP7BVQQGRHK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [11.25 / 15.00];
	SPAM_FLAG(5.00)[];
	SEM_URIBL_FRESH15(3.00)[buytraveldocsonline.com:url];
	LONG_SUBJ(2.26)[301];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,buytraveldocsonline.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E0DBB6AAB06
X-Spam: Yes

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
54WnLCDos7zosrfnnJ/lgYfouqvliIborYksIA0KDQrotK3kubDpppnmuK/miqTnhac6IGh0dHBz
Oi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v6LSt5Lmw6aaZ5riv5oqk54WnLw0K6LSt5Lmw5Lit
5Zu95oqk54WnOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+i0reS5sOS4reWbveaK
pOeFpy8NCuizvOiyt+ato+WTgeWKoOaLv+Wkp+itt+eFpzogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nz
b25saW5lLmNvbS/os7zosrfmraPlk4HliqDmi7/lpKforbfnhacvDQros7zosrfmraPlk4HmjKrl
qIHorbfnhac6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v6LO86LK35q2j5ZOB5oyq
5aiB6K2354WnLw0K5Zyo57ea6LO86LK355yf5q2j55qE6aas5L6G6KW/5Lqe6K2354WnOiBodHRw
czovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+WcqOe3muizvOiyt+ecn+ato+eahOmmrOS+huil
v+S6nuitt+eFpy8NCuWcqOe3muizvOiyt+ecn+ato+eahOazsOWci+itt+eFpzogaHR0cHM6Ly9i
dXl0cmF2ZWxkb2Nzb25saW5lLmNvbS/lnKjnt5ros7zosrfnnJ/mraPnmoTms7DlnIvorbfnhacv
DQros7zosrfmraPlk4Hms5XlnIvorbfnhac6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5j
b20v6LO86LK35q2j5ZOB5rOV5ZyL6K2354WnLw0K5Zyo57ea6LO86LK355yf5q2j55qE5Y+w54Gj
6K2354WnOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+WcqOe3muizvOiyt+ecn+at
o+eahOWPsOeBo+itt+eFpy8NCuWcqOe3muizvOiyt+ecn+ato+eahOiRoeiQhOeJmeitt+eFpzog
aHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS/lnKjnt5ros7zosrfnnJ/mraPnmoTokaHo
kITniZnorbfnhacvDQros7zosrfmraPlk4Hoi7HlnIvorbfnhac6IGh0dHBzOi8vYnV5dHJhdmVs
ZG9jc29ubGluZS5jb20v6LO86LK35q2j5ZOB6Iux5ZyL6K2354WnLw0K6LO86LK35q2j5ZOB5r6z
5rSy6K2354WnOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+izvOiyt+ato+WTgea+
s+a0suitt+eFpy8NCuizvOiyt+ato+WTgeazouiYreitt+eFpzogaHR0cHM6Ly9idXl0cmF2ZWxk
b2Nzb25saW5lLmNvbS/os7zosrfmraPlk4Hms6LomK3orbfnhacvDQros7zosrfmraPlk4Hnvo7l
nIvorbfnhac6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v6LO86LK35q2j5ZOB576O
5ZyL6K2354WnLw0K6LO86LK35q2j5ZOB5oSb5rKZ5bC85Lqe6K2354WnOiBodHRwczovL2J1eXRy
YXZlbGRvY3NvbmxpbmUuY29tL+izvOiyt+ato+WTgeaEm+aymeWwvOS6nuitt+eFpy8NCuizvOiy
t+ato+WTgeW3tOilv+itt+eFpzogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS/os7zo
srfmraPlk4Hlt7Topb/orbfnhacvDQros7zosrfmraPlk4HmjbflhYvorbfnhac6IGh0dHBzOi8v
YnV5dHJhdmVsZG9jc29ubGluZS5jb20v6LO86LK35q2j5ZOB5o235YWL6K2354WnLw0K6LO86LK3
5q2j5ZOB5pel5pys6K2354WnOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+izvOiy
t+ato+WTgeaXpeacrOitt+eFpy8NCuizvOiyt+ecn+ato+eahOmfk+Wci+itt+eFpzogaHR0cHM6
Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS9idXktcmVhbC1rb3JlYW4tcGFzc3BvcnQvDQoNCihU
ZWxlZ3Jhbe+8mndlc2J1dG1hbjApDQoNCihXaGF0c0FwcO+8mis0OSAxNTIxIDUwNjY0NjIpDQoN
Cijlvq7kv6FJRO+8mldlc2J1dG1hbikNCg0KKOS/oeeuse+8mndlc2J1dG1hbjBAZ21haWwuY29t
KQ0KDQpodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tDQoNCuWcqOe3muizvOiyt+mmmea4
r+ewveitie+8iOW+ruS/oUlE77yaV2VzYnV0bWFu77yJ77yM5Zyo57ea6LO86LK35Lit5ZyL57C9
6K2J77yM5Zyo57ea6LO86LK36Z+T5ZyL57C96K2J77yM5Zyo57ea6LO86LK35q2j5ZOB5pel5pys
57C96K2J77yM5Zyo57ea6LO86LK35q2j5ZOB576O5ZyL57C96K2J77yM5Zyo57ea6LO86LK35Y+w
54Gj57C96K2J77yM5Zyo57ea6LO86LK35rOw5ZyL57C96K2J77yM5Zyo57ea6LO86LK35q2j5ZOB
5rOi6Jit57C96K2J77yM5Zyo57ea6LO86LK35q2j5ZOB5r6z5rSy57C96K2J77yM57ea5LiK6LO8
6LK35q2j5ZOB6Iux5ZyL57C96K2J77yM57ea5LiK6LO86LK35q2j5ZOB5Yqg5ou/5aSn57C96K2J
77yM57ea5LiK6LO86LK35q2j5ZOB5oyq5aiB57C96K2J77yM57ea5LiK6LO86LK35q2j5ZOB6aas
5L6G6KW/5Lqe57C96K2J77yM57ea5LiK6LO86LK35q2j5ZOB5rOV5ZyL57C96K2J77yM57ea5LiK
6LO86LK35q2j5ZOB5o235YWL57C96K2J77yM57ea5LiK6LO86LK35q2j5ZOB5be06KW/57C96K2J
77yM57ea5LiK6LO86LK35q2j5ZOB5oSb5rKZ5bC85Lqe57C96K2JDQoNCuWcqOe3muizvOiyt+ec
n+ato+eahOe+juWci3Zpc2HljaE6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v5Zyo
57ea6LO86LK355yf5q2j55qE576O5ZyLdmlzYeWNoS8NCuWcqOe3muizvOiyt+ecn+ato+eahOS4
reWci+ewveitiTogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS/lnKjnt5ros7zosrfn
nJ/mraPnmoTkuK3lnIvnsL3orYkvDQrlnKjnt5ros7zosrfnnJ/mraPnmoTlj7DngaPnsL3orYk6
IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v5Zyo57ea6LO86LK355yf5q2j55qE5Y+w
54Gj57C96K2JLw0K5Zyo57ea6LO86LK355yf5q2j55qE6aas5L6G6KW/5Lqe57C96K2JOiBodHRw
czovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+WcqOe3muizvOiyt+ecn+ato+eahOmmrOS+huil
v+S6nuewveitiS8NCuWcqOe3muizvOiyt+ecn+WvpueahOiLseWci+ewveitiTogaHR0cHM6Ly9i
dXl0cmF2ZWxkb2Nzb25saW5lLmNvbS9idXktcmVhbC11ay12aXNhLw0K57ea5LiK6LO86LK355Sz
5qC557C96K2JOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL2J1eS1zY2hlbmdlbi12
aXNhLW9ubGluZS8NCuWcqOe3muizvOiyt+ecn+WvpueahOe+juWci+ewveitiTogaHR0cHM6Ly9i
dXl0cmF2ZWxkb2Nzb25saW5lLmNvbS9idXktcmVhbC11LXMtdmlzYXMvDQrlnKjnt5ros7zosrfn
nJ/lr6bnmoTmlrDliqDlnaHnsL3orYk6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v
YnV5LXJlYWwtc2luZ2Fwb3JlLXZpc2FzLw0K5Zyo57ea6LO86LK355yf5q2j55qE5Yqg5ou/5aSn
57C96K2JOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL2J1eS1yZWFsLWNhbmFkaWFu
LXZpc2FzLw0K5Zyo57ea6LO86LK355yf5q2j55qE5r6z5rSy57C96K2JOiBodHRwczovL2J1eXRy
YXZlbGRvY3NvbmxpbmUuY29tL2J1eS1yZWFsLWF1c3RyYWxpYW4tdmlzYXMvDQros7zosrfliqDm
i7/lpKfmsLjkuYXlsYXmsJHljaE6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v6LO8
6LK35Yqg5ou/5aSn5rC45LmF5bGF5rCR5Y2hLw0KDQooVGVsZWdyYW3vvJp3ZXNidXRtYW4wKQ0K
DQooV2hhdHNBcHDvvJorNDkgMTUyMSA1MDY2NDYyKQ0KDQoo5b6u5L+hSUTvvJpXZXNidXRtYW4p
DQoNCijkv6HnrrHvvJp3ZXNidXRtYW4wQGdtYWlsLmNvbSkNCg0KaHR0cHM6Ly9idXl0cmF2ZWxk
b2Nzb25saW5lLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
