Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBifNav44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B5940FF9E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 95AEE4098D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:56:42 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 7EAEA3F738
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 15:30:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=IwxMFQXU;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4d1C8H2BNPz9v76;
	Tue,  4 Nov 2025 16:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1762270239; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jXw6kCFBo5eidUV/wPgMY2T8iMEfPQj0hALJrToc0oY=;
	b=IwxMFQXUcI3TdafSuVoVPXSCtxouMMSjDnqn11sgXym8XEDiCOrOK2HYxs3xK6TIFEliG1
	+McIE9KGm4i0lmPhaP+r5zGI5rFZR8pF36F+rQBxmuleWOq6m38Io9WpUsxAsjaTOtq7Zo
	/iZw2c4a/qDmf6Oobue+Tt3Izlq84WpXqHLCN7FE9JFuM1tqEZowZ6f9kuBrkQ5GZ4bdK5
	FLJMW+hhEXRpCYU8cARrrGyWKOYX7oq4IJMJVNwBKfnGJBEGlQ9936FYheUYxlgCJFxEO9
	KMDqjzSnYCSepWseYXsC+GyJ3jCLyKuHlIrRXA+n3B4OPvmoKI4JrpJVw18kog==
Message-ID: <85e573fa81913b4afe274f27142f526062f184f4.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>, phasta@kernel.org,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Matthew
 Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>
Date: Tue, 04 Nov 2025 16:30:24 +0100
In-Reply-To: <c1da66b4-3b71-4d83-8e8e-56151030b691@damsy.net>
References: <20251104095358.15092-1-pierre-eric.pelloux-prayer@amd.com>
	 <628cdf3a0c5b783c09fe2a40aca4a4a48c614e66.camel@mailbox.org>
	 <c1da66b4-3b71-4d83-8e8e-56151030b691@damsy.net>
MIME-Version: 1.0
X-MBO-RS-META: b7zmj93dted6cq4japbk7tzm6j7j7tmc
X-MBO-RS-ID: ce66c1907a5c42a4b78
X-Spamd-Bar: --
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6OXLJKNYB44GXOGZFYMG6EPH3Y2CHHIC
X-Message-ID-Hash: 6OXLJKNYB44GXOGZFYMG6EPH3Y2CHHIC
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:50 +0000
CC: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6OXLJKNYB44GXOGZFYMG6EPH3Y2CHHIC/>
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
	DATE_IN_PAST(1.00)[3911];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[damsy.net,kernel.org,amd.com,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.797];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,amd.com:email,linaro.org:email,mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 86B5940FF9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI1LTExLTA0IGF0IDE2OjI0ICswMTAwLCBQaWVycmUtRXJpYyBQZWxsb3V4LVBy
YXllciB3cm90ZToNCj4gDQo+IA0KPiBMZSAwNC8xMS8yMDI1IMOgIDEzOjQzLCBQaGlsaXBwIFN0
YW5uZXIgYSDDqWNyaXTCoDoNCj4gDQo+ID4gDQo+ID4gU29tZSB0aGluZ3MgSSBoYXZlIHVuZm9y
dHVuYXRlbHkgb3Zlcmxvb2tlZCBiZWxvdy4NCj4gPiANCj4gPiA+IA0KPiA+ID4gRml4ZXM6IDJm
ZGI4YThmMDdjMiAoImRybS9zY2hlZHVsZXI6IHJld29yayBlbnRpdHkgZmx1c2gsIGtpbGwgYW5k
IGZpbmkiKQ0KPiA+IA0KPiA+IFdlIHNob3VsZCArQ2Mgc3RhYmxlLiBJdCdzIGEgZGVhZGxvY2sg
YWZ0ZXIgYWxsLg0KPiANCj4gT0suDQo+IA0KPiA+IA0KPiA+ID4gTGluazogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL2lzc3Vlcy8xMzkwOA0KPiA+ID4gUmVwb3J0
ZWQtYnk6IE1pa2hhaWwgR2F2cmlsb3YgPG1pa2hhaWwudi5nYXZyaWxvdkBnbWFpbC5jb20+DQo+
ID4gPiBTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4gPiA+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJpYyBQZWxsb3V4LVBy
YXllciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NCj4gPiA+IC0tLQ0KPiA+
ID4gwqDCoGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCAzNCArKysr
KysrKysrKysrLS0tLS0tLS0tLS0NCj4gPiA+IMKgwqAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0
aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVycy9ncHUvZHJtL3Nj
aGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPiA+ID4gaW5kZXggYzhlOTQ5ZjRhNTY4Li5mZTE3NGE0
ODU3YmUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X2VudGl0eS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2Vu
dGl0eS5jDQo+ID4gPiBAQCAtMTczLDI2ICsxNzMsMTUgQEAgaW50IGRybV9zY2hlZF9lbnRpdHlf
ZXJyb3Ioc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSkNCj4gPiA+IMKgwqB9DQo+ID4g
PiDCoMKgRVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfZW50aXR5X2Vycm9yKTsNCj4gPiA+IMKgIA0K
PiA+ID4gK3N0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBk
bWFfZmVuY2UgKmYsDQo+ID4gPiArCQkJCQnCoCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiICpjYik7DQo+
ID4gDQo+ID4gSXQncyBmYXIgYmV0dGVyIHRvIG1vdmUgdGhlIGZ1bmN0aW9uIHVwIGluc3RlYWQu
IENhbiB5b3UgZG8gdGhhdD8NCj4gDQo+IFNpbmNlIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2Jz
X2NiIHVzZXMgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnMgYW5kIHZpY2UgDQo+IHZlcnNhLCBJ
J2xsIGhhdmUgdG8gZm9yd2FyZCBkZWNsYXJlIG9uZSBvZiB0aGUgMiBmdW5jdGlvbnMgYW55d2F5
Lg0KDQpBaCwgcmlnaHQuDQpPSyB0aGVuLg0KDQpJIGNhbiBwdXNoIHRoaXMgYW5kICtDYyBzdGFi
bGUgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIGlmIHlvdSB3YW50Lg0KDQoNClAuDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
