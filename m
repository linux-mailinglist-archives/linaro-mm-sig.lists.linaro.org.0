Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEy/HDQA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2145A410C6E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8D3540964
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:28:50 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id D9DCA3F712
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 08:08:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b="Gtm/zalU";
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4dFwLR4T3hz9vBB;
	Tue, 25 Nov 2025 09:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764058111; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PT4VsBoAmpd79SJA1++Lws41TWqxGgc2ZDbNW+wa7kU=;
	b=Gtm/zalURKsKr3l9tXYogDU6cV9p1ZEA6QSqaGXSRu5CcFTu88G8lnSQVvFnMG42B/+Puh
	+G6szJhNCCPJKLt1meTqCaWAKzeGcltOD7rhgLNDVmBj60Rssfr7rjT31sUtuLs326aD/C
	oG6sVAb8HXp/I+QJCGf/XYu1mUoFErAtwMaS5VAArAqqstEAVq8L8p6IRfJd97RXOZEI4J
	PiOhTFAKbweiMdrDeI8bftmviizU+dViZU7GeGOu95KRSb/LheAAJJ/pCLTKTDAF1oCSw3
	2kwB8xVYpBP3mD66+gR8UURi/1LChbp55R1pPR0ZAr6isxGhGrj0lDOxsqASmg==
Message-ID: <14e674a02c9028ea20b448c68cd24a987ee239cd.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Tue, 25 Nov 2025 09:08:26 +0100
In-Reply-To: <20251120150018.27385-5-christian.koenig@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-5-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: 79oht67zzwi3uywgm3p76ggjj89ze7fa
X-MBO-RS-ID: 7aa57234933f9e1d21f
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6EE5RPQ6HA2XMNR4Y5TN6WCZMBQDBMS2
X-Message-ID-Hash: 6EE5RPQ6HA2XMNR4Y5TN6WCZMBQDBMS2
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:54 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, dakr@kernel.org, Lyude Paul <lyude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 4/4] drm/sched: warn and taint the kernel when maximum timeout is exceeded.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6EE5RPQ6HA2XMNR4Y5TN6WCZMBQDBMS2/>
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
	DATE_IN_PAST(1.00)[3415];
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
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,ffwll.ch,gfxstrand.net,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.938];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mailbox.org:mid]
X-Rspamd-Queue-Id: 2145A410C6E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

