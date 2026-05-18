Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMA1AmbdCmpV8wQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:35:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D9C569D3B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:35:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F523406B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:35:32 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 88AED40475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:35:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b="lcssmPM/";
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779096920;
	bh=oDlIKsmjIzcjVIcTrJ/yYYgluBpXPLUOjcadrFJxADQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=lcssmPM/5L8HhycTKzgHC8rkX9MHCs18A4XmTep9/XIOg98BFdjczvXpa4h9RjSkl
	 wGYfsvSeNm7CCSbJ5PyPAlC313kWX87ESBpU1Bkuq67ezhxbUYwzJyz9BqMcUuGImB
	 tuuWU1hrGElbNoyclhwqNWyQDQyYoSkDpGgo6ssifkzODeSGjh27dOzN9snUsc0hBT
	 BwB5+oheoesjdKjjBw3KCSPgSzMbZif8bJNlvgyxeHZLLP7rpwcLwjJw6nvenLeFl1
	 Ib1LNhZutAw2M5l/RPGNrzPCLV9Nh7K+u0RjAfZwZVdBZGAsZxRP7JJLMtLqV5ZebS
	 6IqC8KtYDHxRA==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EB35E17E0443;
	Mon, 18 May 2026 11:35:19 +0200 (CEST)
Date: Mon, 18 May 2026 11:35:15 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linux-kernel@vger.kernel.org
Message-ID: <20260518113515.794442f3@fedora>
In-Reply-To: <a872ef35-6d5b-41fd-9242-bb44902fb237@amd.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-3-f2d8c15a97ce@collabora.com>
	<CAPaKu7TULU6_-8eoygq0svBTbnX-vFvF3sH5hDzyi9kDP-9enQ@mail.gmail.com>
	<20260518102813.50555650@fedora>
	<a872ef35-6d5b-41fd-9242-bb44902fb237@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: IU6XZYTI7XZQIRUYVHI5CUMCAQZMI6WA
X-Message-ID-Hash: IU6XZYTI7XZQIRUYVHI5CUMCAQZMI6WA
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Chia-I Wu <olvaffe@gmail.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/6] drm: Define a conditional guard for drm_dev_{enter,exit}()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IU6XZYTI7XZQIRUYVHI5CUMCAQZMI6WA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 97D9C569D3B
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
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.968];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email]
X-Rspamd-Action: no action

