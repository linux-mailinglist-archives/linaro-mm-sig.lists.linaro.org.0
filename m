Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CtCGZUM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1466F411A0A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2220140536
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:21:40 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 6B24C3F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 09:29:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=OI4UcWWI;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dwzRQ2wc0z9tyf;
	Wed, 21 Jan 2026 10:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1768987762; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iS+g7J7TXdF74NFS7z5ZHif1+RDpnoW5FGKHH0HPRQ4=;
	b=OI4UcWWI+8M7By9lE1nzIc4YK1axr0Tm2FjcwuDHWRiKGUUmcf3oTctHFLjsB2LnghQrkk
	ohEL2SoFmhbaMKoGbDxUYesyKiHzGaaWVmDMeeT/rEH3H4U0McfdyYNlnDAAK8jNUMMBGT
	KMY2E8+OjhwNROnPDsp9KXJkMpfrWYqmfd913zdV5tIt0ZSA+M4bSFV4Fgy79XbmJyZORf
	+7q8JFl5xbTZn/cBfVGP2j6a746Imz/JE2g/HQwp4bUVZvf5WPFTQojzN0+c1v6Z4DoGlD
	jveE9PkZmPay7M1ZHHP0f10T5vsfJ1L6Xkd3LQw5pQqQ3WmYnTFKDSGVqq5vfg==
Message-ID: <697fb47b7c1bad47a413fb7c60778f78263be4df.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	tursulin@ursulin.net, matthew.brost@intel.com, sumit.semwal@linaro.org
Date: Wed, 21 Jan 2026 10:29:19 +0100
In-Reply-To: <20260120105655.7134-8-christian.koenig@amd.com>
References: <20260120105655.7134-1-christian.koenig@amd.com>
	 <20260120105655.7134-8-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: rjyqt789twtd3sistkis9w4d5bi78uw1
X-MBO-RS-ID: 1330665f9501d9ce720
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WPDY3CQFN6APPF5XDC63L424XOD4OL2G
X-Message-ID-Hash: WPDY3CQFN6APPF5XDC63L424XOD4OL2G
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:15 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 7/9] dma-buf: use inline lock for the stub fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WPDY3CQFN6APPF5XDC63L424XOD4OL2G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[2046];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ursulin.net,intel.com,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,linaro.org:email,amd.com:email,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	NEURAL_HAM(-0.00)[-0.876];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org]
X-Rspamd-Queue-Id: 1466F411A0A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAxLTIwIGF0IDExOjU0ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBVc2luZyB0aGUgaW5saW5lIGxvY2sgaXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9y
IGRtYV9mZW5jZQ0KPiBpbXBsZW1lbnRhdGlvbnMuDQo+IA0KPiBTbyB1c2UgdGhpcyBhcHByb2Fj
aCBmb3IgdGhlIGZyYW1ld29yaydzIGludGVybmFsIGZlbmNlcyBhcyB3ZWxsLg0KPiANCj4gQWxz
byBzYXZlcyBhYm91dCA0IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQo+IA0KPiB2
MjogZHJvcCB1bm5lY2Vzc2FyeSBjaGFuZ2VzDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IFBo
aWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jIHwgMTIgKystLS0tLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+
IGluZGV4IDM2ZmYwZTUwOThlZS4uMDNhMDlhY2RlYWVjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
DQo+IEBAIC0yNCw3ICsyNCw2IEBAIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2Vf
ZW1pdCk7DQo+IMKgRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9lbmFibGVfc2ln
bmFsKTsNCj4gwqBFWFBPUlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX3NpZ25hbGVkKTsN
Cj4gwqANCj4gLXN0YXRpYyBERUZJTkVfU1BJTkxPQ0soZG1hX2ZlbmNlX3N0dWJfbG9jayk7DQo+
IMKgc3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgZG1hX2ZlbmNlX3N0dWI7DQo+IMKgDQo+IMKgLyoN
Cj4gQEAgLTEyMywxMiArMTIyLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3Bz
IGRtYV9mZW5jZV9zdHViX29wcyA9IHsNCj4gwqANCj4gwqBzdGF0aWMgaW50IF9faW5pdCBkbWFf
ZmVuY2VfaW5pdF9zdHViKHZvaWQpDQo+IMKgew0KPiAtCWRtYV9mZW5jZV9pbml0KCZkbWFfZmVu
Y2Vfc3R1YiwgJmRtYV9mZW5jZV9zdHViX29wcywNCj4gLQkJwqDCoMKgwqDCoMKgICZkbWFfZmVu
Y2Vfc3R1Yl9sb2NrLCAwLCAwKTsNCj4gLQ0KPiArCWRtYV9mZW5jZV9pbml0KCZkbWFfZmVuY2Vf
c3R1YiwgJmRtYV9mZW5jZV9zdHViX29wcywgTlVMTCwgMCwgMCk7DQo+IMKgCXNldF9iaXQoRE1B
X0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsDQo+IMKgCQkmZG1hX2ZlbmNlX3N0dWIuZmxh
Z3MpOw0KPiAtDQo+IMKgCWRtYV9mZW5jZV9zaWduYWwoJmRtYV9mZW5jZV9zdHViKTsNCj4gwqAJ
cmV0dXJuIDA7DQo+IMKgfQ0KPiBAQCAtMTYwLDExICsxNTYsNyBAQCBzdHJ1Y3QgZG1hX2ZlbmNl
ICpkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKGt0aW1lX3QgdGltZXN0YW1wKQ0KPiDC
oAlpZiAoZmVuY2UgPT0gTlVMTCkNCj4gwqAJCXJldHVybiBOVUxMOw0KPiDCoA0KPiAtCWRtYV9m
ZW5jZV9pbml0KGZlbmNlLA0KPiAtCQnCoMKgwqDCoMKgwqAgJmRtYV9mZW5jZV9zdHViX29wcywN
Cj4gLQkJwqDCoMKgwqDCoMKgICZkbWFfZmVuY2Vfc3R1Yl9sb2NrLA0KPiAtCQnCoMKgwqDCoMKg
wqAgMCwgMCk7DQo+IC0NCj4gKwlkbWFfZmVuY2VfaW5pdChmZW5jZSwgJmRtYV9mZW5jZV9zdHVi
X29wcywgTlVMTCwgMCwgMCk7DQo+IMKgCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJ
R05BTF9CSVQsDQo+IMKgCQkmZmVuY2UtPmZsYWdzKTsNCj4gwqANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
