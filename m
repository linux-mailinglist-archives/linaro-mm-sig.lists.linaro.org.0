Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBP3H+z44GkloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 120E141000A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E3D7409C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:57:47 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id E695F3F713
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Nov 2025 11:33:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=layoS3wZ;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4d1jqj1vq5z9v5H;
	Wed,  5 Nov 2025 12:33:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1762342385; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iAe/QvWhI1MqiiGrLuDwK+dWilyj6go0MLW+FJxZFr8=;
	b=layoS3wZ1E/R5/4e55fNksT8U95Y5c1eSSahctFSDDT6sdb5ekBCD+wwgSVrCanuecLSCL
	BdlJs1NZWPVtE4/TKphbqY40WkLXEZKovq8xUFwHg0Q/u1QfNPq2KqTA3v6cotCYoeXfTT
	hBu6bo0lQpygxKHjCqWEMRIAjClGMRclgFpIthJ7Z0F6aBUp9OnWw29RieIA7x0F3HS4K+
	lAW28AFBqYu9BBWgTUXNuzA6EO4Kpio0G09wcruJStGWOxpzCRvtegR78i9tUezP2TYsCx
	h7GlJplJC5hAmrECWpz7sD4O72aUdcIgP/tppzBpP/5CnAMEBlh+hIYRngwV1A==
Message-ID: <1801bdee8236678f0284a0d71b8742d92708605a.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich
 <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>,  Christian
 =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>
Date: Wed, 05 Nov 2025 12:32:57 +0100
In-Reply-To: <20251104095358.15092-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251104095358.15092-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: 9kpsr57q38skypbbg7hubxkkafkg9jfk
X-MBO-RS-ID: 616a0a032e0b215b8f8
X-Spamd-Bar: --
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: I2NMD2PHWJX5WTIWQNM2I3VZPSOW4J5S
X-Message-ID-Hash: I2NMD2PHWJX5WTIWQNM2I3VZPSOW4J5S
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:44 +0000
CC: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I2NMD2PHWJX5WTIWQNM2I3VZPSOW4J5S/>
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
	DATE_IN_PAST(1.00)[3891];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.697];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,mailbox.org:mid,gitlab.freedesktop.org:url,linaro.org:email]