T24gTW9uLCAxOCBNYXkgMjAyNiAxMToxNjo1NSArMDIwMA0KQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCg0KPiBPbiA1LzE4LzI2IDEwOjI4LCBCb3Jp
cyBCcmV6aWxsb24gd3JvdGU6DQo+ID4gT24gVGh1LCAxNCBNYXkgMjAyNiAxMTozNDo1MiAtMDcw
MA0KPiA+IENoaWEtSSBXdSA8b2x2YWZmZUBnbWFpbC5jb20+IHdyb3RlOg0KPiA+ICAgDQo+ID4+
IE9uIFdlZCwgTWF5IDEzLCAyMDI2IGF0IDEwOjI04oCvQU0gQm9yaXMgQnJlemlsbG9uDQo+ID4+
IDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGU6ICANCj4gPj4+DQo+ID4+PiBE
ZWZpbmUgYSBjb25kaXRpb25hbCBkcm1fZGV2X2FjY2VzcyBndWFyZCB0byBhdXRvbWF0ZSB0aGUN
Cj4gPj4+IGRybV9kZXZfe2VudGVyLGV4aXR9KCkgc2VxdWVuY2UuDQo+ID4+Pg0KPiA+Pj4gU2ln
bmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNv
bT4NCj4gPj4+IC0tLQ0KPiA+Pj4gIGluY2x1ZGUvZHJtL2RybV9kcnYuaCB8IDkgKysrKysrKysr
DQo+ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPiA+Pj4NCj4gPj4+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHJ2LmggYi9pbmNsdWRlL2RybS9kcm1fZHJ2LmgN
Cj4gPj4+IGluZGV4IDQyZmMwODVmOTg2ZC4uNzlkMTk1OGY5M2U0IDEwMDY0NA0KPiA+Pj4gLS0t
IGEvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQo+ID4+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fZHJ2
LmgNCj4gPj4+IEBAIC00OTAsNiArNDkwLDE1IEBAIHZvaWQgZHJtX2Rldl91bnBsdWcoc3RydWN0
IGRybV9kZXZpY2UgKmRldik7DQo+ID4+PiAgaW50IGRybV9kZXZfd2VkZ2VkX2V2ZW50KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGxvbmcgbWV0aG9kLA0KPiA+Pj4gICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fd2VkZ2VfdGFza19pbmZvICppbmZvKTsNCj4gPj4+
DQo+ID4+PiArLyoNCj4gPj4+ICsgKiBPbmx5IHRoZSBjb25kaXRpb25hbCBkcm1fZGV2X2FjY2Vz
cyBndWFyZCBpcyB2YWxpZC4gVGhlIGRybV9kZXYgb25lIGlzDQo+ID4+PiArICogaGVyZSBzbyB3
ZSBjYW4gZXh0ZW5kIGl0IHdpdGggYSBjb25kaXRpb25hbCB2YXJpYW50Lg0KPiA+Pj4gKyAqLw0K
PiA+Pj4gK0RFRklORV9MT0NLX0dVQVJEXzEoZHJtX2Rldiwgc3RydWN0IGRybV9kZXZpY2UsDQo+
ID4+PiArICAgICAgICAgICAgICAgICAgIHsgV0FSTl9PTigiVXNlIGNvbmQgZ3VhcmRzIik7IF9U
LT5pZHggPSAtMTsgfSwNCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgZHJtX2Rldl9leGl0KF9U
LT5pZHgpLCBpbnQgaWR4KTsgICAgDQo+ID4+IElmIHRoaXMgaXMgZXZlciBtaXMtdXNlZCwgZHJt
X2Rldl9leGl0KC0xKSBzZWVtcyB0byBjYXVzZSBPT0IgYWNjZXNzLg0KPiA+PiBJcyBCVUcgbW9y
ZSBhcHByb3ByaWF0ZSB0aGFuIFdBUk5fT04/ICANCj4gPiANCj4gPiBJIGFjdHVhbGx5IGhhZA0K
PiA+IA0KPiA+IAkJCWlmIChfVC0+aWR4ID49IDApIGRybV9kZXZfZXhpdChfVC0+aWR4KSwNCj4g
PiANCj4gPiBhdCBzb21lIHBvaW50LCBhbmQgSSBkaXRjaGVkIGl0IHRoaW5raW5nIHRoZSBXQVJO
X09OX09OQ0UoKQ0KPiA+IGluIHNyY3VfcmVhZF91bmxvY2soKSB3b3VsZCBjb3ZlciBmb3IgdGhh
dC4gSSBjYW4gYWRkIGl0IGJhY2ssIG9mDQo+ID4gY291cnNlLg0KPiA+IA0KPiA+IEknZCBiZSBm
aW5lIHdpdGggYSBCVUdfT04oKSB0b28sIGJ1dCBldmVyeSB0aW1lIEkgdHJpZWQgdG8gYWRkIG9u
ZSBJJ3ZlDQo+ID4gYmVlbiBlbmNvdXJhZ2VkIHRvIGhhbmRsZSB0aGUgdW5leHBlY3RlZCBjYXNl
IGluc3RlYWQuDQo+ID4gDQo+ID4gSWRlYWxseSwgd2Ugd291bGQgaGF2ZSBhIERFRklORV9MT0NL
X0dVQVJEX0NPTkQoKSB2YXJpYW50IHRoYXQsIGluc3RlYWQNCj4gPiBvZiBleHBhbmRpbmcgYSBu
b24tY29uZGl0aW9uYWwgb25lLCB3b3VsZCBkZWZpbmUgdGhlIHdob2xlIHRoaW5nIHNvDQo+ID4g
dGhhdCB0aGUgbm9uLWNvbmRpdGlvbmFsIHZhcmlhbnQgaXMgbmV2ZXIgZXhwb3NlZC4gIA0KPiAN
Cj4gV291bGQgaXQgYmUgcG9zc2libGUgdG8gdXNlIEJVSUxEX0JVRygpIGhlcmU/DQoNCkFoLCBu
aWNlISBJIHdhcyBzZWFyY2hpbmcgZm9yIHRoaXMga2luZCBvZiBjb21waWxlLXRpbWUgYXNzZXJ0
IHRoYXQNCndvdWxkIHRyaWdnZXIgaWYgdGhlIGNvZGUgaXMgdXNlZCwgYW5kIEJVSUxEX0JVRygp
IGluZGVlZCBkb2VzIHdoYXQgd2UNCndhbnQuIFRoYW5rcyBmb3IgdGhlIHRpcC4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
