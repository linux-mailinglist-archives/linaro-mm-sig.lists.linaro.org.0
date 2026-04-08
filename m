Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEkRHN5k5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 23080431B55
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32C623F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:41 +0000 (UTC)
Received: from 17.mo584.mail-out.ovh.net (17.mo584.mail-out.ovh.net [46.105.41.16])
	by lists.linaro.org (Postfix) with ESMTPS id 125D7401C9
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2026 12:39:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=kernel.org (policy=quarantine);
	spf=pass (lists.linaro.org: domain of andi@etezian.org designates 46.105.41.16 as permitted sender) smtp.mailfrom=andi@etezian.org
Received: from director11.ghost.mail-out.ovh.net (unknown [10.110.54.146])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id 4frN1X6xrxz8Ggd
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2026 12:39:44 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-rvp9c (unknown [10.110.118.225])
	by director11.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 5CAADC29B9;
	Wed,  8 Apr 2026 12:39:43 +0000 (UTC)
Received: from etezian.org ([37.59.142.97])
	by ghost-submission-7d8d68f679-rvp9c with ESMTPSA
	id MJC9D49M1mneRSgAk2rvTQ
	(envelope-from <andi@etezian.org>); Wed, 08 Apr 2026 12:39:43 +0000
X-OVh-ClientIp: 178.82.31.9
From: Andi Shyti <andi.shyti@kernel.org>
To: christian.koenig@amd.com
Date: Wed,  8 Apr 2026 14:39:15 +0200
Message-ID: <20260408123916.2604101-1-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <68595b2ceed038074f5fe0a5739d75aafbcac8d3.camel@intel.com>
References: <68595b2ceed038074f5fe0a5739d75aafbcac8d3.camel@intel.com>
MIME-Version: 1.0
x-ovh-tracer-id: 5516909544000427226
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTFJcN3wABJSf2iZpuR5LkA/rJofncb8HPc1lvL14FRcLOhQZE9m65WI7Syzas+A5oU/HMP6qC08qwn2zeFkRR5HvIZrLxMSqek0zFZDYgrkyvfAr5plLRTBX/NT1TF8vFWKq2ajKk0j/79sd/tNec7iFaJQhArVdfqMXgEY9sgx9yGM9FzuJLYJKMjXCETNVsXf+qfrOdOhVic425NTdRHE3a3QPOSdjP3MeHA+GhGkfeLZ3KRIxDswm1v6v1n01idrLScUV3IcfBnSZc3eV7sfBqvJvxU7El0aQnmB3Qejf7phnyndjNdEJ4FQBHv47AIXzCTaI9hPomwTY2P5akDfTohtUzYYEQcqIXH3CX/jun/f++pOsfrvPqmlnxlMP1e2bGQgb0sOpwzmj7fORzpousDNvDiOIn4XuIw+5RUK4/t/rqMmN3l3Oij7y40FIaQpvv/ybO2aaGVkybL3lX1UohnhErFfXtrgS2+uTJV6mSND6P5v6qe3vqIIg5DqwXVm0LMnwCnhnFz5RQyhK2BNGTDrWTnUGyVnGeIXZ3eodH1X3dvmfuFcogjKy+TgMncWeG472nFyyoMoezOghPiNG50jwwmZkuvhGMYQL0bNLIZFn2abADKWcyGFINhaXPbpEaUmwaoEceyGjDgMGm/zmetkZCgKhjn6hYoQoZlMvg
X-Spamd-Bar: /
X-MailFrom: andi@etezian.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CFDLXL5X3MQ5VTKLGXN7ZGSG37KBRXFX
X-Message-ID-Hash: CFDLXL5X3MQ5VTKLGXN7ZGSG37KBRXFX
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:57 +0000
CC: janusz.krzysztofik@intel.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, sumit.semwal@linaro.org, Xiang Gao <gaoxiang17@xiaomi.com>, Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>, Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix UAF in dma_buf_put() tracepoint
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CFDLXL5X3MQ5VTKLGXN7ZGSG37KBRXFX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), No valid DKIM,quarantine];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[293];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,amd.com:email,linaro.org:email,xiaomi.com:email]
X-Rspamd-Queue-Id: 23080431B55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ZG1hX2J1Zl9wdXQoKSBtYXkgZHJvcCB0aGUgZmluYWwgZmlsZSByZWZlcmVuY2UgdmlhIGZwdXQo
KSwgd2hpY2gNCmNhbiBmcmVlIHRoZSBkbWEtYnVmLiBUaGUgbmV3IHRyYWNlcG9pbnQgaW52b2Nh
dGlvbiB3YXMgYWRkZWQNCmFmdGVyIGZwdXQoKSwgYW5kIERNQV9CVUZfVFJBQ0UoKSBkZXJlZmVy
ZW5jZXMgZG1hYnVmIGFuZCB0YWtlcw0KZG1hYnVmLT5uYW1lX2xvY2suDQoNClRoaXMgbGVhZHMg
dG8gYSB1c2UtYWZ0ZXItZnJlZSBvbiB0aGUgZmluYWwgcHV0LCB2aXNpYmxlIGZvcg0KZXhhbXBs
ZSBhcyBhIHNwaW5sb2NrIGJhZCBtYWdpYyBmYXVsdCBvbiBhIHBvaXNvbmVkIDB4NmI2YjZiLi4u
DQpsb2NrLg0KDQpNb3ZlIHRoZSBkbWFfYnVmX3B1dCB0cmFjZXBvaW50IGJlZm9yZSBmcHV0KCku
DQoNClJlcG9ydGVkLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0Bs
aW51eC5pbnRlbC5jb20+DQpGaXhlczogMjgxYTIyNjMxNDIzICgiZG1hLWJ1ZjogYWRkIHNvbWUg
dHJhY2Vwb2ludHMgdG8gZGVidWcuIikNClNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5dGkgPGFuZGku
c2h5dGlAbGludXguaW50ZWwuY29tPg0KQ2M6IFhpYW5nIEdhbyA8Z2FveGlhbmcxN0B4aWFvbWku
Y29tPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0t
LQ0KSGksDQoNCkkgYmVsaWV2ZSB0aGlzIHBhdGNoIGZpeGVzIHRoZSBpc3N1ZSByZXBvcnRlZCBi
eSBKYW51c3osIEkgaGF2ZW4ndA0KdGVzdGVkIGl0LiBQZXJoYXBzIHdlIGNhbiBhZGQgc29tZSBt
b3JlIGNoZWNrcyBpbiBETUFfQlVGX1RSQUNFLg0KDQpUaGFua3MsDQpBbmRpDQoNCiBkcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jIHwgMyArLS0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggYTIwMmEzMDhjMDc5Li5iNzI5
MzJjNTdjYjkgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtODQ1LDkgKzg0NSw4IEBAIHZvaWQgZG1hX2J1
Zl9wdXQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCiAJaWYgKFdBUk5fT04oIWRtYWJ1ZiB8fCAh
ZG1hYnVmLT5maWxlKSkNCiAJCXJldHVybjsNCiANCi0JZnB1dChkbWFidWYtPmZpbGUpOw0KLQ0K
IAlETUFfQlVGX1RSQUNFKHRyYWNlX2RtYV9idWZfcHV0LCBkbWFidWYpOw0KKwlmcHV0KGRtYWJ1
Zi0+ZmlsZSk7DQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfcHV0LCAiRE1BX0JV
RiIpOw0KIA0KLS0gDQoyLjUzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
