Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HCEIg4B4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D702410DFF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECD1844260
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:32:28 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 144EC3F853
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 09:48:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=jLMIxK76;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4dHBSS6Tfrz9tlN;
	Thu, 27 Nov 2025 10:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764236888; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZQYSvusihxhAEhdU9CYjb1IJ74ERkj/ScwDBukN3aU4=;
	b=jLMIxK760nk1jr6W+dythNSXScSQUSIn0bfNZKLsnQsoUsP4h3ywir/eSZ27UsyXpnUHGt
	HKR1ydCo5vb0KXtgiU6+xBvKyCoskn4oBuzTQs9zRcXr4JqHMSNdo9tohHXFRZPmyaLuPE
	fotHp0J55AqD+/ghCBzme2ktHRL56A/js86yI4JIJmo+MHuOaH5QumXvHmc8mWASePQ8Ys
	I9DkcZ+wxN5w0xPnu1wseU7+VBp/jfR6Z2ugni7+QL0aVcoKFRF9QYlIY8o9GfvPOCf5Gz
	dg4RXwx8zURlAGa2kAFYPgo3xhFLy361bSBJz6mMLjboBiGUb7+PvOGVjcDFdA==
Message-ID: <d46f753e660694ab46c65409a5e43f050b7eb2d9.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: "Kuehling, Felix" <felix.kuehling@amd.com>, Philipp Stanner
 <phasta@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo
 Padovan <gustavo@padovan.org>, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>,  Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>, Matthew Brost
 <matthew.brost@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?ISO-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>
Date: Thu, 27 Nov 2025 10:48:00 +0100
In-Reply-To: <cef83fed-5994-4c77-962c-9c7aac9f7306@amd.com>
References: <20251126131914.149445-2-phasta@kernel.org>
	 <20251126131914.149445-4-phasta@kernel.org>
	 <cef83fed-5994-4c77-962c-9c7aac9f7306@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 0128008008b612f56f4
