Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /qt8LECSMWornAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 20:13:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 47279693E92
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 20:13:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60EDC40A8C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 18:13:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E035A3F9BF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 18:13:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: keepmealive78@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Tue, 16 Jun 2026 18:13:13 -0000
Message-ID: <178163359391.3408380.14190273819672383761@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: VTVXQ63JHUY2YUFMDPJZE5CEJ7GVS5G5
X-Message-ID-Hash: VTVXQ63JHUY2YUFMDPJZE5CEJ7GVS5G5
X-MailFrom: keepmealive78@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?6LSt5Lmw55yf5YGH5oqk54Wn77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iei0reS5sOmpvumptuaJp+eFp++8jOeUs+ivt+aKpOeFp++8jA==?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VTVXQ63JHUY2YUFMDPJZE5CEJ7GVS5G5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[keepmealive78@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[keepmealive78@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rushmynewpassport.com:url,globaltraveldocs.com:url,lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,buyrealcurrency.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 47279693E92

6LSt5Lmw55yf5YGH5oqk54Wn77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iei0reS5sOmpvump
tuaJp+eFp++8jOeUs+ivt+aKpOeFp++8jOi0reS5sOecn+ato+eahOiLseWbveaKpOeFp++8jOWc
qOe6v+i0reS5sOaWsOWKoOWdoeaKpOeFp++8jOi0reS5sOaXpeacrOaKpOeFp++8jOi0reS5sOa+
s+Wkp+WIqeS6muaKpOeFp++8jOi0reS5sOazsOWbveaKpOeFp++8jOi0reS5sOmYv+iBlOmFi+aK
pOeFp++8jOi0reS5sOWKoOaLv+Wkp+aKpOeFp++8jOi0reS5sOi2iuWNl+aKpOeFp++8jCAoV2hh
dHNBcHAgOiArNDkgMTU3NSAzNzU2OTc0KSDotK3kubDpqazmnaXopb/kuprmiqTnhafvvIzlh7rl
lK7lgYfmiqTnhafvvIzlnKjlk6rph4zlnKjnur/otK3kubDnvo7lm73miqTnhafvvIzmiJHlpoLk
vZXojrflvpfmiqTnhafvvIjlvq7kv6HvvJpTY290dGJvd2VyczQ077yJ6LSt5Lmw6aaZ5riv5oqk
54Wn55qE5YGH5omr5o+P5Lu277yM5Zyo57q/6LSt5Lmw5oqk54Wn77yM5b+r6YCf5LuO5a626YeM
5Zyo57q/6LSt5Lmw5oqk54Wn77yM5oiR5Y+v5Lul5Zyo57q/5Yqe55CG576O5Zu95oqk54Wn5ZCX
77yM6LSt5Lmw5oqk54Wn6ZyA6KaB5aSa6ZW/5pe26Ze077yM576O5Zu95oqk54Wn5aSa5bCR6ZKx
77yM5aaC5L2V6I635b6X5oqk54Wn77yM6I635b6X576O5Zu95oqk54Wn77yM5Zyo5ZOq6YeM5Y+v
5Lul6I635b6X5oiR6ZmE6L+R55qE5oqk54Wn77yM6LSt5Lmw55yf5q2j55qE55Sf54mp54m55b6B
5oqk54Wn77yM56uL5Y2z55Sz6K+35oqk54Wn77yM6LSt5Lmw5aSW5Lqk5oqk54Wn77yM5Zyo5Lit
5Zu96LSt5Lmw576O5Zu95oqk54Wn77yM5Zyo57q/6LSt5Lmw576O5Zu95oqk54Wn77yM77yI5b6u
5L+h77yaU2NvdHRib3dlcnM0NO+8ieWcqOe6v+i0reS5sOiKrOWFsOaKpOeFp++8jOWcqOe6v+i0
reS5sOW+t+WbveaKpOeFp++8jOi0reS5sOaWsOWcqOe6v+i0reS5sOaWsOilv+WFsOaKpOeFp+OA
geWcqOe6v+i0reS5sOeIseWwlOWFsOaKpOeFp+OAgeWcqOe6v+i0reS5sOS4uem6puaKpOeFp+OA
geWcqOe6v+i0reS5sOiRoeiQhOeJmeaKpOeFp+OAgeWcqOe6v+i0reS5sOiRoeiQhOeJmeaKpOeF
p+OAgeWcqOe6v+i0reS5sOWNouajruWgoeaKpOeFp+OAgeWcqOe6v+i0reS5sOWcn+iAs+WFtuaK
pOeFp+OAgeWcqOe6v+i0reS5sOiNt+WFsOaKpOeFp+OAgeWcqOe6v+i0reS5sOaMquWogeaKpOeF
p+OAgeWcqOe6v+i0reS5sOazouWFsOaKpOeFp+OAgeWcqOe6v+i0reS5sOW4jOiFiuaKpOeFp+OA
geWcqOe6v+i0reS5sOWMiOeJmeWIqeaKpOeFp+OAgeWcqOe6v+i0reS5sOilv+ePreeJmeaKpOeF
p+OAgeWcqOe6v+i0reS5sOaZuuWIqeaKpOeFp+OAgeWcqOe6v+i0reS5sOWFi+e9l+WcsOS6muaK
pOeFp+OAgeWcqOe6v+i0reS5sOWTpeaWr+i+vum7juWKoOaKpOeFpyAgKFdoYXRzQXBwIDogKzQ5
IDE1NzUgMzc1Njk3NCkgDQoNCmh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WK
oOaLv+Wkp+WxheeVmeiuuOWPry8NCmh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0
L+e9keS4iuWHuuWUruWBh+e+juWbveaKpOeFpy8NCmh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNv
bS9wcm9kdWN0L+i0reS5sOe+juWbvempvumptuaJp+eFpy8NCmh0dHBzOi8vYnV5cmVhbGN1cnJl
bmN5LmNvbS9wcm9kdWN0L+i0reS5sOato+Wul+e+juWbvee7v+WNoS8NCmh0dHBzOi8vYnV5cmVh
bGN1cnJlbmN5LmNvbS9wcm9kdWN0L+e9keS4iuWHuuWUruWBh+e+juWbveaKpOeFpy8NCmh0dHBz
Oi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOS4reWbveaKpOeFpy8NCmh0dHBz
Oi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WcqOe6v+i0reS5sOaKpOeFpy8NCmh0dHBz
Oi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOato+eJiOmfqeWbveaKpOeFpy8N
Cmh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WmguS9lei0reS5sOato+eJiOe+
juWbveaKpOeFpy0yMDI2Lw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv5Zyo
57q/6LSt5Lmw5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt
5Lmw5q2j54mI5Lit5Zu95oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1
Y3Qv6LSt5Lmw55yf5q2j55qE5Yqg5ou/5aSn5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVu
Y3kuY29tL3Byb2R1Y3Qv6LSt5Lmw6Iux5Zu95Y6f54mI5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFs
Y3VycmVuY3kuY29tL3Byb2R1Y3Qv5aaC5L2V5Zyo5a625ZCI5rOV6I635Y+W5q2j54mI5b635Zu9
5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw5Lit5Zu9
5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv572R5LiK5Ye65ZSu
5YGH576O5Zu95oqk54WnLw0KaHR0cHM6Ly9nbG9iYWx0cmF2ZWxkb2NzLmNvbS9wcm9kdWN0L+Wc
qOe6v+i0reS5sOecn+WBh+aKpOeFpy8NCmh0dHBzOi8vcnVzaG15bmV3cGFzc3BvcnQuY29tL3By
b2R1Y3Qv6LSt5Lmw5Yqg5ou/5aSn5bGF55WZ6K645Y+vLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVu
Y3kuY29tL3Byb2R1Y3Qv5Yqg5ou/5aSn5bGF55WZ6K645Y+vLw0KDQrpgq7nrrHvvJphdXRoZW50
aWNub3RlczVAZ21haWwuY29tDQrlvq7kv6HvvJpTY290dGJvd2VyczQ0DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
