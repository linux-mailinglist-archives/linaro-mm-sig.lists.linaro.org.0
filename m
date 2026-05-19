Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLiEBZr0DGqPqQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 01:39:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 959E7586142
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 01:39:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60FE340963
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 23:39:04 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 868AF406A1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 23:38:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OS9zLKic;
	spf=pass (lists.linaro.org: domain of jszhang@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=jszhang@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2592560229;
	Tue, 19 May 2026 23:38:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06A321F00893;
	Tue, 19 May 2026 23:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779233933;
	bh=nRQgbMjzxu8Q3kOrsyDwli0tf7eSBOzQr+PWLku10Rc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OS9zLKicRAaT0ytGqArZtlKKQMTl4c4yfc7HkT8Fbm4pW7slkIkJuyJS4jABvY+is
	 57p8QyTJlXVhvMoXPgA2GDDM+pEFicCRawsSv8wCiRTWbsBY/cPlsGeXZdlhWGQvGB
	 Pmx2xLRg1JU0vxDqGPQwbpprmgdNYmbAqZIiJwCtYTxWJSgkX0VK9WV+P/CY/K3il/
	 4AaQKZMX73BqXLMoJkDSlKah7GrzZ6OYnuslOzzIBaW2DbWsiOPw/BEsfP0DrGMcdr
	 Edq2FWfbKCdtIEm8m2e6Z8fegrW+0ygMk3dHTl92JkDpeVWDzxOMuvU4HnM58x9U7K
	 YBzUWIivryjjA==
Date: Wed, 20 May 2026 07:19:35 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <agzwB78oIt6yZAOs@xhacker>
References: <20260519060532.13221-1-jszhang@kernel.org>
 <b4acc363-b307-4ce1-beef-fece0d66e696@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4acc363-b307-4ce1-beef-fece0d66e696@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: L7WABLMT4DRFICXNF3W5TLIUY4XPMAOL
X-Message-ID-Hash: L7WABLMT4DRFICXNF3W5TLIUY4XPMAOL
X-MailFrom: jszhang@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: Use LIST_HEAD() to initialize on stack list head
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L7WABLMT4DRFICXNF3W5TLIUY4XPMAOL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 959E7586142
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMDg6NTE6MDBBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gNS8xOS8yNiAwODowNSwgSmlzaGVuZyBaaGFuZyB3cm90ZToNCj4gPiBV
c2UgTElTVF9IRUFEIHRvIGluaXRpYWxpemUgb24gc3RhY2sgbGlzdCBoZWFkLiBObyBpbnRlbnRp
b25hbA0KPiA+IGZ1bmN0aW9uYWwgaW1wYWN0Lg0KPiA+IA0KPiA+IENoYW5nZSBnZW5lcmF0ZWQg
d2l0aCBiZWxvdyBjb2NjaW5lbGxlIHNjcmlwdDoNCj4gPiANCj4gPiBAQA0KPiA+IGlkZW50aWZp
ZXIgbmFtZTsNCj4gPiBAQA0KPiA+IC0gc3RydWN0IGxpc3RfaGVhZCBuYW1lOw0KPiA+ICsgTElT
VF9IRUFEKG5hbWUpOw0KPiA+IC4uLiB3aGVuICE9IG5hbWUNCj4gPiAtIElOSVRfTElTVF9IRUFE
KCZuYW1lKTsNCj4gDQo+IFRoZSBwYXRjaCBpdHNlbGYgbG9va3MgY29ycmVjdCwgYnV0IG15IHF1
ZXN0aW9uIGlzIHdoeSB3b3VsZCB3ZSB3YW50IHRvIGRvIHRoYXQ/DQoNClRoZSBiZW5lZml0IGlz
OiBzaW1wbGVyIGNvZGUsIGNvbWJpbmUgdGhlIGxpbmtlZCBsaXN0IGRlZmludGlvbiBhbmQNCmlu
aXRpYWxpemF0aW9uIGluIG9uZSBzdGVwLCB0aHVzIDEgTG9DIHZzIDIgTG9DczsgQW5kIHBvdGVu
dGlhbCBidWcNCnByZXZlbnRpb24sIGUuZyB1c2UgdGhlIGxpc3QgYmVmb3JlIGludGlhbGl6ZWQu
DQpCdXQgSSBhZ3JlZSwgbm8gc3Ryb25nIGJlbmVmaXQgaGVyZS4NCj4gDQo+IEluaXRpYWxpemlu
ZyB0aGUgbGlzdCBoZWFkIChvciBhbnkgb3RoZXIgcmVzdWx0IHZhcmlhYmxlKSBkaXJlY3RseSBi
ZWZvcmUgaXQgaXMgZmlsbGVkIGluIGlzIHVzdWFsbHkgZ29vZCBwcmFjdGljZS4NCj4gDQo+IFJl
Z2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSmlzaGVu
ZyBaaGFuZyA8anN6aGFuZ0BrZXJuZWwub3JnPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2RtYS1i
dWYvaGVhcHMvc3lzdGVtX2hlYXAuYyB8IDMgKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lz
dGVtX2hlYXAuYw0KPiA+IGluZGV4IDAzYzJiODdjYjExMS4uNmY4YjcxMzhmZjU2IDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+ID4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4gPiBAQCAtNDA5LDcgKzQwOSw3
IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1ZiAqc3lzdGVtX2hlYXBfYWxsb2NhdGUoc3RydWN0IGRt
YV9oZWFwICpoZWFwLA0KPiA+ICAgICAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4gPiAg
ICAgICAgIHN0cnVjdCBzZ190YWJsZSAqdGFibGU7DQo+ID4gICAgICAgICBzdHJ1Y3Qgc2NhdHRl
cmxpc3QgKnNnOw0KPiA+IC0gICAgICAgc3RydWN0IGxpc3RfaGVhZCBwYWdlczsNCj4gPiArICAg
ICAgIExJU1RfSEVBRChwYWdlcyk7DQo+ID4gICAgICAgICBzdHJ1Y3QgcGFnZSAqcGFnZSwgKnRt
cF9wYWdlOw0KPiA+ICAgICAgICAgaW50IGksIHJldCA9IC1FTk9NRU07DQo+ID4gDQo+ID4gQEAg
LTQyMyw3ICs0MjMsNiBAQCBzdGF0aWMgc3RydWN0IGRtYV9idWYgKnN5c3RlbV9oZWFwX2FsbG9j
YXRlKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwNCj4gPiAgICAgICAgIGJ1ZmZlci0+bGVuID0gbGVu
Ow0KPiA+ICAgICAgICAgYnVmZmVyLT5jY19zaGFyZWQgPSBjY19zaGFyZWQ7DQo+ID4gDQo+ID4g
LSAgICAgICBJTklUX0xJU1RfSEVBRCgmcGFnZXMpOw0KPiA+ICAgICAgICAgaSA9IDA7DQo+ID4g
ICAgICAgICB3aGlsZSAoc2l6ZV9yZW1haW5pbmcgPiAwKSB7DQo+ID4gICAgICAgICAgICAgICAg
IC8qDQo+ID4gLS0NCj4gPiAyLjUzLjANCj4gPiANCj4gDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