X-MBO-RS-META: iynpcy9qgfczj4y13orf1zbr8bhxik1n
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HBFUA4MO2JMQYNFB2CXBQKIUVQAKNAZ5
X-Message-ID-Hash: HBFUA4MO2JMQYNFB2CXBQKIUVQAKNAZ5
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:12 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] amd/amdkfd: Ignore return code of dma_fence_signal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HBFUA4MO2JMQYNFB2CXBQKIUVQAKNAZ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3365];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,suse.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 2D702410DFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI1LTExLTI2IGF0IDE2OjI0IC0wNTAwLCBLdWVobGluZywgRmVsaXggd3JvdGU6
DQo+IA0KPiBPbiAyMDI1LTExLTI2IDA4OjE5LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4g
VGhlIHJldHVybiBjb2RlIG9mIGRtYV9mZW5jZV9zaWduYWwoKSBpcyBub3QgcmVhbGx5IHVzZWZ1
bCBhcyB0aGVyZSBpcw0KPiA+IG5vdGhpbmcgcmVhc29uYWJsZSB0byBkbyBpZiBhIGZlbmNlIHdh
cyBhbHJlYWR5IHNpZ25hbGVkLiBUaGF0IHJldHVybg0KPiA+IGNvZGUgc2hhbGwgYmUgcmVtb3Zl
ZCBmcm9tIHRoZSBrZXJuZWwuDQo+ID4gDQo+ID4gSWdub3JlIGRtYV9mZW5jZV9zaWduYWwoKSdz
IHJldHVybiBjb2RlLg0KPiANCj4gSSB0aGluayB0aGlzIGlzIG5vdCBjb3JyZWN0LiBMb29raW5n
IGF0IHRoZSBjb21tZW50IGluIA0KPiBldmljdF9wcm9jZXNzX3dvcmtlciwgd2UgdXNlIHRoZSBy
ZXR1cm4gdmFsdWUgdG8gZGVjaWRlIGEgcmFjZSANCj4gY29uZGl0aW9ucyB3aGVyZSBtdWx0aXBs
ZSB0aHJlYWRzIGFyZSB0cnlpbmcgdG8gc2lnbmFsIHRoZSBldmljdGlvbiANCj4gZmVuY2UuIE9u
bHkgb25lIG9mIHRoZW0gc2hvdWxkIHNjaGVkdWxlIHRoZSByZXN0b3JlIHdvcmsuIEFuZCB0aGUg
b3RoZXIgDQo+IG9uZXMgbmVlZCB0byBpbmNyZW1lbnQgdGhlIHJlZmVyZW5jZSBjb3VudCB0byBr
ZWVwIGV2aWN0aW9ucyBiYWxhbmNlZC4NCg0KVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGF0IG91
dC4gU2VlbXMgdGhlbiBhbWRrZmQgaXMgdGhlIG9ubHkgdXNlciB3aG8NCmFjdHVhbGx5IHJlbGll
cyBvbiB0aGUgZmVhdHVyZS4gU2VlIGJlbG93DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IMKgwqAgRmVs
aXgNCj4gDQo+IA0KPiA+IA0KPiA+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5l
ciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+ID4gLS0tDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYyB8IDUgKystLS0NCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vzcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYw0KPiA+IGluZGV4IGRkZmUzMGMxM2U5ZC4uOTUwZmFm
YTRiM2MzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9w
cm9jZXNzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vz
cy5jDQo+ID4gQEAgLTE5ODYsNyArMTk4Niw2IEBAIGtmZF9wcm9jZXNzX2dwdWlkX2Zyb21fbm9k
ZShzdHJ1Y3Qga2ZkX3Byb2Nlc3MgKnAsIHN0cnVjdCBrZmRfbm9kZSAqbm9kZSwNCj4gPiDCoCBz
dGF0aWMgaW50IHNpZ25hbF9ldmljdGlvbl9mZW5jZShzdHJ1Y3Qga2ZkX3Byb2Nlc3MgKnApDQo+
ID4gwqAgew0KPiA+IMKgwqAJc3RydWN0IGRtYV9mZW5jZSAqZWY7DQo+ID4gLQlpbnQgcmV0Ow0K
PiA+IMKgIA0KPiA+IMKgwqAJcmN1X3JlYWRfbG9jaygpOw0KPiA+IMKgwqAJZWYgPSBkbWFfZmVu
Y2VfZ2V0X3JjdV9zYWZlKCZwLT5lZik7DQo+ID4gQEAgLTE5OTQsMTAgKzE5OTMsMTAgQEAgc3Rh
dGljIGludCBzaWduYWxfZXZpY3Rpb25fZmVuY2Uoc3RydWN0IGtmZF9wcm9jZXNzICpwKQ0KPiA+
IMKgwqAJaWYgKCFlZikNCj4gPiDCoMKgCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiDCoCANCj4gPiAt
CXJldCA9IGRtYV9mZW5jZV9zaWduYWwoZWYpOw0KPiA+ICsJZG1hX2ZlbmNlX3NpZ25hbChlZik7
DQoNClRoZSBpc3N1ZSBub3cgaXMgdGhhdCBkbWFfZmVuY2Vfc2lnbmFsKCkncyByZXR1cm4gY29k
ZSBpcyBhY3R1YWxseSBub24tDQpyYWN5LCBiZWNhdXNlIGNoZWNrICsgYml0LXNldCBhcmUgcHJv
dGVjdGVkIGJ5IGxvY2suDQoNCkNocmlzdGlhbidzIG5ldyBzcGlubG9jayBzZXJpZXMgd291bGQg
YWRkIGEgbG9jayBmdW5jdGlvbiBmb3IgZmVuY2VzOg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ZHJpLWRldmVsLzIwMjUxMTEzMTQ1MzMyLjE2ODA1LTUtY2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Lw0KDQoNClNvIEkgc3VwcG9zZSB0aGlzIHNob3VsZCB3b3JrOg0KDQpkbWFfZmVuY2VfbG9ja19p
cnFzYXZlKGVmLCBmbGFncyk7DQppZiAoZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhlZikp
IHsNCglkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZWYsIGZsYWdzKTsNCglyZXR1cm4gdHJ1
ZTsNCn0NCmRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGVmKTsNCmRtYV9mZW5jZV91bmxvY2tfaXJx
cmVzdG9yZShlZiwgZmxhZ3MpOw0KDQpyZXR1cm4gZmFsc2U7DQoNCg0KKyBzb21lIGNvc21ldGlj
IGFkanVzdG1lbnRzIGZvciB0aGUgYm9vbGVhbiBvZiBjb3Vyc2UuDQoNCg0KV291bGQgdGhhdCBm
bHkgYW5kIGJlIHJlYXNvbmFibGU/IEBGZWxpeCwgQ2hyaXN0aWFuLg0KDQoNClAuDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
