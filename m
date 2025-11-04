Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPu7C6D44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B828B40FF70
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8930405DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:56:30 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 7B8A73F859
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 12:43:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=cu9dCIEX;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4d17RW2vHfz9tc2;
	Tue,  4 Nov 2025 13:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1762260215; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JPkgDZbOpdQZ6CjBxSWvLUc4rQdd3n90Y0EiY992u4w=;
	b=cu9dCIEX6zb+HQyiyF2HYnBo7cvxv34vMCj/2+2PBPrWRnD1D+9hTKIqrkCSa+IDNQG1wf
	D6MkW5UhSTCKoqj/BX4tOO4x4zlfioTEE3NTdacLz916BfMP6zdIYOBtZZuF3B0fhrJ4yF
	kbiNqLmKTk0iPRZahCXFwBci1aGOl0eohc+Sr/kUxXRMwnM4yYw8YdQHtcbfsTt+05V3Xw
	7xcB2uX+UdcrG+B4aj5XYc69ytPCTgWc7/nqw7qwgX7dRFkMu10jDZWTRcDDfEC6QcEXgf
	PPpZJsHjB9j6NLM10lFj2EKMMvoxrVf0RGVlB91SKBvy3Iu2YN9hKpUj+1SBlQ==
Message-ID: <628cdf3a0c5b783c09fe2a40aca4a4a48c614e66.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich
 <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>,  Christian
 =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>
Date: Tue, 04 Nov 2025 13:43:27 +0100
In-Reply-To: <20251104095358.15092-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251104095358.15092-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: phbpfqy7crs61b9sp6exm9j8i6h4ozxt
X-MBO-RS-ID: c9a33b565f3f691c7d2
X-Spamd-Bar: --
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XDTKJC2IRIO3EY5PVAOUEY6L5YBTAT72
X-Message-ID-Hash: XDTKJC2IRIO3EY5PVAOUEY6L5YBTAT72
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:49 +0000
CC: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XDTKJC2IRIO3EY5PVAOUEY6L5YBTAT72/>
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
	DATE_IN_PAST(1.00)[3914];
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
	NEURAL_HAM(-0.00)[-0.712];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,gitlab.freedesktop.org:url,linaro.org:email,amd.com:email]
X-Rspamd-Queue-Id: B828B40FF70
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
c2FnZSAoUGhpbGlwcCkNCj4gdjM6IGFkZGVkIEZpeGVzIHRhZyAoUGhpbGlwcCkNCg0KVGh4IGZv
ciB0aGUgdXBkYXRlLg0KSW4gdGhlIGZ1dHVyZSBwbGVhc2UgcHV0IHRoZSBjaGFuZ2Vsb2cgYmVs
b3cgYmV0d2VlbiBhIHBhaXIgb2YgJy0tLScNCg0KLS0tDQp2Mjog4oCmDQp2Mzog4oCmDQotLS0N
Cg0KU29tZSB0aGluZ3MgSSBoYXZlIHVuZm9ydHVuYXRlbHkgb3Zlcmxvb2tlZCBiZWxvdy4NCg0K
PiANCj4gRml4ZXM6IDJmZGI4YThmMDdjMiAoImRybS9zY2hlZHVsZXI6IHJld29yayBlbnRpdHkg
Zmx1c2gsIGtpbGwgYW5kIGZpbmkiKQ0KDQpXZSBzaG91bGQgK0NjIHN0YWJsZS4gSXQncyBhIGRl
YWRsb2NrIGFmdGVyIGFsbC4NCg0KPiBMaW5rOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvbWVzYS9tZXNhLy0vaXNzdWVzLzEzOTA4DQo+IFJlcG9ydGVkLWJ5OiBNaWtoYWlsIEdhdnJp
bG92IDxtaWtoYWlsLnYuZ2F2cmlsb3ZAZ21haWwuY29tPg0KPiBTdWdnZXN0ZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVy
QGFtZC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50
aXR5LmMgfCAzNCArKysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwg
MTkgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfZW50aXR5LmMNCj4gaW5kZXggYzhlOTQ5ZjRhNTY4Li5mZTE3NGE0ODU3
YmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPiBA
QCAtMTczLDI2ICsxNzMsMTUgQEAgaW50IGRybV9zY2hlZF9lbnRpdHlfZXJyb3Ioc3RydWN0IGRy
bV9zY2hlZF9lbnRpdHkgKmVudGl0eSkNCj4gwqB9DQo+IMKgRVhQT1JUX1NZTUJPTChkcm1fc2No
ZWRfZW50aXR5X2Vycm9yKTsNCj4gwqANCj4gK3N0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlf
a2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+ICsJCQkJCcKgIHN0cnVjdCBkbWFf
ZmVuY2VfY2IgKmNiKTsNCg0KSXQncyBmYXIgYmV0dGVyIHRvIG1vdmUgdGhlIGZ1bmN0aW9uIHVw
IGluc3RlYWQuIENhbiB5b3UgZG8gdGhhdD8NCg0KPiArDQo+IA0KDQpb4oCmXQ0KDQo+ICsvKiBT
aWduYWwgdGhlIHNjaGVkdWxlciBmaW5pc2hlZCBmZW5jZSB3aGVuIHRoZSBlbnRpdHkgaW4gcXVl
c3Rpb24gaXMga2lsbGVkLiAqLw0KPiArc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxs
X2pvYnNfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwNCj4gKwkJCQkJwqAgc3RydWN0IGRtYV9mZW5j
ZV9jYiAqY2IpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiA9IGNvbnRhaW5l
cl9vZihjYiwgc3RydWN0IGRybV9zY2hlZF9qb2IsDQo+ICsJCQkJCQkgZmluaXNoX2NiKTsNCj4g
Kw0KPiArCWRtYV9mZW5jZV9wdXQoZik7DQoNCkl0IHdvdWxkIGJlIGdyZWF0IGlmIHdlIGtuZXcg
d2hhdCBmZW5jZSBpcyBiZWluZyBkcm9wcGVkIGhlcmUgYW5kIHdoeS4NCkkga25vdyB5b3UncmUg
anVzdCBtb3ZpbmcgdGhlIHByZS1leGlzdGluZyBjb2RlLCBidXQgaWYgeW91IHNob3VsZA0Ka25v
dywgaW5mb3JtaW5nIGFib3V0IHRoYXQgdmlhIGNvbW1lbnQgd291bGQgYmUgZ3JlYXQuDQoNCk9w
dGlvbmFsLg0KDQoNClJlc3Qgb2YgdGhlIGNvZGUgbG9va3MgZ29vZC4gTm8gZnVydGhlciBvYmpl
Y3Rpb25zLg0KDQoNClAuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
