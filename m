Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EapHeNk5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E69431B7B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FD2B40501
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:46 +0000 (UTC)
Received: from 13.mo581.mail-out.ovh.net (13.mo581.mail-out.ovh.net [87.98.150.175])
	by lists.linaro.org (Postfix) with ESMTPS id 8ABB73F768
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2026 12:40:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=kernel.org (policy=quarantine);
	spf=pass (lists.linaro.org: domain of andi@etezian.org designates 87.98.150.175 as permitted sender) smtp.mailfrom=andi@etezian.org
Received: from director5.ghost.mail-out.ovh.net (unknown [10.110.58.129])
	by mo581.mail-out.ovh.net (Postfix) with ESMTP id 4frN2s4JqSz5x0H
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2026 12:40:53 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-mb8kg (unknown [10.110.113.134])
	by director5.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 923D91001F4;
	Wed,  8 Apr 2026 12:40:51 +0000 (UTC)
Received: from etezian.org ([37.59.142.111])
	by ghost-submission-7d8d68f679-mb8kg with ESMTPSA
	id xi9IBtNM1mmC/xcAWGcN2g
	(envelope-from <andi@etezian.org>); Wed, 08 Apr 2026 12:40:51 +0000
X-OVh-ClientIp: 178.82.31.9
From: Andi Shyti <andi.shyti@kernel.org>
To: christian.koenig@amd.com
Date: Wed,  8 Apr 2026 14:39:16 +0200
Message-ID: <20260408123916.2604101-2-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260408123916.2604101-1-andi.shyti@kernel.org>
References: <68595b2ceed038074f5fe0a5739d75aafbcac8d3.camel@intel.com>
 <20260408123916.2604101-1-andi.shyti@kernel.org>
MIME-Version: 1.0
x-ovh-tracer-id: 5536331319964046554
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTFz5CK8pll4+m5rzR24T746LhjYj0+P7SPwAVsk3wZFnbp+RFDWAosALJb5nVkuVD1j5uaxE3Q2sgEtavEjgrNJlsQ6p+mnK8Qlhi0kzcJwEgnoUBVKWrsVVpQ7R/Y+9BwkJcgqgm25Q2u/F9PiAsMNwOCgi8TL/5WLXNpdsfoLSd1BWZKbZ9S7GFLaJeqB5t12xoDsqbrrHVeB2JRmOd716PcPxqa6FrDi+Nr4Lropz4Ey1GayttEWMbI7tmWXMHtER0h++jPXdEVXopxjePU8Ff0ssrpUzGvE6lfQumSM7er0ehIPkgcyj0Nzujs8ITbFvT+IaQ4L8GPlRPmrjDZBI6IEdt8mf2068pobldpZePI6Cu7I502fjV2OBdoaUWTH0lv2I+rSxqfnpPtFOq9b72FAnNg+esPb1cEkYyB2g2TSIQn+aLaQOEBqSQdXFC51D0b8iv4m2AvU5pdqco6DAaatHLS4N3Au17qM5b9pMsqBkusHJMTkJPMTKWfdOBNXtw5JvG3JlWJ7B84M8HeujUK5srVbr6OYPsT97xcrp7CoFY/y6LdQ9A3u6J5IhFfqQnKKfbFUkgmg1G/ziSjU+a3hTeKQQ17hxhKasZ8of5w2HUYV4X2EoVdkqoAvAoJwaxGMdpshpC2zAz1lCyX/DB7cf5ZmxNOJb/+/mrOfRA
X-Spamd-Bar: /
X-MailFrom: andi@etezian.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N6D7HEB7EWAFGATZ7HEKT6LBLDO3RAC6
X-Message-ID-Hash: N6D7HEB7EWAFGATZ7HEKT6LBLDO3RAC6
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:57 +0000
CC: janusz.krzysztofik@intel.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, sumit.semwal@linaro.org, Xiang Gao <gaoxiang17@xiaomi.com>, Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>, Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix UAF in dma_buf_put() tracepoint
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N6D7HEB7EWAFGATZ7HEKT6LBLDO3RAC6/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email,xiaomi.com:email]
X-Rspamd-Queue-Id: 58E69431B7B
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
