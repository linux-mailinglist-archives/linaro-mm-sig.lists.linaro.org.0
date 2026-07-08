Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hhnHBSRxVmqD5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:25:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CBE757641
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:25:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=xiaomi.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD7F1404D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:25:54 +0000 (UTC)
Received: from outboundhk.mxmail.xiaomi.com (outboundhk.mxmail.xiaomi.com [118.143.206.90])
	by lists.linaro.org (Postfix) with ESMTP id A10C340F80
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 11:34:04 +0000 (UTC)
X-CSE-ConnectionGUID: 3smA+s49THWhOoqiE2G80Q==
X-CSE-MsgGUID: SubvFubhRouzXpcwt8ywzQ==
X-IronPort-AV: E=Sophos;i="6.25,153,1779120000";
   d="scan'208,217";a="155379444"
From: =?utf-8?B?6auY57+U?= <gaoxiang17@xiaomi.com>
To: Xiang Gao <gxxa03070307@gmail.com>, "sumit.semwal@linaro.org"
	<sumit.semwal@linaro.org>, "christian.koenig@amd.com"
	<christian.koenig@amd.com>
Thread-Topic: [External Mail][PATCH] dma-buf: fix stale @lock references in
 struct dma_buf documentation
Thread-Index: AQHczJp2tSSUxq7VmEiwYkA74XXh1bZkAegw
Date: Wed, 8 Jul 2026 11:34:02 +0000
Message-ID: <de9e6586642a4ab19ec9a9b36fed3886@xiaomi.com>
References: <20260415054101.535520-1-gxxa03070307@gmail.com>
In-Reply-To: <20260415054101.535520-1-gxxa03070307@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.149.45.230]
MIME-Version: 1.0
X-Spamd-Bar: -----------
X-MailFrom: gaoxiang17@xiaomi.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AKZLMRCG5RN77VIAN3TI7MC3BYGSL6OG
X-Message-ID-Hash: AKZLMRCG5RN77VIAN3TI7MC3BYGSL6OG
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:47 +0000
CC: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?q?=E7=AD=94=E5=A4=8D=3A_=5BExternal_Mail=5D=5BPATCH=5D_dma-buf=3A_fix_stale_=40lock_references_in_struct_dma=5Fbuf_documentation?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AKZLMRCG5RN77VIAN3TI7MC3BYGSL6OG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2649505102978227466=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[xiaomi.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	DATE_IN_PAST(1.00)[149];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:gxxa03070307@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,amd.com];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER(0.00)[gaoxiang17@xiaomi.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaoxiang17@xiaomi.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,lists.freedesktop.org:email,xiaomi.com:from_mime,xiaomi.com:email,xiaomi.com:mid,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97CBE757641

--===============2649505102978227466==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_de9e6586642a4ab19ec9a9b36fed3886xiaomicom_"

--_000_de9e6586642a4ab19ec9a9b36fed3886xiaomicom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuIEvDtm5pZy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
CuWPkeS7tuS6ujogWGlhbmcgR2FvIDxneHhhMDMwNzAzMDdAZ21haWwuY29tPg0K5Y+R6YCB5pe2
6Ze0OiAyMDI25bm0NOaciDE15pelIDEzOjQxOjAxDQrmlLbku7bkuro6IHN1bWl0LnNlbXdhbEBs
aW5hcm8ub3JnOyBjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20NCuaKhOmAgTogbGludXgtbWVkaWFA
dmdlci5rZXJuZWwub3JnOyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IOmr
mOe/lA0K5Li76aKYOiBbRXh0ZXJuYWwgTWFpbF1bUEFUQ0hdIGRtYS1idWY6IGZpeCBzdGFsZSBA
bG9jayByZWZlcmVuY2VzIGluIHN0cnVjdCBkbWFfYnVmIGRvY3VtZW50YXRpb24NCg0KW+WklumD
qOmCruS7tl0g5q2k6YKu5Lu25p2l5rqQ5LqO5bCP57Gz5YWs5Y+45aSW6YOo77yM6K+36LCo5oWO
5aSE55CG44CC6Iul5a+56YKu5Lu25a6J5YWo5oCn5a2Y55aR77yM6K+35bCG6YKu5Lu26L2s5Y+R
57uZbWlzZWNAeGlhb21pLmNvbei/m+ihjOWPjemmiA0KDQpGcm9tOiBYaWFuZyBHYW8gPGdhb3hp
YW5nMTdAeGlhb21pLmNvbT4NCg0KVGhlIGtlcm5lbC1kb2MgY29tbWVudHMgZm9yIHZtYXBwaW5n
X2NvdW50ZXIgYW5kIHZtYXBfcHRyIGluIHN0cnVjdA0KZG1hX2J1ZiByZWZlcmVuY2UgIkBsb2Nr
IiBhcyB0aGUgcHJvdGVjdGluZyBsb2NrLCBidXQgc3RydWN0IGRtYV9idWYNCm5vIGxvbmdlciBo
YXMgYSAibG9jayIgbWVtYmVyLiBUaGUgbXV0ZXggd2FzIHJlbW92ZWQgaW4gZmF2b3Igb2YgdXNp
bmcNCnRoZSBkbWFfcmVzdiBsb2NrIGV4Y2x1c2l2ZWx5LiBUaGUgaW1wbGVtZW50YXRpb24gY29y
cmVjdGx5IHVzZXMNCmRtYV9yZXN2X2Fzc2VydF9oZWxkKGRtYWJ1Zi0+cmVzdikgaW4gZG1hX2J1
Zl92bWFwKCkgYW5kDQpkbWFfYnVmX3Z1bm1hcCgpLCBzbyB1cGRhdGUgdGhlIGRvY3VtZW50YXRp
b24gdG8gcmVmZXJlbmNlIEByZXN2DQppbnN0ZWFkLg0KDQpTaWduZWQtb2ZmLWJ5OiBnYW94aWFu
ZzE3IDxnYW94aWFuZzE3QHhpYW9taS5jb20+DQotLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1idWYu
aCB8IDQgKystLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQppbmRleCAxMzNiOWU2MzdiNTUuLmVmNmQ5M2ZkN2EyYyAxMDA2NDQNCi0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aA0KQEAgLTMyMiwxMyArMzIyLDEzIEBAIHN0cnVjdCBkbWFfYnVmIHsNCiAgICAgICAgICogQHZt
YXBwaW5nX2NvdW50ZXI6DQogICAgICAgICAqDQogICAgICAgICAqIFVzZWQgaW50ZXJuYWxseSB0
byByZWZjbnQgdGhlIHZtYXBzIHJldHVybmVkIGJ5IGRtYV9idWZfdm1hcCgpLg0KLSAgICAgICAg
KiBQcm90ZWN0ZWQgYnkgQGxvY2suDQorICAgICAgICAqIFByb3RlY3RlZCBieSBAcmVzdi4NCiAg
ICAgICAgICovDQogICAgICAgIHVuc2lnbmVkIHZtYXBwaW5nX2NvdW50ZXI7DQoNCiAgICAgICAg
LyoqDQogICAgICAgICAqIEB2bWFwX3B0cjoNCi0gICAgICAgICogVGhlIGN1cnJlbnQgdm1hcCBw
dHIgaWYgQHZtYXBwaW5nX2NvdW50ZXIgPiAwLiBQcm90ZWN0ZWQgYnkgQGxvY2suDQorICAgICAg
ICAqIFRoZSBjdXJyZW50IHZtYXAgcHRyIGlmIEB2bWFwcGluZ19jb3VudGVyID4gMC4gUHJvdGVj
dGVkIGJ5IEByZXN2Lg0KICAgICAgICAgKi8NCiAgICAgICAgc3RydWN0IGlvc3lzX21hcCB2bWFw
X3B0cjsNCg0KLS0NCjIuMzQuMQ0KDQo=

--_000_de9e6586642a4ab19ec9a9b36fed3886xiaomicom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHRleHQg
LS0+PHN0eWxlPjwhLS0gLkVtYWlsUXVvdGUgeyBtYXJnaW4tbGVmdDogMXB0OyBwYWRkaW5nLWxl
ZnQ6IDRwdDsgYm9yZGVyLWxlZnQ6ICM4MDAwMDAgMnB4IHNvbGlkOyB9IC0tPjwvc3R5bGU+DQo8
L2hlYWQ+DQo8Ym9keT4NCjxtZXRhIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD1VVEYtOCI+
DQo8c3R5bGUgdHlwZT0idGV4dC9jc3MiIHN0eWxlPSIiPg0KPCEtLQ0KcA0KCXttYXJnaW4tdG9w
OjA7DQoJbWFyZ2luLWJvdHRvbTowfQ0KLS0+DQo8L3N0eWxlPg0KPGRpdiBkaXI9Imx0ciI+DQo8
ZGl2IGlkPSJ4X2RpdnRhZ2RlZmF1bHR3cmFwcGVyIiBkaXI9Imx0ciIgc3R5bGU9ImZvbnQtc2l6
ZToxMnB0OyBjb2xvcjojMDAwMDAwOyBmb250LWZhbWlseTpDYWxpYnJpLEhlbHZldGljYSxzYW5z
LXNlcmlmIj4NCjxwPkhpJm5ic3A7PHNwYW4+PHNwYW4+Q2hyaXN0aWFuIEvDtm5pZy48L3NwYW4+
PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGhyIHRhYmluZGV4PSItMSIgc3R5bGU9ImRpc3BsYXk6aW5s
aW5lLWJsb2NrOyB3aWR0aDo5OCUiPg0KPGRpdiBpZD0ieF9kaXZScGx5RndkTXNnIiBkaXI9Imx0
ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIgY29sb3I9IiMwMDAwMDAiIHN0eWxl
PSJmb250LXNpemU6MTFwdCI+PGI+5Y+R5Lu25Lq6OjwvYj4gWGlhbmcgR2FvICZsdDtneHhhMDMw
NzAzMDdAZ21haWwuY29tJmd0Ozxicj4NCjxiPuWPkemAgeaXtumXtDo8L2I+IDIwMjblubQ05pyI
MTXml6UgMTM6NDE6MDE8YnI+DQo8Yj7mlLbku7bkuro6PC9iPiBzdW1pdC5zZW13YWxAbGluYXJv
Lm9yZzsgY2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPGJyPg0KPGI+5oqE6YCBOjwvYj4gbGludXgt
bWVkaWFAdmdlci5rZXJuZWwub3JnOyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmc7IOmrmOe/lDxicj4NCjxiPuS4u+mimDo8L2I+IFtFeHRlcm5hbCBNYWlsXVtQQVRDSF0gZG1h
LWJ1ZjogZml4IHN0YWxlIEBsb2NrIHJlZmVyZW5jZXMgaW4gc3RydWN0IGRtYV9idWYgZG9jdW1l
bnRhdGlvbjwvZm9udD4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPGZvbnQg
c2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyI+DQo8ZGl2IGNsYXNzPSJQbGFp
blRleHQiPlvlpJbpg6jpgq7ku7ZdIOatpOmCruS7tuadpea6kOS6juWwj+exs+WFrOWPuOWklumD
qO+8jOivt+iwqOaFjuWkhOeQhuOAguiLpeWvuemCruS7tuWuieWFqOaAp+WtmOeWke+8jOivt+Ww
humCruS7tui9rOWPkee7mW1pc2VjQHhpYW9taS5jb23ov5vooYzlj43ppog8YnI+DQo8YnI+DQpG
cm9tOiBYaWFuZyBHYW8gJmx0O2dhb3hpYW5nMTdAeGlhb21pLmNvbSZndDs8YnI+DQo8YnI+DQpU
aGUga2VybmVsLWRvYyBjb21tZW50cyBmb3Igdm1hcHBpbmdfY291bnRlciBhbmQgdm1hcF9wdHIg
aW4gc3RydWN0PGJyPg0KZG1hX2J1ZiByZWZlcmVuY2UgJnF1b3Q7QGxvY2smcXVvdDsgYXMgdGhl
IHByb3RlY3RpbmcgbG9jaywgYnV0IHN0cnVjdCBkbWFfYnVmPGJyPg0Kbm8gbG9uZ2VyIGhhcyBh
ICZxdW90O2xvY2smcXVvdDsgbWVtYmVyLiBUaGUgbXV0ZXggd2FzIHJlbW92ZWQgaW4gZmF2b3Ig
b2YgdXNpbmc8YnI+DQp0aGUgZG1hX3Jlc3YgbG9jayBleGNsdXNpdmVseS4gVGhlIGltcGxlbWVu
dGF0aW9uIGNvcnJlY3RseSB1c2VzPGJyPg0KZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoZG1hYnVmLSZn
dDtyZXN2KSBpbiBkbWFfYnVmX3ZtYXAoKSBhbmQ8YnI+DQpkbWFfYnVmX3Z1bm1hcCgpLCBzbyB1
cGRhdGUgdGhlIGRvY3VtZW50YXRpb24gdG8gcmVmZXJlbmNlIEByZXN2PGJyPg0KaW5zdGVhZC48
YnI+DQo8YnI+DQpTaWduZWQtb2ZmLWJ5OiBnYW94aWFuZzE3ICZsdDtnYW94aWFuZzE3QHhpYW9t
aS5jb20mZ3Q7PGJyPg0KLS0tPGJyPg0KJm5ic3A7aW5jbHVkZS9saW51eC9kbWEtYnVmLmggfCA0
ICYjNDM7JiM0MzstLTxicj4NCiZuYnNwOzEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoJiM0
MzspLCAyIGRlbGV0aW9ucygtKTxicj4NCjxicj4NCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oPGJyPg0KaW5kZXggMTMzYjllNjM3
YjU1Li5lZjZkOTNmZDdhMmMgMTAwNjQ0PGJyPg0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVm
Lmg8YnI+DQomIzQzOyYjNDM7JiM0MzsgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaDxicj4NCkBA
IC0zMjIsMTMgJiM0MzszMjIsMTMgQEAgc3RydWN0IGRtYV9idWYgezxicj4NCiZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAqIEB2bWFwcGluZ19jb3VudGVy
Ojxicj4NCiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAq
PGJyPg0KJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICog
VXNlZCBpbnRlcm5hbGx5IHRvIHJlZmNudCB0aGUgdm1hcHMgcmV0dXJuZWQgYnkgZG1hX2J1Zl92
bWFwKCkuPGJyPg0KLSZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAq
IFByb3RlY3RlZCBieSBAbG9jay48YnI+DQomIzQzOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyAqIFByb3RlY3RlZCBieSBAcmVzdi48YnI+DQombmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgKi88YnI+DQombmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgdW5zaWduZWQgdm1hcHBpbmdfY291bnRlcjs8
YnI+DQo8YnI+DQombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgLyoq
PGJyPg0KJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ICog
QHZtYXBfcHRyOjxicj4NCi0mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsgKiBUaGUgY3VycmVudCB2bWFwIHB0ciBpZiBAdm1hcHBpbmdfY291bnRlciAmZ3Q7IDAuIFBy
b3RlY3RlZCBieSBAbG9jay48YnI+DQomIzQzOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyAqIFRoZSBjdXJyZW50IHZtYXAgcHRyIGlmIEB2bWFwcGluZ19jb3VudGVy
ICZndDsgMC4gUHJvdGVjdGVkIGJ5IEByZXN2Ljxicj4NCiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAqLzxicj4NCiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyBzdHJ1Y3QgaW9zeXNfbWFwIHZtYXBfcHRyOzxicj4NCjxicj4N
Ci0tPGJyPg0KMi4zNC4xPGJyPg0KPGJyPg0KPC9kaXY+DQo8L3NwYW4+PC9mb250Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_de9e6586642a4ab19ec9a9b36fed3886xiaomicom_--

--===============2649505102978227466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2649505102978227466==--