K0NjIEx5dWRlLCBEYW5pbG8NCg0KT24gVGh1LCAyMDI1LTExLTIwIGF0IDE1OjQxICswMTAwLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBFeGNlZWRpbmcgdGhlIHJlY29tbWVuZGVkIG1heGlt
dW0gdGltZW91dCBzaG91bGQgYmUgbm90ZWQgaW4gbG9ncyBhbmQNCj4gY3Jhc2ggZHVtcHMuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5j
IHwgMTIgKysrKysrKysrKystDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5j
DQo+IGluZGV4IDFkNGYxYjgyMmU3Yi4uODhlMjRlMTQwZGVmIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiBAQCAtMTMxOCwxMiArMTMxOCwyMiBAQCBpbnQg
ZHJtX3NjaGVkX2luaXQoc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyICpzY2hlZCwgY29uc3Qgc3Ry
dWN0IGRybV9zY2hlZF9pbml0Xw0KPiDCoAlzY2hlZC0+b3BzID0gYXJncy0+b3BzOw0KPiDCoAlz
Y2hlZC0+Y3JlZGl0X2xpbWl0ID0gYXJncy0+Y3JlZGl0X2xpbWl0Ow0KPiDCoAlzY2hlZC0+bmFt
ZSA9IGFyZ3MtPm5hbWU7DQo+IC0Jc2NoZWQtPnRpbWVvdXQgPSBhcmdzLT50aW1lb3V0Ow0KPiDC
oAlzY2hlZC0+aGFuZ19saW1pdCA9IGFyZ3MtPmhhbmdfbGltaXQ7DQo+IMKgCXNjaGVkLT50aW1l
b3V0X3dxID0gYXJncy0+dGltZW91dF93cSA/IGFyZ3MtPnRpbWVvdXRfd3EgOiBzeXN0ZW1fcGVy
Y3B1X3dxOw0KPiDCoAlzY2hlZC0+c2NvcmUgPSBhcmdzLT5zY29yZSA/IGFyZ3MtPnNjb3JlIDog
JnNjaGVkLT5fc2NvcmU7DQo+IMKgCXNjaGVkLT5kZXYgPSBhcmdzLT5kZXY7DQo+IMKgDQo+ICsJ
c2NoZWQtPnRpbWVvdXQgPSBhcmdzLT50aW1lb3V0Ow0KPiArCWlmIChzY2hlZC0+dGltZW91dCA+
IERNQV9GRU5DRV9NQVhfUkVBU09OQUJMRV9USU1FT1VUKSB7DQo+ICsJCWRldl93YXJuKHNjaGVk
LT5kZXYsICJUaW1lb3V0ICVsZCBleGNlZWRzIHRoZSBtYXhpbXVtIHJlY29tbWVuZGVkIG9uZSFc
biIsDQo+ICsJCQkgc2NoZWQtPnRpbWVvdXQpOw0KPiArCQkvKg0KPiArCQkgKiBNYWtlIHN1cmUg
dGhhdCBleGNlZWRpbmcgdGhlIHJlY29tbWVuZGF0aW9uIGlzIG5vdGVkIGluDQo+ICsJCSAqIGxv
Z3MgYW5kIGNyYXNoIGR1bXBzLg0KPiArCQkgKi8NCj4gKwkJYWRkX3RhaW50KFRBSU5UX1NPRlRM
T0NLVVAsIExPQ0tERVBfU1RJTExfT0spOw0KPiArCX0NCj4gKw0KDQoNCkkgaGF2ZSB0byBOQUNL
IHRoaXMgaW4gdGhlIGN1cnJlbnQgZm9ybSwgaXQgd291bGQgY2F1c2UgYSBidW5jaCBvZg0KZHJp
dmVycyB0byBmaXJlIHdhcm5pbmdzLCBkZXNwaXRlIHRoZXJlIGJlaW5nIGFic29sdXRlbHkgbm90
aGluZyB3cm9uZw0Kd2l0aCB0aGVtIGluIHRoZSBwYXN0DQoNCmh0dHBzOi8vZWxpeGlyLmJvb3Rs
aW4uY29tL2xpbnV4L3Y2LjE4LXJjNi9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9zY2hlZC5jI0w0MTINCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE4
LXJjNi9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5jI0w1MTkNCg0KSSBn
dWVzcyB0aGVyZSBhcmUgbW9yZS4NCg0KTm91dmVhdSdzIGN1cnJlbnQgdGltZW91dCBpcyBhbiBh
c3RvbmlzaGluZyAxMCBzZWNvbmRzLCBhbmQgQUZBSUsgdGhlcmUNCmhhcyBuZXZlciBiZWVuIGEg
cHJvYmxlbSB3aXRoIHRoYXQuIElmIHlvdSB3YW50IHRvIGRlY2xhcmUgdGhpcw0KYmVoYXZpb3Ig
aW52YWxpZCwgeW91IG5lZWQgdG8gZGlzY3VzcyB0aGF0IHdpdGggdGhlIE5vdXZlYXUgbWFpbnRh
aW5lcnMNCmZpcnN0Lg0KDQpJdCBhbHNvIGRpZG4ndCBiZWNvbWUgY2xlYXIgdG8gbWUgd2h5IGRt
YV9mZW5jZSBpcyB0byBkZWZpbmUgYSB0aW1lb3V0DQpydWxlPyBJIGxpa2UgdG8gdGhpbmsgdGhh
dCAibXVzdCBiZSBzaWduYWxsZWQgd2l0aGluIHJlYXNvbmFibGUgdGltZSINCmlzIGFzIHByZWNp
c2UgYXMgaXQgZ2V0cy4gQXMgZGVtb25zdHJhdGVkIGJ5IHRoZSBkcml2ZXJzLCB0aGVyZSBpcyBq
dXN0DQpubyBvYmplY3RpdmVseSBjb3JyZWN0IGRlZmluaXRvbiBvZiAicmVhc29uYWJsZSIuDQoN
CkJUVyB5b3VyIHNlcmllcyBkb2Vzbid0IG1ha2UgY2xlYXIgdG8gbWUgd2h5IHlvdSBvbmx5IHRv
dWNoIHZlcnkgZmV3DQpjb21wb25lbnRzOiB0aGVyZSBhcmUgbWFueSBtb3JlIHVzZXJzIG9mIGRt
YV9mZW5jZSB0aGFuIGp1c3QgdmdlbSBhbmQNCnNjaGVkLiBXaGF0IGFib3V0IHRoZSBvdGhlcnM/
DQoNCg0KUC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
