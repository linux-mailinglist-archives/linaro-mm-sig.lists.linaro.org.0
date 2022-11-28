Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BA90964C8D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:19:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA21A3E972
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:19:30 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id B58F93EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 20:09:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=Z8qJhYlP;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0INozCygsrzYRHIPWCYY88aXHMGFfj1kNMWkQlBvxRM=; b=Z8qJhYlPU3DCTrelXjO2K07BcE
	On0eNgfVvJsermEmQ7OcZSA487+YB6k2mduXohpmL4e6a4kPJEzdBf8CUxL3Y7XiwLURBrzedamHJ
	oZ7sMQ7EveWpp0IUareCXQFd4wQyshUlb9kDtD/jH7ghK56LivS27fV8OfpSTgVuz4jtChapW1jSv
	R9afS9ayoWRufqgUXDVKKVaDg4AnMDv/olhafTFIT5m7IYrGhZ9T5VugJw4m2WmDqHiNwpR8UgrZY
	YogIzaPrtTuxEE7JDDTLfBMYaNoAyXo7IhrO8g1VW+070aYBEb4AoYmRJtW88jIvvOEPQcUZ0WMtE
	ubCjxwBg==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozkRF-00AcE5-LC; Mon, 28 Nov 2022 21:09:15 +0100
Message-ID: <dffe5d84-4acf-ccb5-dacc-98f691c30352@igalia.com>
Date: Mon, 28 Nov 2022 17:09:06 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-7-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-7-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: B58F93EBC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:+];
	URIBL_BLOCKED(0.00)[cerno.tech:email,fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[igalia.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OYXY2SPMB3LHCHRWMMTXDN2QYWJWKKNT
X-Message-ID-Hash: OYXY2SPMB3LHCHRWMMTXDN2QYWJWKKNT
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:30 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 07/17] drm/tests: helpers: Make sure the device is bound
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OYXY2SPMB3LHCHRWMMTXDN2QYWJWKKNT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IFRoZSBkZXZpY2UgbWFu
YWdlZCByZXNvdXJjZXMgYXJlIGZyZWVkIHdoZW4gdGhlIGRldmljZSBpcyBkZXRhY2hlZCwgc28N
Cj4gaXQgaGFzIHRvIGJlIGJvdW5kIGluIHRoZSBmaXJzdCBwbGFjZS4NCj4gDQo+IExldCdzIGNy
ZWF0ZSBhIGZha2UgZHJpdmVyIHRoYXQgd2Ugd2lsbCBiaW5kIHRvIG91ciBmYWtlIGRldmljZSB0
bw0KPiBiZW5lZml0IGZyb20gdGhlIGRldmljZSBtYW5hZ2VkIGNsZWFudXBzIGluIG91ciB0ZXN0
cy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNo
Pg0KDQpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT4NCg0KQmVz
dCBSZWdhcmRzLA0KLSBNYcOtcmEgQ2FuYWwNCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS90
ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0KPiBpbmRleCAxNTY3
OGFiODIzYjAuLjVkM2UyOTM1M2QxYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rl
c3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2Ry
bV9rdW5pdF9oZWxwZXJzLmMNCj4gQEAgLTE4LDEyICsxOCwzMiBAQCBzdHJ1Y3Qga3VuaXRfZGV2
IHsNCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNzIGRybV9tb2Rl
X2NvbmZpZ19mdW5jcyA9IHsNCj4gIH07DQo+ICANCj4gK3N0YXRpYyBpbnQgZmFrZV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiArew0KPiArCXJldHVybiAwOw0KPiArfQ0K
PiArDQo+ICtzdGF0aWMgaW50IGZha2VfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpDQo+ICt7DQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBzdHJ1Y3QgcGxh
dGZvcm1fZHJpdmVyIGZha2VfcGxhdGZvcm1fZHJpdmVyID0gew0KPiArCS5wcm9iZQk9IGZha2Vf
cHJvYmUsDQo+ICsJLnJlbW92ZQk9IGZha2VfcmVtb3ZlLA0KPiArCS5kcml2ZXIgPSB7DQo+ICsJ
CS5uYW1lCT0gS1VOSVRfREVWSUNFX05BTUUsDQo+ICsJfSwNCj4gK307DQo+ICsNCj4gIC8qKg0K
PiAgICogZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kZXZpY2UgLSBBbGxvY2F0ZSBhIG1vY2sgZGV2
aWNlIGZvciBhIEtVbml0IHRlc3QNCj4gICAqIEB0ZXN0OiBUaGUgdGVzdCBjb250ZXh0IG9iamVj
dA0KPiAgICoNCj4gICAqIFRoaXMgYWxsb2NhdGVzIGEgZmFrZSBzdHJ1Y3QgJmRldmljZSB0byBj
cmVhdGUgYSBtb2NrIGZvciBhIEt1bml0DQo+IC0gKiB0ZXN0Lg0KPiArICogdGVzdC4gVGhlIGRl
dmljZSB3aWxsIGFsc28gYmUgYm91bmQgdG8gYSBmYWtlIGRyaXZlci4gSXQgd2lsbCB0aHVzIGJl
DQo+ICsgKiBhYmxlIHRvIGxldmVyYWdlIHRoZSB1c3VhbCBpbmZyYXN0cnVjdHVyZSBhbmQgbW9z
dCBub3RhYmx5IHRoZQ0KPiArICogZGV2aWNlLW1hbmFnZWQgcmVzb3VyY2VzIGp1c3QgbGlrZSBh
ICJyZWFsIiBkZXZpY2UuDQo+ICAgKg0KPiAgICogQ2FsbGVycyBuZWVkIHRvIG1ha2Ugc3VyZSBk
cm1fa3VuaXRfaGVscGVyX2ZyZWVfZGV2aWNlKCkgb24gdGhlDQo+ICAgKiBkZXZpY2Ugd2hlbiBk
b25lLg0KPiBAQCAtMzYsNiArNTYsOSBAQCBzdHJ1Y3QgZGV2aWNlICpkcm1fa3VuaXRfaGVscGVy
X2FsbG9jX2RldmljZShzdHJ1Y3Qga3VuaXQgKnRlc3QpDQo+ICAJc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldjsNCj4gIAlpbnQgcmV0Ow0KPiAgDQo+ICsJcmV0ID0gcGxhdGZvcm1fZHJpdmVy
X3JlZ2lzdGVyKCZmYWtlX3BsYXRmb3JtX2RyaXZlcik7DQo+ICsJS1VOSVRfQVNTRVJUX0VRKHRl
c3QsIHJldCwgMCk7DQo+ICsNCj4gIAlwZGV2ID0gcGxhdGZvcm1fZGV2aWNlX2FsbG9jKEtVTklU
X0RFVklDRV9OQU1FLCBQTEFURk9STV9ERVZJRF9OT05FKTsNCj4gIAlLVU5JVF9BU1NFUlRfTk9U
X0VSUl9PUl9OVUxMKHRlc3QsIHBkZXYpOw0KPiAgDQo+IEBAIC01OCw2ICs4MSw3IEBAIHZvaWQg
ZHJtX2t1bml0X2hlbHBlcl9mcmVlX2RldmljZShzdHJ1Y3Qga3VuaXQgKnRlc3QsIHN0cnVjdCBk
ZXZpY2UgKmRldikNCj4gIAlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gdG9fcGxhdGZv
cm1fZGV2aWNlKGRldik7DQo+ICANCj4gIAlwbGF0Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcihwZGV2
KTsNCj4gKwlwbGF0Zm9ybV9kcml2ZXJfdW5yZWdpc3RlcigmZmFrZV9wbGF0Zm9ybV9kcml2ZXIp
Ow0KPiAgfQ0KPiAgRVhQT1JUX1NZTUJPTChkcm1fa3VuaXRfaGVscGVyX2ZyZWVfZGV2aWNlKTsN
Cj4gIA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
