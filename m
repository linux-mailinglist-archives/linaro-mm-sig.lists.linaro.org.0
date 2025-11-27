Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMirOD8B4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AE106410E55
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7137B44401
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:18 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 629663F848
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 11:10:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=IjhxU24y;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4dHDHT1hXdz9tKb;
	Thu, 27 Nov 2025 12:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764241829; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0X9sUYFosKQhovpORm+Bz7gQNHf//aLsnKpOQbiijb4=;
	b=IjhxU24yblnv5qhu5aU+yZJzPief2jwFCNLeqo/B0e28R0Et3FhqAAc13jtq6tppo+jSR0
	wxHyyX4Wy6egdgWs5bRONMpeVaWQ3WAC9ZFWxtdn8mylPQdY1OCvn6e5hBZWCTX14BSw7M
	DyYKVg8zFVbeCdofoeh7NGuCM4uxYlYnc7zFvG3ojdusqri0fH1K3oP+g0M0nO08hlgyWD
	KaVcH7r6z/KgKWWzNfmQYkdgnAL59OBwP6hDSA9W+ZZas3P/iAvk08K2cHvGZaXKFtng0k
	KX9ate8bL8RdWMGX7hWxPMML3rMZB85YyCzYp/BihNDU8C5B5RjeLsGq8+hRhQ==
