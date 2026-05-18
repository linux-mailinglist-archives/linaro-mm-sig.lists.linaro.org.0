Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJs4L6/NCmq18QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:28:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A82568C08
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:28:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B660C40699
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 08:28:29 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id CB74840475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 08:28:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=oeSn3ga4;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779092897;
	bh=RNTN0WeIA9v1VLUEI3zBpSvdu6mZejOVXTXs7aIWWFg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=oeSn3ga4EJtfzucef4b1MZT11bwWm8YBoKn38FWkFMGN0j+jFBIcwxoP3j88YGfi7
	 ioVFXfWtFkG2rx/o9zpVDo7T//JaiP4LCywUY17A2HRaeRXsvx5TnLK3sG0YuTXwQU
	 0gK4Q+Fp0WJXgrayBmqYDjfg+gM2qt/ACrDncwI+4uwvmwC+4sjqaUzV92j9BjhYxk
	 I//EY1TmWEJCw3BfOR2Z0vvnT0AtecSJLdZjFia1v1zsSUOZKvTv5uMRRVcu5m9P9D
	 ArMhnGv1kB1UkITKo46JKC8b63MUE9OExqFQAOttSweWKd/e85GKcbtJCVQocu/sI6
	 7aEBjd3PXoa6Q==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1609D17E040C;
	Mon, 18 May 2026 10:28:17 +0200 (CEST)
Date: Mon, 18 May 2026 10:28:13 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Chia-I Wu <olvaffe@gmail.com>
Message-ID: <20260518102813.50555650@fedora>
In-Reply-To: <CAPaKu7TULU6_-8eoygq0svBTbnX-vFvF3sH5hDzyi9kDP-9enQ@mail.gmail.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-3-f2d8c15a97ce@collabora.com>
	<CAPaKu7TULU6_-8eoygq0svBTbnX-vFvF3sH5hDzyi9kDP-9enQ@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 4CAP6PVZOWP4XIUTHAXCYBB3GWZPAA5W
