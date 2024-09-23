Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B103597E7FA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Sep 2024 10:56:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF8D143CAC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Sep 2024 08:56:22 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 19F5C3F592
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Sep 2024 08:56:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D680FEC;
	Mon, 23 Sep 2024 01:56:36 -0700 (PDT)
Received: from [10.57.79.18] (unknown [10.57.79.18])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F5C63F64C;
	Mon, 23 Sep 2024 01:56:03 -0700 (PDT)
Message-ID: <0316b8a2-8199-41bb-ad0c-99404c896272@arm.com>
Date: Mon, 23 Sep 2024 09:56:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20240920234436.207563-1-adrian.larumbe@collabora.com>
 <20240920234436.207563-3-adrian.larumbe@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20240920234436.207563-3-adrian.larumbe@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 19F5C3F592
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: EEYRWWFEK4NBRT57SLJEWJCXY7DM2LU6
X-Message-ID-Hash: EEYRWWFEK4NBRT57SLJEWJCXY7DM2LU6
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 2/5] drm/panthor: record current and maximum device clock frequencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EEYRWWFEK4NBRT57SLJEWJCXY7DM2LU6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjEvMDkvMjAyNCAwMDo0MywgQWRyacOhbiBMYXJ1bWJlIHdyb3RlOg0KPiBJbiBvcmRlciB0
byBzdXBwb3J0IFVNIGluIGNhbGN1bGF0aW5nIHJhdGVzIG9mIEdQVSB1dGlsaXNhdGlvbiwgdGhl
IGN1cnJlbnQNCj4gb3BlcmF0aW5nIGFuZCBtYXhpbXVtIEdQVSBjbG9jayBmcmVxdWVuY2llcyBt
dXN0IGJlIHJlY29yZGVkIGR1cmluZyBkZXZpY2UNCj4gaW5pdGlhbGlzYXRpb24sIGFuZCBhbHNv
IGR1cmluZyBPUFAgc3RhdGUgdHJhbnNpdGlvbnMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBZHJp
w6FuIExhcnVtYmUgPGFkcmlhbi5sYXJ1bWJlQGNvbGxhYm9yYS5jb20+DQoNCkkgdGhvdWdodCBJ
IGdhdmUgbXkgci1iIG9uIHY2IGFuZCBJIGNhbid0IGFjdHVhbGx5IHNlZSBhbnkgY2hhbmdlOg0K
DQpSZXZpZXdlZC1ieTogU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4NCg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZGV2ZnJlcS5jIHwgMTggKysr
KysrKysrKysrKysrKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2Rldmlj
ZS5oICB8ICA2ICsrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbnRob3Iv
cGFudGhvcl9kZXZmcmVxLmMgYi9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2RldmZy
ZXEuYw0KPiBpbmRleCBjNmQzYzMyN2NjMjQuLjlkMGY4OTFiOWI1MyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9kZXZmcmVxLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9kZXZmcmVxLmMNCj4gQEAgLTYyLDE0ICs2MiwyMCBA
QCBzdGF0aWMgdm9pZCBwYW50aG9yX2RldmZyZXFfdXBkYXRlX3V0aWxpemF0aW9uKHN0cnVjdCBw
YW50aG9yX2RldmZyZXEgKnBkZXZmcmVxKQ0KPiAgc3RhdGljIGludCBwYW50aG9yX2RldmZyZXFf
dGFyZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQgbG9uZyAqZnJlcSwNCj4gIAkJCQkg
IHUzMiBmbGFncykNCj4gIHsNCj4gKwlzdHJ1Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2ID0gZGV2
X2dldF9kcnZkYXRhKGRldik7DQo+ICAJc3RydWN0IGRldl9wbV9vcHAgKm9wcDsNCj4gKwlpbnQg
ZXJyOw0KPiAgDQo+ICAJb3BwID0gZGV2ZnJlcV9yZWNvbW1lbmRlZF9vcHAoZGV2LCBmcmVxLCBm
bGFncyk7DQo+ICAJaWYgKElTX0VSUihvcHApKQ0KPiAgCQlyZXR1cm4gUFRSX0VSUihvcHApOw0K
PiAgCWRldl9wbV9vcHBfcHV0KG9wcCk7DQo+ICANCj4gLQlyZXR1cm4gZGV2X3BtX29wcF9zZXRf
cmF0ZShkZXYsICpmcmVxKTsNCj4gKwllcnIgPSBkZXZfcG1fb3BwX3NldF9yYXRlKGRldiwgKmZy
ZXEpOw0KPiArCWlmICghZXJyKQ0KPiArCQlwdGRldi0+Y3VycmVudF9mcmVxdWVuY3kgPSAqZnJl
cTsNCj4gKw0KPiArCXJldHVybiBlcnI7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB2b2lkIHBhbnRo
b3JfZGV2ZnJlcV9yZXNldChzdHJ1Y3QgcGFudGhvcl9kZXZmcmVxICpwZGV2ZnJlcSkNCj4gQEAg
LTEzMCw2ICsxMzYsNyBAQCBpbnQgcGFudGhvcl9kZXZmcmVxX2luaXQoc3RydWN0IHBhbnRob3Jf
ZGV2aWNlICpwdGRldikNCj4gIAlzdHJ1Y3QgcGFudGhvcl9kZXZmcmVxICpwZGV2ZnJlcTsNCj4g
IAlzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwOw0KPiAgCXVuc2lnbmVkIGxvbmcgY3VyX2ZyZXE7DQo+
ICsJdW5zaWduZWQgbG9uZyBmcmVxID0gVUxPTkdfTUFYOw0KPiAgCWludCByZXQ7DQo+ICANCj4g
IAlwZGV2ZnJlcSA9IGRybW1fa3phbGxvYygmcHRkZXYtPmJhc2UsIHNpemVvZigqcHRkZXYtPmRl
dmZyZXEpLCBHRlBfS0VSTkVMKTsNCj4gQEAgLTE2MSw2ICsxNjgsNyBAQCBpbnQgcGFudGhvcl9k
ZXZmcmVxX2luaXQoc3RydWN0IHBhbnRob3JfZGV2aWNlICpwdGRldikNCj4gIAkJcmV0dXJuIFBU
Ul9FUlIob3BwKTsNCj4gIA0KPiAgCXBhbnRob3JfZGV2ZnJlcV9wcm9maWxlLmluaXRpYWxfZnJl
cSA9IGN1cl9mcmVxOw0KPiArCXB0ZGV2LT5jdXJyZW50X2ZyZXF1ZW5jeSA9IGN1cl9mcmVxOw0K
PiAgDQo+ICAJLyogUmVndWxhdG9yIGNvdXBsaW5nIG9ubHkgdGFrZXMgY2FyZSBvZiBzeW5jaHJv
bml6aW5nL2JhbGFuY2luZyB2b2x0YWdlDQo+ICAJICogdXBkYXRlcywgYnV0IHRoZSBjb3VwbGVk
IHJlZ3VsYXRvciBuZWVkcyB0byBiZSBlbmFibGVkIG1hbnVhbGx5Lg0KPiBAQCAtMjA0LDYgKzIx
MiwxNCBAQCBpbnQgcGFudGhvcl9kZXZmcmVxX2luaXQoc3RydWN0IHBhbnRob3JfZGV2aWNlICpw
dGRldikNCj4gIA0KPiAgCWRldl9wbV9vcHBfcHV0KG9wcCk7DQo+ICANCj4gKwkvKiBGaW5kIHRo
ZSBmYXN0ZXN0IGRlZmluZWQgcmF0ZSAgKi8NCj4gKwlvcHAgPSBkZXZfcG1fb3BwX2ZpbmRfZnJl
cV9mbG9vcihkZXYsICZmcmVxKTsNCj4gKwlpZiAoSVNfRVJSKG9wcCkpDQo+ICsJCXJldHVybiBQ
VFJfRVJSKG9wcCk7DQo+ICsJcHRkZXYtPmZhc3RfcmF0ZSA9IGZyZXE7DQo+ICsNCj4gKwlkZXZf
cG1fb3BwX3B1dChvcHApOw0KPiArDQo+ICAJLyoNCj4gIAkgKiBTZXR1cCBkZWZhdWx0IHRocmVz
aG9sZHMgZm9yIHRoZSBzaW1wbGVfb25kZW1hbmQgZ292ZXJub3IuDQo+ICAJICogVGhlIHZhbHVl
cyBhcmUgY2hvc2VuIGJhc2VkIG9uIGV4cGVyaW1lbnRzLg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9kZXZpY2UuaCBiL2RyaXZlcnMvZ3B1L2RybS9wYW50
aG9yL3BhbnRob3JfZGV2aWNlLmgNCj4gaW5kZXggYTQ4ZTMwZDBhZjMwLi4yMTA5OTA1ODEzZTgg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZGV2aWNlLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9kZXZpY2UuaA0KPiBAQCAt
MTg0LDYgKzE4NCwxMiBAQCBzdHJ1Y3QgcGFudGhvcl9kZXZpY2Ugew0KPiAgDQo+ICAJLyoqIEBw
cm9maWxlX21hc2s6IFVzZXItc2V0IHByb2ZpbGluZyBmbGFncyBmb3Igam9iIGFjY291bnRpbmcu
ICovDQo+ICAJdTMyIHByb2ZpbGVfbWFzazsNCj4gKw0KPiArCS8qKiBAY3VycmVudF9mcmVxdWVu
Y3k6IERldmljZSBjbG9jayBmcmVxdWVuY3kgYXQgcHJlc2VudC4gU2V0IGJ5IERWRlMqLw0KPiAr
CXVuc2lnbmVkIGxvbmcgY3VycmVudF9mcmVxdWVuY3k7DQo+ICsNCj4gKwkvKiogQGZhc3RfcmF0
ZTogTWF4aW11bSBkZXZpY2UgY2xvY2sgZnJlcXVlbmN5LiBTZXQgYnkgRFZGUyAqLw0KPiArCXVu
c2lnbmVkIGxvbmcgZmFzdF9yYXRlOw0KPiAgfTsNCj4gIA0KPiAgLyoqDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