Message-ID: <3cf92ff5fa9c9c73c8464434b0e8e13e402091fd.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 27 Nov 2025 12:10:25 +0100
In-Reply-To: <20251113145332.16805-14-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-14-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 80acb9fb273bab064c2
X-MBO-RS-META: hh1ggsgdeiuchgemkhh4qd1wowhmuemg
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Q42KKC3BG43AS54WIBWPMGODVV6GEG2P
X-Message-ID-Hash: Q42KKC3BG43AS54WIBWPMGODVV6GEG2P
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:16 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 13/18] drm/amdgpu: independence for the amdkfd_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q42KKC3BG43AS54WIBWPMGODVV6GEG2P/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.938];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: AE106410E55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBUaGlzIHNob3VsZCBhbGxvdyBhbWRrZmRfZmVuY2VzIHRvIG91dGxpdmUgdGhlIGFtZGdw
dSBtb2R1bGUuDQo+IA0KPiB2MjogaW1wbGVtZW50IEZlbGl4IHN1Z2dlc3Rpb24gdG8gbG9jayB0
aGUgZmVuY2Ugd2hpbGUgc2lnbmFsaW5nIGl0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkLmjCoMKgwqAgfMKgIDYgKysrDQo+IMKg
Li4uL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmPCoCB8IDM5ICsrKysr
KysrLS0tLS0tLS0tLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vz
cy5jwqDCoMKgwqDCoCB8wqAgNyArKy0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQv
a2ZkX3N2bS5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA0ICstDQo+IMKgNCBmaWxlcyBjaGFuZ2Vk
LCAyNyBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkLmggYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkLmgNCj4gaW5kZXggOGJkZmNkZTIwMjliLi42MjU0
Y2VmMDQyMTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9hbWRrZmQuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1k
a2ZkLmgNCj4gQEAgLTE5Niw2ICsxOTYsNyBAQCBpbnQga2ZkX2RlYnVnZnNfa2ZkX21lbV9saW1p
dHMoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKTsNCj4gwqAjZW5kaWYNCj4gwqAjaWYg
SVNfRU5BQkxFRChDT05GSUdfSFNBX0FNRCkNCj4gwqBib29sIGFtZGtmZF9mZW5jZV9jaGVja19t
bShzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBzdHJ1Y3QgbW1fc3RydWN0ICptbSk7DQo+ICt2b2lkIGFt
ZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5jZSAqZik7DQo+IMKgc3RydWN0IGFtZGdw
dV9hbWRrZmRfZmVuY2UgKnRvX2FtZGdwdV9hbWRrZmRfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAq
Zik7DQo+IMKgdm9pZCBhbWRncHVfYW1ka2ZkX3JlbW92ZV9hbGxfZXZpY3Rpb25fZmVuY2VzKHN0
cnVjdCBhbWRncHVfYm8gKmJvKTsNCj4gwqBpbnQgYW1kZ3B1X2FtZGtmZF9ldmljdF91c2VycHRy
KHN0cnVjdCBtbXVfaW50ZXJ2YWxfbm90aWZpZXIgKm1uaSwNCj4gQEAgLTIxMCw2ICsyMTEsMTEg
QEAgYm9vbCBhbWRrZmRfZmVuY2VfY2hlY2tfbW0oc3RydWN0IGRtYV9mZW5jZSAqZiwgc3RydWN0
IG1tX3N0cnVjdCAqbW0pDQo+IMKgCXJldHVybiBmYWxzZTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0
aWMgaW5saW5lDQo+ICt2b2lkIGFtZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5jZSAq
ZikNCj4gK3sNCg0KSSB3b3VsZCBhZGQgYSBzaG9ydCBjb21tZW50IGhlcmU6ICJFbXB0eSBmdW5j
dGlvbiBiZWNhdXNlIOKApiINCg0KPiArfQ0KPiArDQo+IMKgc3RhdGljIGlubGluZQ0KPiDCoHN0
cnVjdCBhbWRncHVfYW1ka2ZkX2ZlbmNlICp0b19hbWRncHVfYW1ka2ZkX2ZlbmNlKHN0cnVjdCBk
bWFfZmVuY2UgKmYpDQo+IMKgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2FtZGtmZF9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2FtZGtmZF9mZW5jZS5jDQo+IGluZGV4IDA5YzkxOWY3MmI2Yy4uZjc2YzNjNTJhMmEx
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2Zk
X2ZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtm
ZF9mZW5jZS5jDQo+IEBAIC0xMjcsMjkgKzEyNyw5IEBAIHN0YXRpYyBib29sIGFtZGtmZF9mZW5j
ZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+IMKgCQlpZiAoIXN2bV9y
YW5nZV9zY2hlZHVsZV9ldmljdF9zdm1fYm8oZmVuY2UpKQ0KPiDCoAkJCXJldHVybiB0cnVlOw0K
PiDCoAl9DQo+IC0JcmV0dXJuIGZhbHNlOw0KPiAtfQ0KPiAtDQo+IC0vKioNCj4gLSAqIGFtZGtm
ZF9mZW5jZV9yZWxlYXNlIC0gY2FsbGJhY2sgdGhhdCBmZW5jZSBjYW4gYmUgZnJlZWQNCj4gLSAq
DQo+IC0gKiBAZjogZG1hX2ZlbmNlDQo+IC0gKg0KPiAtICogVGhpcyBmdW5jdGlvbiBpcyBjYWxs
ZWQgd2hlbiB0aGUgcmVmZXJlbmNlIGNvdW50IGJlY29tZXMgemVyby4NCj4gLSAqIERyb3BzIHRo
ZSBtbV9zdHJ1Y3QgcmVmZXJlbmNlIGFuZCBSQ1Ugc2NoZWR1bGVzIGZyZWVpbmcgdXAgdGhlIGZl
bmNlLg0KPiAtICovDQo+IC1zdGF0aWMgdm9pZCBhbWRrZmRfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmKQ0KPiAtew0KPiAtCXN0cnVjdCBhbWRncHVfYW1ka2ZkX2ZlbmNlICpmZW5j
ZSA9IHRvX2FtZGdwdV9hbWRrZmRfZmVuY2UoZik7DQo+IC0NCj4gLQkvKiBVbmNvbmRpdGlvbmFs
bHkgc2lnbmFsIHRoZSBmZW5jZS4gVGhlIHByb2Nlc3MgaXMgZ2V0dGluZw0KPiAtCSAqIHRlcm1p
bmF0ZWQuDQo+IC0JICovDQo+IC0JaWYgKFdBUk5fT04oIWZlbmNlKSkNCj4gLQkJcmV0dXJuOyAv
KiBOb3QgYW4gYW1kZ3B1X2FtZGtmZF9mZW5jZSAqLw0KPiAtDQo+IMKgCW1tZHJvcChmZW5jZS0+
bW0pOw0KPiAtCWtmcmVlX3JjdShmLCByY3UpOw0KPiArCWZlbmNlLT5tbSA9IE5VTEw7DQoNClRo
YXQgdGhlIHN0b3JhZ2UgYWN0dWFsbHkgdGFrZXMgcGxhY2UgaXMgZ3VhcmFudGVlZCBieSB0aGUg
bG9jayB0YWtlbg0Kd2hlbiBjYWxsaW5nIHRoZSBmZW5jZSBvcHM/DQoNCj4gKwlyZXR1cm4gZmFs
c2U7DQo+IMKgfQ0KPiDCoA0KPiDCoC8qKg0KPiBAQCAtMTc0LDkgKzE1NCwyMiBAQCBib29sIGFt
ZGtmZF9mZW5jZV9jaGVja19tbShzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBzdHJ1Y3QgbW1fc3RydWN0
ICptbSkNCj4gwqAJcmV0dXJuIGZhbHNlOw0KPiDCoH0NCj4gwqANCj4gK3ZvaWQgYW1ka2ZkX2Zl
bmNlX3NpZ25hbChzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPiArew0KPiArCXN0cnVjdCBhbWRncHVf
YW1ka2ZkX2ZlbmNlICpmZW5jZSA9IHRvX2FtZGdwdV9hbWRrZmRfZmVuY2UoZik7DQo+ICsJbG9u
ZyBmbGFnczsNCj4gKw0KPiArCWRtYV9mZW5jZV9sb2NrX2lycXNhZmUoZiwgZmxhZ3MpDQo+ICsJ
aWYgKGZlbmNlLT5tbSkgew0KPiArCQltbWRyb3AoZmVuY2UtPm1tKTsNCj4gKwkJZmVuY2UtPm1t
ID0gTlVMTDsNCj4gKwl9DQo+ICsJZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoZik7DQo+ICsJZG1h
X2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGYsIGZsYWdzKQ0KPiArfQ0KPiArDQo+IMKgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGFtZGtmZF9mZW5jZV9vcHMgPSB7DQo+IMKgCS5n
ZXRfZHJpdmVyX25hbWUgPSBhbWRrZmRfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KPiDCoAkuZ2V0
X3RpbWVsaW5lX25hbWUgPSBhbWRrZmRfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsDQo+IMKgCS5l
bmFibGVfc2lnbmFsaW5nID0gYW1ka2ZkX2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcsDQo+IC0JLnJl
bGVhc2UgPSBhbWRrZmRfZmVuY2VfcmVsZWFzZSwNCj4gwqB9Ow0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMNCj4gaW5kZXggYTA4NWZhYWM5ZmUxLi44ZmFjNzBiODM5
ZWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNz
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYw0KPiBA
QCAtMTE3Myw3ICsxMTczLDcgQEAgc3RhdGljIHZvaWQga2ZkX3Byb2Nlc3Nfd3FfcmVsZWFzZShz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+IMKgCXN5bmNocm9uaXplX3JjdSgpOw0KPiDCoAll
ZiA9IHJjdV9hY2Nlc3NfcG9pbnRlcihwLT5lZik7DQo+IMKgCWlmIChlZikNCj4gLQkJZG1hX2Zl
bmNlX3NpZ25hbChlZik7DQo+ICsJCWFtZGtmZF9mZW5jZV9zaWduYWwoZWYpOw0KPiDCoA0KPiDC
oAlrZmRfcHJvY2Vzc19yZW1vdmVfc3lzZnMocCk7DQo+IMKgCWtmZF9kZWJ1Z2ZzX3JlbW92ZV9w
cm9jZXNzKHApOw0KPiBAQCAtMTk5MCw3ICsxOTkwLDYgQEAga2ZkX3Byb2Nlc3NfZ3B1aWRfZnJv
bV9ub2RlKHN0cnVjdCBrZmRfcHJvY2VzcyAqcCwgc3RydWN0IGtmZF9ub2RlICpub2RlLA0KPiDC
oHN0YXRpYyBpbnQgc2lnbmFsX2V2aWN0aW9uX2ZlbmNlKHN0cnVjdCBrZmRfcHJvY2VzcyAqcCkN
Cj4gwqB7DQo+IMKgCXN0cnVjdCBkbWFfZmVuY2UgKmVmOw0KPiAtCWludCByZXQ7DQo+IMKgDQo+
IMKgCXJjdV9yZWFkX2xvY2soKTsNCj4gwqAJZWYgPSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKCZw
LT5lZik7DQo+IEBAIC0xOTk4LDEwICsxOTk3LDEwIEBAIHN0YXRpYyBpbnQgc2lnbmFsX2V2aWN0
aW9uX2ZlbmNlKHN0cnVjdCBrZmRfcHJvY2VzcyAqcCkNCj4gwqAJaWYgKCFlZikNCj4gwqAJCXJl
dHVybiAtRUlOVkFMOw0KPiDCoA0KPiAtCXJldCA9IGRtYV9mZW5jZV9zaWduYWwoZWYpOw0KPiAr
CWFtZGtmZF9mZW5jZV9zaWduYWwoZWYpOw0KPiDCoAlkbWFfZmVuY2VfcHV0KGVmKTsNCj4gwqAN
Cj4gLQlyZXR1cm4gcmV0Ow0KPiArCXJldHVybiAwOw0KDQpPaCB3YWl0LCB0aGF0J3MgdGhlIGNv
ZGUgSSdtIGFsc28gdG91Y2hpbmcgaW4gbXkgcmV0dXJuIGNvZGUgc2VyaWVzIQ0KDQpodHRwczov
L2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvY2VmODNmZWQtNTk5NC00Yzc3LTk2MmMtOWM3YWFj
OWY3MzA2QGFtZC5jb20vDQoNCg0KRG9lcyB0aGlzIHNlcmllcyB0aGVuIHNvbHZlIHRoZSBwcm9i
bGVtIEZlbGl4IHBvaW50ZWQgb3V0IGluDQpldmljdF9wcm9jZXNzX3dvcmtlcigpPw0KDQoNClAu
DQoNCg0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMgdm9pZCBldmljdF9wcm9jZXNzX3dvcmtlcihz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGtmZC9rZmRfc3ZtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3Zt
LmMNCj4gaW5kZXggYzMwZGZiOGVjMjM2Li41NjY5NTA3MDJiN2QgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9zdm0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCj4gQEAgLTQyOCw3ICs0MjgsNyBAQCBzdGF0aWMgdm9p
ZCBzdm1fcmFuZ2VfYm9fcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZikNCj4gwqANCj4gwqAJaWYg
KCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoJnN2bV9iby0+ZXZpY3Rpb25fZmVuY2UtPmJhc2UpKQ0K
PiDCoAkJLyogV2UncmUgbm90IGluIHRoZSBldmljdGlvbiB3b3JrZXIuIFNpZ25hbCB0aGUgZmVu
Y2UuICovDQo+IC0JCWRtYV9mZW5jZV9zaWduYWwoJnN2bV9iby0+ZXZpY3Rpb25fZmVuY2UtPmJh
c2UpOw0KPiArCQlhbWRrZmRfZmVuY2Vfc2lnbmFsKCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNlLT5i
YXNlKTsNCj4gwqAJZG1hX2ZlbmNlX3B1dCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7
DQo+IMKgCWFtZGdwdV9ib191bnJlZigmc3ZtX2JvLT5ibyk7DQo+IMKgCWtmcmVlKHN2bV9ibyk7
DQo+IEBAIC0zNjI4LDcgKzM2MjgsNyBAQCBzdGF0aWMgdm9pZCBzdm1fcmFuZ2VfZXZpY3Rfc3Zt
X2JvX3dvcmtlcihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+IMKgCW1tYXBfcmVhZF91bmxv
Y2sobW0pOw0KPiDCoAltbXB1dChtbSk7DQo+IMKgDQo+IC0JZG1hX2ZlbmNlX3NpZ25hbCgmc3Zt
X2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7DQo+ICsJYW1ka2ZkX2ZlbmNlX3NpZ25hbCgmc3Zt
X2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7DQo+IMKgDQo+IMKgCS8qIFRoaXMgaXMgdGhlIGxh
c3QgcmVmZXJlbmNlIHRvIHN2bV9ibywgYWZ0ZXIgc3ZtX3JhbmdlX3ZyYW1fbm9kZV9mcmVlDQo+
IMKgCSAqIGhhcyBiZWVuIGNhbGxlZCBpbiBzdm1fbWlncmF0ZV92cmFtX3RvX3JhbQ0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