X-Message-ID-Hash: 4CAP6PVZOWP4XIUTHAXCYBB3GWZPAA5W
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/6] drm: Define a conditional guard for drm_dev_{enter,exit}()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4CAP6PVZOWP4XIUTHAXCYBB3GWZPAA5W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 44A82568C08
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.962];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gVGh1LCAxNCBNYXkgMjAyNiAxMTozNDo1MiAtMDcwMA0KQ2hpYS1JIFd1IDxvbHZhZmZlQGdt
YWlsLmNvbT4gd3JvdGU6DQoNCj4gT24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMTA6MjTigK9BTSBC
b3JpcyBCcmV6aWxsb24NCj4gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToN
Cj4gPg0KPiA+IERlZmluZSBhIGNvbmRpdGlvbmFsIGRybV9kZXZfYWNjZXNzIGd1YXJkIHRvIGF1
dG9tYXRlIHRoZQ0KPiA+IGRybV9kZXZfe2VudGVyLGV4aXR9KCkgc2VxdWVuY2UuDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJv
cmEuY29tPg0KPiA+IC0tLQ0KPiA+ICBpbmNsdWRlL2RybS9kcm1fZHJ2LmggfCA5ICsrKysrKysr
Kw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vZHJtX2Rydi5oIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQo+ID4g
aW5kZXggNDJmYzA4NWY5ODZkLi43OWQxOTU4ZjkzZTQgMTAwNjQ0DQo+ID4gLS0tIGEvaW5jbHVk
ZS9kcm0vZHJtX2Rydi5oDQo+ID4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQo+ID4gQEAg
LTQ5MCw2ICs0OTAsMTUgQEAgdm9pZCBkcm1fZGV2X3VucGx1ZyhzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2KTsNCj4gPiAgaW50IGRybV9kZXZfd2VkZ2VkX2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHVuc2lnbmVkIGxvbmcgbWV0aG9kLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgZHJtX3dlZGdlX3Rhc2tfaW5mbyAqaW5mbyk7DQo+ID4NCj4gPiArLyoNCj4gPiArICog
T25seSB0aGUgY29uZGl0aW9uYWwgZHJtX2Rldl9hY2Nlc3MgZ3VhcmQgaXMgdmFsaWQuIFRoZSBk
cm1fZGV2IG9uZSBpcw0KPiA+ICsgKiBoZXJlIHNvIHdlIGNhbiBleHRlbmQgaXQgd2l0aCBhIGNv
bmRpdGlvbmFsIHZhcmlhbnQuDQo+ID4gKyAqLw0KPiA+ICtERUZJTkVfTE9DS19HVUFSRF8xKGRy
bV9kZXYsIHN0cnVjdCBkcm1fZGV2aWNlLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgeyBXQVJO
X09OKCJVc2UgY29uZCBndWFyZHMiKTsgX1QtPmlkeCA9IC0xOyB9LA0KPiA+ICsgICAgICAgICAg
ICAgICAgICAgZHJtX2Rldl9leGl0KF9ULT5pZHgpLCBpbnQgaWR4KTsgIA0KPiBJZiB0aGlzIGlz
IGV2ZXIgbWlzLXVzZWQsIGRybV9kZXZfZXhpdCgtMSkgc2VlbXMgdG8gY2F1c2UgT09CIGFjY2Vz
cy4NCj4gSXMgQlVHIG1vcmUgYXBwcm9wcmlhdGUgdGhhbiBXQVJOX09OPw0KDQpJIGFjdHVhbGx5
IGhhZA0KDQoJCQlpZiAoX1QtPmlkeCA+PSAwKSBkcm1fZGV2X2V4aXQoX1QtPmlkeCksDQoNCmF0
IHNvbWUgcG9pbnQsIGFuZCBJIGRpdGNoZWQgaXQgdGhpbmtpbmcgdGhlIFdBUk5fT05fT05DRSgp
DQppbiBzcmN1X3JlYWRfdW5sb2NrKCkgd291bGQgY292ZXIgZm9yIHRoYXQuIEkgY2FuIGFkZCBp
dCBiYWNrLCBvZg0KY291cnNlLg0KDQpJJ2QgYmUgZmluZSB3aXRoIGEgQlVHX09OKCkgdG9vLCBi
dXQgZXZlcnkgdGltZSBJIHRyaWVkIHRvIGFkZCBvbmUgSSd2ZQ0KYmVlbiBlbmNvdXJhZ2VkIHRv
IGhhbmRsZSB0aGUgdW5leHBlY3RlZCBjYXNlIGluc3RlYWQuDQoNCklkZWFsbHksIHdlIHdvdWxk
IGhhdmUgYSBERUZJTkVfTE9DS19HVUFSRF9DT05EKCkgdmFyaWFudCB0aGF0LCBpbnN0ZWFkDQpv
ZiBleHBhbmRpbmcgYSBub24tY29uZGl0aW9uYWwgb25lLCB3b3VsZCBkZWZpbmUgdGhlIHdob2xl
IHRoaW5nIHNvDQp0aGF0IHRoZSBub24tY29uZGl0aW9uYWwgdmFyaWFudCBpcyBuZXZlciBleHBv
c2VkLg0KDQo+IA0KPiA+ICtERUZJTkVfTE9DS19HVUFSRF8xX0NPTkQoZHJtX2RldiwgX2FjY2Vz
cywgZHJtX2Rldl9lbnRlcihfVC0+bG9jaywgJl9ULT5pZHgpKTsNCj4gPiArDQo+ID4gIC8qKg0K
PiA+ICAgKiBkcm1fZGV2X2lzX3VucGx1Z2dlZCAtIGlzIGEgRFJNIGRldmljZSB1bnBsdWdnZWQN
Cj4gPiAgICogQGRldjogRFJNIGRldmljZQ0KPiA+DQo+ID4gLS0NCj4gPiAyLjU0LjANCj4gPiAg
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