X-Rspamd-Queue-Id: 120E141000A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI1LTExLTA0IGF0IDEwOjUzICswMTAwLCBQaWVycmUtRXJpYyBQZWxsb3V4LVBy
YXllciB3cm90ZToNCj4gVGhlIE1lc2EgaXNzdWUgcmVmZXJlbmNlZCBiZWxvdyBwb2ludGVkIG91
dCBhIHBvc3NpYmxlIGRlYWRsb2NrOg0KPiANCj4gWyAxMjMxLjYxMTAzMV3CoCBQb3NzaWJsZSBp
bnRlcnJ1cHQgdW5zYWZlIGxvY2tpbmcgc2NlbmFyaW86DQo+IA0KPiBbIDEyMzEuNjExMDMzXcKg
wqDCoMKgwqDCoMKgIENQVTDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBD
UFUxDQo+IFsgMTIzMS42MTEwMzRdwqDCoMKgwqDCoMKgwqAgLS0tLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0tLS0NCj4gWyAxMjMxLjYxMTAzNV3CoMKgIGxvY2soJnhh
LT54YV9sb2NrIzE3KTsNCj4gWyAxMjMxLjYxMTAzOF3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2NhbF9pcnFfZGlzYWJsZSgp
Ow0KPiBbIDEyMzEuNjExMDM5XcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvY2soJmZlbmNlLT5sb2NrKTsNCj4gWyAxMjMxLjYx
MTA0MV3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBsb2NrKCZ4YS0+eGFfbG9jayMxNyk7DQo+IFsgMTIzMS42MTEwNDRdwqDCoCA8
SW50ZXJydXB0Pg0KPiBbIDEyMzEuNjExMDQ1XcKgwqDCoMKgIGxvY2soJmZlbmNlLT5sb2NrKTsN
Cj4gWyAxMjMxLjYxMTA0N10NCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICoqKiBE
RUFETE9DSyAqKioNCj4gDQo+IEluIHRoaXMgZXhhbXBsZSwgQ1BVMCB3b3VsZCBiZSBhbnkgZnVu
Y3Rpb24gYWNjZXNzaW5nIGpvYi0+ZGVwZW5kZW5jaWVzDQo+IHRocm91Z2ggdGhlIHhhXyogZnVu
Y3Rpb25zIHRoYXQgZG9lc24ndCBkaXNhYmxlIGludGVycnVwdHMgKGVnOg0KPiBkcm1fc2NoZWRf
am9iX2FkZF9kZXBlbmRlbmN5LCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYikuDQo+IA0K
PiBDUFUxIGlzIGV4ZWN1dGluZyBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYiBhcyBhIGZl
bmNlIHNpZ25hbGxpbmcNCj4gY2FsbGJhY2sgc28gaW4gYW4gaW50ZXJydXB0IGNvbnRleHQuIEl0
IHdpbGwgZGVhZGxvY2sgd2hlbiB0cnlpbmcgdG8NCj4gZ3JhYiB0aGUgeGFfbG9jayB3aGljaCBp
cyBhbHJlYWR5IGhlbGQgYnkgQ1BVMC4NCj4gDQo+IFJlcGxhY2luZyBhbGwgeGFfKiB1c2FnZSBi
eSB0aGVpciB4YV8qX2lycSBjb3VudGVycGFydHMgd291bGQgZml4DQo+IHRoaXMgaXNzdWUsIGJ1
dCBDaHJpc3RpYW4gcG9pbnRlZCBvdXQgYW5vdGhlciBpc3N1ZTogZG1hX2ZlbmNlX3NpZ25hbA0K
PiB0YWtlcyBmZW5jZS5sb2NrIGFuZCBzbyBkb2VzIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2suDQo+
IA0KPiDCoCBkbWFfZmVuY2Vfc2lnbmFsKCkgLy8gbG9ja3MgZjEubG9jaw0KPiDCoCAtPiBkcm1f
c2NoZWRfZW50aXR5X2tpbGxfam9ic19jYigpDQo+IMKgIC0+IGZvcmVhY2ggZGVwZW5kZW5jaWVz
DQo+IMKgwqDCoMKgIC0+IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soKSAvLyBsb2NrcyBmMi5sb2Nr
DQo+IA0KPiBUaGlzIHdpbGwgZGVhZGxvY2sgaWYgZjEgYW5kIGYyIHNoYXJlIHRoZSBzYW1lIHNw
aW5sb2NrLg0KPiANCj4gVG8gZml4IGJvdGggaXNzdWVzLCB0aGUgY29kZSBpdGVyYXRpbmcgb24g
ZGVwZW5kZW5jaWVzIGFuZCByZS1hcm1pbmcgdGhlbQ0KPiBpcyBtb3ZlZCBvdXQgdG8gZHJtX3Nj
aGVkX2VudGl0eV9raWxsX2pvYnNfd29yay4NCj4gDQo+IHYyOiByZXdvcmRlZCBjb21taXQgbWVz
c2FnZSAoUGhpbGlwcCkNCj4gdjM6IGFkZGVkIEZpeGVzIHRhZyAoUGhpbGlwcCkNCj4gDQo+IEZp
eGVzOiAyZmRiOGE4ZjA3YzIgKCJkcm0vc2NoZWR1bGVyOiByZXdvcmsgZW50aXR5IGZsdXNoLCBr
aWxsIGFuZCBmaW5pIikNCj4gTGluazogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21l
c2EvbWVzYS8tL2lzc3Vlcy8xMzkwOA0KPiBSZXBvcnRlZC1ieTogTWlraGFpbCBHYXZyaWxvdiA8
bWlraGFpbC52LmdhdnJpbG92QGdtYWlsLmNvbT4NCj4gU3VnZ2VzdGVkLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFJldmlld2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFBp
ZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIDxwaWVycmUtZXJpYy5wZWxsb3V4LXByYXllckBhbWQu
Y29tPg0KDQpQdXNoZWQgdG8gZHJtLW1pc2MtZml4ZXMuDQoNClRoeCwgUGllcnJlLUVyaWMhDQoN
Cg0KUC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
