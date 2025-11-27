Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2F0WGEUB4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C728D410E64
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9019443EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:23 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 380293F70A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 11:17:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=DQJVIS7e;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dHDRS2fwjz9t8m;
	Thu, 27 Nov 2025 12:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764242244; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kdLhtFqYrGAAE3G7PcwuS9PaciP06RnxEbDvvNTDD/Y=;
	b=DQJVIS7ewZzM9YvbsjEUaBWPNvLb1ZMsuRtiTTLb/pTG6W3zasbrbLy4xc2cfgWoRW3Pd4
	t1+ui2QrBJLaS+EPrJeJQfcQPuQkzTZSOPIoUqeeD7sEvd6nUKpKoZr32z5GV0Fqd0Aa0y
	Bp4QUNfx5a4AJ7V/TZXB5g+TaQbrUeC3OgsEGJDIHS5hmQHFweg0D1d1E9afDy5Dm2Pz0K
	OK49kcpVMpz7ASaQM34+HNh+kVWaUbO9uLO4Sfac4GKS1/jaIl2/DCn38pcm5QU9pjwuXn
	aED50hAvcuU8ZFdGmzN//DNn0ZmGigIji6Oq1CX6cjFHFvcJ5mw2/W5tYiXBSA==
Message-ID: <ce96cf250dfca4aea9ddfc00e45fc1b47caceedc.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 27 Nov 2025 12:17:19 +0100
In-Reply-To: <20251113145332.16805-19-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-19-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: bfbff4823f15586f625
X-MBO-RS-META: u74iaqnp9jeowrxeu5hz8h5ni6i6syeu
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4TXOJ3VC4VXEPJMJILLEWV26CG2BB6AD
X-Message-ID-Hash: 4TXOJ3VC4VXEPJMJILLEWV26CG2BB6AD
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:17 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 18/18] drm/xe: Finish disconnect HW fences from module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4TXOJ3VC4VXEPJMJILLEWV26CG2BB6AD/>
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
	NEURAL_HAM(-0.00)[-0.910];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linaro.org:email]
X-Rspamd-Queue-Id: C728D410E64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBGcm9tOiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4NCj4gDQo+
IEJlIHNhZmUgd2hlbiBkZXJlZmVyZW5jaW5nIGZlbmNlLT54ZS4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0veGUveGVfaHdfZmVuY2UuYyB8IDEzICsrKysrKystLS0tLS0NCj4gwqAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL3hlL3hlX2h3X2ZlbmNlLmMNCj4gaW5kZXggZjVmYWQ0NDI2NzI5Li44MTgxZGZjNjI4ZTQg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jDQo+IEBAIC0xNTksOSArMTU5LDcgQEAg
c3RhdGljIHN0cnVjdCB4ZV9od19mZW5jZV9pcnEgKnhlX2h3X2ZlbmNlX2lycShzdHJ1Y3QgeGVf
aHdfZmVuY2UgKmZlbmNlKQ0KPiDCoA0KPiDCoHN0YXRpYyBjb25zdCBjaGFyICp4ZV9od19mZW5j
ZV9nZXRfZHJpdmVyX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlKQ0KPiDCoHsNCj4g
LQlzdHJ1Y3QgeGVfaHdfZmVuY2UgKmZlbmNlID0gdG9feGVfaHdfZmVuY2UoZG1hX2ZlbmNlKTsN
Cj4gLQ0KPiAtCXJldHVybiBkZXZfbmFtZShmZW5jZS0+eGUtPmRybS5kZXYpOw0KPiArCXJldHVy
biAieGUiOw0KPiDCoH0NCg0KTWF5IEkgYXNrIHdoYXQgdGhvc2UgbmFtZSBjYWxsYmFja3MgYXJl
IHVzZWQgZm9yIGluIFhlPw0KSSBoYWQgc28gZmFyIG9ubHkgc2VlbiB0aG9zZSBkbWFfZmVuY2Ug
Y2FsbGJhY2tzIGJlaW5nIHVzZWQgaW4gaTkxNS4NCg0KSSdtIGFza2luZyBiZWNhdXNlIGluIFJ1
c3QgRG1hRmVuY2UgSSBkaXNjb3ZlcmVkIHRoYXQgaGF2aW5nIHRob3NlDQpjYWxsYmFja3MgaW4g
dGhlIGZpcnN0IHBsYWNlIGNyZWF0ZXMgdGhlIGxpZmUgdGltZSBwcm9ibGVtcyBDaHJpc3RpYW4N
CmFkZHJlc3NlcyBpbiB0aGlzIHNlcmllcy4NCg0KSSB0aGluayB3ZSBoYWQgYmVndW4gYnJhaW5z
dG9ybWluZyB3aGV0aGVyIHJlbW92aW5nIGdldF9kcml2ZXJfbmFtZSgpDQphbmQgZ2V0X3RpbWVs
aW5lX25hbWUoKSBpbiBkbWFfZmVuY2UncyBiYWNrZW5kX29wcyB3b3VsZCBiZSB0aGUgY2xlYW5l
cg0KdGhpbmcgdG8gZG8sIGNvbXBhcmVkIHRvIHRoZSBSQ1UgZ3VhcmRzLg0KDQoNClAuDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
