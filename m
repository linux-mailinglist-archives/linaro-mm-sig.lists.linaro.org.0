Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8124A97A025
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Sep 2024 13:19:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76B3344A53
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Sep 2024 11:19:54 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 2592743F9B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Sep 2024 11:19:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4991311FB;
	Mon, 16 Sep 2024 04:20:21 -0700 (PDT)
Received: from [10.57.76.90] (unknown [10.57.76.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF9533F64C;
	Mon, 16 Sep 2024 04:19:48 -0700 (PDT)
Message-ID: <0b748c7d-0800-4352-97b9-4940f115cec9@arm.com>
Date: Mon, 16 Sep 2024 12:19:46 +0100
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
References: <20240913124857.389630-1-adrian.larumbe@collabora.com>
 <20240913124857.389630-3-adrian.larumbe@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20240913124857.389630-3-adrian.larumbe@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ---
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2592743F9B
X-Spamd-Result: default: False [-3.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: 3IG6MX4YJVTDUG4HFUR5ZG75P5YLSSN3
X-Message-ID-Hash: 3IG6MX4YJVTDUG4HFUR5ZG75P5YLSSN3
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 2/5] drm/panthor: record current and maximum device clock frequencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3IG6MX4YJVTDUG4HFUR5ZG75P5YLSSN3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTMvMDkvMjAyNCAxMzo0MiwgQWRyacOhbiBMYXJ1bWJlIHdyb3RlOg0KPiBJbiBvcmRlciB0
byBzdXBwb3J0IFVNIGluIGNhbGN1bGF0aW5nIHJhdGVzIG9mIEdQVSB1dGlsaXNhdGlvbiwgdGhl
IGN1cnJlbnQNCj4gb3BlcmF0aW5nIGFuZCBtYXhpbXVtIEdQVSBjbG9jayBmcmVxdWVuY2llcyBt
dXN0IGJlIHJlY29yZGVkIGR1cmluZyBkZXZpY2UNCj4gaW5pdGlhbGlzYXRpb24sIGFuZCBhbHNv
IGR1cmluZyBPUFAgc3RhdGUgdHJhbnNpdGlvbnMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBZHJp
w6FuIExhcnVtYmUgPGFkcmlhbi5sYXJ1bWJlQGNvbGxhYm9yYS5jb20+DQoNClJldmlld2VkLWJ5
OiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0uY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9kZXZmcmVxLmMgfCAxOCArKysrKysrKysrKysrKysr
Ky0NCj4gIGRyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZGV2aWNlLmggIHwgIDYgKysr
KysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2RldmZy
ZXEuYyBiL2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZGV2ZnJlcS5jDQo+IGluZGV4
IGM2ZDNjMzI3Y2MyNC4uOWQwZjg5MWI5YjUzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcGFudGhvci9wYW50aG9yX2RldmZyZXEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFu
dGhvci9wYW50aG9yX2RldmZyZXEuYw0KPiBAQCAtNjIsMTQgKzYyLDIwIEBAIHN0YXRpYyB2b2lk
IHBhbnRob3JfZGV2ZnJlcV91cGRhdGVfdXRpbGl6YXRpb24oc3RydWN0IHBhbnRob3JfZGV2ZnJl
cSAqcGRldmZyZXEpDQo+ICBzdGF0aWMgaW50IHBhbnRob3JfZGV2ZnJlcV90YXJnZXQoc3RydWN0
IGRldmljZSAqZGV2LCB1bnNpZ25lZCBsb25nICpmcmVxLA0KPiAgCQkJCSAgdTMyIGZsYWdzKQ0K
PiAgew0KPiArCXN0cnVjdCBwYW50aG9yX2RldmljZSAqcHRkZXYgPSBkZXZfZ2V0X2RydmRhdGEo
ZGV2KTsNCj4gIAlzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwOw0KPiArCWludCBlcnI7DQo+ICANCj4g
IAlvcHAgPSBkZXZmcmVxX3JlY29tbWVuZGVkX29wcChkZXYsIGZyZXEsIGZsYWdzKTsNCj4gIAlp
ZiAoSVNfRVJSKG9wcCkpDQo+ICAJCXJldHVybiBQVFJfRVJSKG9wcCk7DQo+ICAJZGV2X3BtX29w
cF9wdXQob3BwKTsNCj4gIA0KPiAtCXJldHVybiBkZXZfcG1fb3BwX3NldF9yYXRlKGRldiwgKmZy
ZXEpOw0KPiArCWVyciA9IGRldl9wbV9vcHBfc2V0X3JhdGUoZGV2LCAqZnJlcSk7DQo+ICsJaWYg
KCFlcnIpDQo+ICsJCXB0ZGV2LT5jdXJyZW50X2ZyZXF1ZW5jeSA9ICpmcmVxOw0KPiArDQo+ICsJ
cmV0dXJuIGVycjsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgcGFudGhvcl9kZXZmcmVxX3Jl
c2V0KHN0cnVjdCBwYW50aG9yX2RldmZyZXEgKnBkZXZmcmVxKQ0KPiBAQCAtMTMwLDYgKzEzNiw3
IEBAIGludCBwYW50aG9yX2RldmZyZXFfaW5pdChzdHJ1Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2
KQ0KPiAgCXN0cnVjdCBwYW50aG9yX2RldmZyZXEgKnBkZXZmcmVxOw0KPiAgCXN0cnVjdCBkZXZf
cG1fb3BwICpvcHA7DQo+ICAJdW5zaWduZWQgbG9uZyBjdXJfZnJlcTsNCj4gKwl1bnNpZ25lZCBs
b25nIGZyZXEgPSBVTE9OR19NQVg7DQo+ICAJaW50IHJldDsNCj4gIA0KPiAgCXBkZXZmcmVxID0g
ZHJtbV9remFsbG9jKCZwdGRldi0+YmFzZSwgc2l6ZW9mKCpwdGRldi0+ZGV2ZnJlcSksIEdGUF9L
RVJORUwpOw0KPiBAQCAtMTYxLDYgKzE2OCw3IEBAIGludCBwYW50aG9yX2RldmZyZXFfaW5pdChz
dHJ1Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2KQ0KPiAgCQlyZXR1cm4gUFRSX0VSUihvcHApOw0K
PiAgDQo+ICAJcGFudGhvcl9kZXZmcmVxX3Byb2ZpbGUuaW5pdGlhbF9mcmVxID0gY3VyX2ZyZXE7
DQo+ICsJcHRkZXYtPmN1cnJlbnRfZnJlcXVlbmN5ID0gY3VyX2ZyZXE7DQo+ICANCj4gIAkvKiBS
ZWd1bGF0b3IgY291cGxpbmcgb25seSB0YWtlcyBjYXJlIG9mIHN5bmNocm9uaXppbmcvYmFsYW5j
aW5nIHZvbHRhZ2UNCj4gIAkgKiB1cGRhdGVzLCBidXQgdGhlIGNvdXBsZWQgcmVndWxhdG9yIG5l
ZWRzIHRvIGJlIGVuYWJsZWQgbWFudWFsbHkuDQo+IEBAIC0yMDQsNiArMjEyLDE0IEBAIGludCBw
YW50aG9yX2RldmZyZXFfaW5pdChzdHJ1Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2KQ0KPiAgDQo+
ICAJZGV2X3BtX29wcF9wdXQob3BwKTsNCj4gIA0KPiArCS8qIEZpbmQgdGhlIGZhc3Rlc3QgZGVm
aW5lZCByYXRlICAqLw0KPiArCW9wcCA9IGRldl9wbV9vcHBfZmluZF9mcmVxX2Zsb29yKGRldiwg
JmZyZXEpOw0KPiArCWlmIChJU19FUlIob3BwKSkNCj4gKwkJcmV0dXJuIFBUUl9FUlIob3BwKTsN
Cj4gKwlwdGRldi0+ZmFzdF9yYXRlID0gZnJlcTsNCj4gKw0KPiArCWRldl9wbV9vcHBfcHV0KG9w
cCk7DQo+ICsNCj4gIAkvKg0KPiAgCSAqIFNldHVwIGRlZmF1bHQgdGhyZXNob2xkcyBmb3IgdGhl
IHNpbXBsZV9vbmRlbWFuZCBnb3Zlcm5vci4NCj4gIAkgKiBUaGUgdmFsdWVzIGFyZSBjaG9zZW4g
YmFzZWQgb24gZXhwZXJpbWVudHMuDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFu
dGhvci9wYW50aG9yX2RldmljZS5oIGIvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9k
ZXZpY2UuaA0KPiBpbmRleCBhNDhlMzBkMGFmMzAuLjIxMDk5MDU4MTNlOCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9kZXZpY2UuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2RldmljZS5oDQo+IEBAIC0xODQsNiArMTg0LDEy
IEBAIHN0cnVjdCBwYW50aG9yX2RldmljZSB7DQo+ICANCj4gIAkvKiogQHByb2ZpbGVfbWFzazog
VXNlci1zZXQgcHJvZmlsaW5nIGZsYWdzIGZvciBqb2IgYWNjb3VudGluZy4gKi8NCj4gIAl1MzIg
cHJvZmlsZV9tYXNrOw0KPiArDQo+ICsJLyoqIEBjdXJyZW50X2ZyZXF1ZW5jeTogRGV2aWNlIGNs
b2NrIGZyZXF1ZW5jeSBhdCBwcmVzZW50LiBTZXQgYnkgRFZGUyovDQo+ICsJdW5zaWduZWQgbG9u
ZyBjdXJyZW50X2ZyZXF1ZW5jeTsNCj4gKw0KPiArCS8qKiBAZmFzdF9yYXRlOiBNYXhpbXVtIGRl
dmljZSBjbG9jayBmcmVxdWVuY3kuIFNldCBieSBEVkZTICovDQo+ICsJdW5zaWduZWQgbG9uZyBm
YXN0X3JhdGU7DQo+ICB9Ow0KPiAgDQo+ICAvKioNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
