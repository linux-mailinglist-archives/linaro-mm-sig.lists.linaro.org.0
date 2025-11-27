Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPKNJyYB4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B72410E23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 661EE44362
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:32:53 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id BF8203F847
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 10:50:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=DQ6kBOsJ;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4dHCr556Cfz9vNH;
	Thu, 27 Nov 2025 11:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764240613; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qM+78PD5ekMZeH4ikhncpDCQPAp+WRknC7tChSXz9fg=;
	b=DQ6kBOsJulob0CVuVj+yCd+NTrZTMIHY51ditA6zR2FsJXFRQ2NkoloiQNSx0A9wI4ai+e
	UUmj6mKbRRs4tT39U+PE2aeofzHjN5SqO3dTyZLFw7vvbZYUfSgCSl1By5sFZqrQxpC8d/
	7x6neostWGwcX6UxpcovVhcD/A9jnr21IAh8Mn2Vs0VoBAS56fj+3GsTyWiCd/54BMI+b8
	1upVqWBnSueSAvtayytVWY6vBk0gBFXsotO7uQAX6sBYdVU/Xh4PzV2k+k3mFaVJ3G/OOa
	8qi+qKNAdE4+wqZPrk1OztyrznjJJDcO+BbTskz36sQlz1Ey+e5DXVGq/k15tw==
Message-ID: <f5d3be540586a471a008a730b56da26f0966f159.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 27 Nov 2025 11:50:02 +0100
In-Reply-To: <20251113145332.16805-6-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-6-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: hxdahhgw5jrxrd879i3ey6x3nb3qfwef
X-MBO-RS-ID: 13c171c04d28eccd72f
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VE5AXLGCDLSRLT6RRC3CRKSD45IM5WNQ
X-Message-ID-Hash: VE5AXLGCDLSRLT6RRC3CRKSD45IM5WNQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:14 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 05/18] dma-buf: use inline lock for the stub fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VE5AXLGCDLSRLT6RRC3CRKSD45IM5WNQ/>
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
	DATE_IN_PAST(1.00)[3364];
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.904];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: 52B72410E23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBVc2luZyB0aGUgaW5saW5lIGxvY2sgaXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9y
IGRtYV9mZW5jZSBpbXBsZW1lbnRhdGlvbnMuDQo+IA0KPiBTbyB1c2UgdGhpcyBhcHByb2FjaCBm
b3IgdGhlIGZyYW1ld29yayBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCg0Kbml0Og0Kcy9mcmFt
ZXdvcmsvZnJhbWV3b3JrJ3MNCg0KPiANCj4gQWxzbyBzYXZlcyBhYm91dCA0IGJ5dGVzIGZvciB0
aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNCk9uIGFsbCBwbGF0Zm9ybXMgb3IganVzdCBBTUQ2ND8N
Cg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGlnYWxpYS5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIw
ICsrKystLS0tLS0tLS0tLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMTYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IGluZGV4IDlhNWFhOWU0
NGUxMy4uZTZkMjZjMmUwMzkxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IEBAIC0yNCw3ICsy
NCw2IEBAIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2VfZW1pdCk7DQo+IMKgRVhQ
T1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9lbmFibGVfc2lnbmFsKTsNCj4gwqBFWFBP
UlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX3NpZ25hbGVkKTsNCj4gwqANCj4gLXN0YXRp
YyBERUZJTkVfU1BJTkxPQ0soZG1hX2ZlbmNlX3N0dWJfbG9jayk7DQo+IMKgc3RhdGljIHN0cnVj
dCBkbWFfZmVuY2UgZG1hX2ZlbmNlX3N0dWI7DQo+IMKgDQo+IMKgLyoNCj4gQEAgLTEyMywxMiAr
MTIyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9zdHVi
X29wcyA9IHsNCj4gwqANCj4gwqBzdGF0aWMgaW50IF9faW5pdCBkbWFfZmVuY2VfaW5pdF9zdHVi
KHZvaWQpDQo+IMKgew0KPiAtCWRtYV9mZW5jZV9pbml0KCZkbWFfZmVuY2Vfc3R1YiwgJmRtYV9m
ZW5jZV9zdHViX29wcywNCj4gLQkJwqDCoMKgwqDCoMKgICZkbWFfZmVuY2Vfc3R1Yl9sb2NrLCAw
LCAwKTsNCj4gLQ0KPiAtCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQs
DQo+IC0JCSZkbWFfZmVuY2Vfc3R1Yi5mbGFncyk7DQoNClRoYXQgY2hhbmdlIGlzIHVucmVsYXRl
ZCwgaXNuJ3QgaXQ/IEVubGFyZ2VzIHRoZSBkaWZmIGFuZCBicmVha3MgZ2l0LQ0KYmxhbWUuDQoN
Cj4gLQ0KPiArCWRtYV9mZW5jZV9pbml0KCZkbWFfZmVuY2Vfc3R1YiwgJmRtYV9mZW5jZV9zdHVi
X29wcywgTlVMTCwgMCwgMCk7DQo+ICsJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lH
TkFMX0JJVCwgJmRtYV9mZW5jZV9zdHViLmZsYWdzKTsNCj4gwqAJZG1hX2ZlbmNlX3NpZ25hbCgm
ZG1hX2ZlbmNlX3N0dWIpOw0KPiDCoAlyZXR1cm4gMDsNCj4gwqB9DQo+IEBAIC0xNjAsMTYgKzE1
NSw5IEBAIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIo
a3RpbWVfdCB0aW1lc3RhbXApDQo+IMKgCWlmIChmZW5jZSA9PSBOVUxMKQ0KPiDCoAkJcmV0dXJu
IE5VTEw7DQo+IMKgDQo+IC0JZG1hX2ZlbmNlX2luaXQoZmVuY2UsDQo+IC0JCcKgwqDCoMKgwqDC
oCAmZG1hX2ZlbmNlX3N0dWJfb3BzLA0KPiAtCQnCoMKgwqDCoMKgwqAgJmRtYV9mZW5jZV9zdHVi
X2xvY2ssDQo+IC0JCcKgwqDCoMKgwqDCoCAwLCAwKTsNCj4gLQ0KPiAtCXNldF9iaXQoRE1BX0ZF
TkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsDQo+IC0JCSZmZW5jZS0+ZmxhZ3MpOw0KDQpTYW1l
Lg0KDQo+IC0NCj4gKwlkbWFfZmVuY2VfaW5pdChmZW5jZSwgJmRtYV9mZW5jZV9zdHViX29wcywg
TlVMTCwgMCwgMCk7DQo+ICsJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJ
VCwgJmZlbmNlLT5mbGFncyk7DQo+IMKgCWRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wKGZlbmNl
LCB0aW1lc3RhbXApOw0KPiAtDQoNCkkgd291bGRuJ3QgcmVtb3ZlIHRoYXQgZW1wdHkgbGluZSAo
bml0KS4NCg0KPiDCoAlyZXR1cm4gZmVuY2U7DQo+IMKgfQ0KPiDCoEVYUE9SVF9TWU1CT0woZG1h
X2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1Yik7DQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
