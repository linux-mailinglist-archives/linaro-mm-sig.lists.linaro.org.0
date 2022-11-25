Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C184363A170
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:43:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D17183EF89
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:43:20 +0000 (UTC)
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by lists.linaro.org (Postfix) with ESMTPS id 34F883EA4F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 14:10:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=riseup.net header.s=squak header.b=hmhdwpA3;
	spf=pass (lists.linaro.org: domain of mairacanal@riseup.net designates 198.252.153.129 as permitted sender) smtp.mailfrom=mairacanal@riseup.net;
	dmarc=pass (policy=none) header.from=riseup.net
Received: from fews1.riseup.net (fews1-pn.riseup.net [10.0.1.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.riseup.net", Issuer "R3" (not verified))
	by mx1.riseup.net (Postfix) with ESMTPS id 4NJcFb5ZXkzDrVl;
	Fri, 25 Nov 2022 14:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1669385412; bh=URYH0IzqLdcTRk2nEZuYkw52NB+0goWIxpVAqrktmWk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hmhdwpA3y7+ljO6AAmdV08S1hROra14B1YqTtMA/+M0I4UE38BCbPQogQs+32v9j6
	 rM4cxEOLFa0LYx0se2bUnQzMWeAdvXBYr3aeYVBYDFwmFmKpgNKG3CzzEEmrC0q9bf
	 Ylr1XPmwiZX1oFMkGAN6UKii9hQ/lIvgcelTj00o=
X-Riseup-User-ID: 71B09A1F920CD941466DEE4BA3A0B31413D3BD54FB7AA6B05413A8EB5A9CC69A
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews1.riseup.net (Postfix) with ESMTPSA id 4NJcFV4BCfz5vbk;
	Fri, 25 Nov 2022 14:10:06 +0000 (UTC)
Message-ID: <6a817cad-df46-42ac-3c14-dbdce681cde6@riseup.net>
Date: Fri, 25 Nov 2022 11:10:02 -0300
MIME-Version: 1.0
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-1-051a0bb60a16@cerno.tech>
Content-Language: en-US
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>
In-Reply-To: <20221123-rpi-kunit-tests-v1-1-051a0bb60a16@cerno.tech>
X-Rspamd-Queue-Id: 34F883EA4F
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[riseup.net,none];
	RCVD_IN_DNSWL_HI(-0.50)[198.252.153.129:from];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[riseup.net:s=squak];
	RWL_MAILSPIKE_GOOD(-0.10)[198.252.153.129:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:16652, ipnet:198.252.153.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riseup.net:email,riseup.net:dkim,cerno.tech:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[riseup.net:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mairacanal@riseup.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KPYO4PERTLRVZCZXKYUKA2Y52PJSWUA2
X-Message-ID-Hash: KPYO4PERTLRVZCZXKYUKA2Y52PJSWUA2
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:34:02 +0000
CC: David Gow <davidgow@google.com>, Brendan Higgins <brendan.higgins@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/24] drm/tests: helpers: Rename the device init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KPYO4PERTLRVZCZXKYUKA2Y52PJSWUA2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTEvMjMvMjIgMTI6MjUsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IFRoZSBuYW1lIGRvZXNu
J3QgcmVhbGx5IGZpdCB0aGUgY29udmVudGlvbnMgZm9yIHRoZSBvdGhlciBoZWxwZXJzIGluDQo+
IERSTS9LTVMsIHNvIGxldCdzIHJlbmFtZSBpdCB0byBtYWtlIGl0IG9idmlvdXMgdGhhdCB3ZSBh
bGxvY2F0ZSBhIG5ldw0KPiBEUk0gZGV2aWNlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1l
IFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+DQoNCkFsdGhvdWdoIEkgYmVsaWV2ZSB1c2luZyAi
ZHJtX2RldmljZSIgb24gdGhlIGZ1bmN0aW9uIG5hbWUgaXMgYSBiaXQgDQpyZWR1bmRhbnQgKG1h
eWJlIGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZGV2IG9yIA0KZHJtX2t1bml0X2hlbHBlcl9hbGxv
Y19kZXZpY2Ugd291bGQgYmUgY2xlYW5lciksDQoNClJldmlld2VkLWJ5OiBNYcOtcmEgQ2FuYWwg
PG1haXJhY2FuYWxAcmlzZXVwLm5ldD4NCg0KQmVzdCBSZWdhcmRzLA0KLSBNYcOtcmEgQ2FuYWwN
Cg0KPiAtLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2NsaWVudF9tb2Rlc2V0X3Rl
c3QuYyB8IDIgKy0NCj4gICBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMu
YyAgICAgICB8IDQgKysrLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVs
cGVycy5oICAgICAgIHwgNSArKysrLQ0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90
ZXN0cy9kcm1fY2xpZW50X21vZGVzZXRfdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2Ry
bV9jbGllbnRfbW9kZXNldF90ZXN0LmMNCj4gaW5kZXggMzYyYTVmYmQ4MmY1Li5lNDY5ZDE2MzRl
MmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fY2xpZW50X21vZGVz
ZXRfdGVzdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fY2xpZW50X21vZGVz
ZXRfdGVzdC5jDQo+IEBAIC00MSw3ICs0MSw3IEBAIHN0YXRpYyBpbnQgZHJtX2NsaWVudF9tb2Rl
c2V0X3Rlc3RfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QpDQo+ICAgDQo+ICAgCXRlc3QtPnByaXYg
PSBwcml2Ow0KPiAgIA0KPiAtCXByaXYtPmRybSA9IGRybV9rdW5pdF9kZXZpY2VfaW5pdCh0ZXN0
LCBEUklWRVJfTU9ERVNFVCwgImRybS1jbGllbnQtbW9kZXNldC10ZXN0Iik7DQo+ICsJcHJpdi0+
ZHJtID0gZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kcm1fZGV2aWNlKHRlc3QsIERSSVZFUl9NT0RF
U0VULCAiZHJtLWNsaWVudC1tb2Rlc2V0LXRlc3QiKTsNCj4gICAJS1VOSVRfQVNTRVJUX05PVF9F
UlJfT1JfTlVMTCh0ZXN0LCBwcml2LT5kcm0pOw0KPiAgIA0KPiAgIAlyZXQgPSBkcm1tX2Nvbm5l
Y3Rvcl9pbml0KHByaXYtPmRybSwgJnByaXYtPmNvbm5lY3RvciwNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jIGIvZHJpdmVycy9ncHUvZHJt
L3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCj4gaW5kZXggZjE2NjIwOTFmMjUwLi5hNGFkMDMw
ZWQxMDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVs
cGVycy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5j
DQo+IEBAIC0zNiw3ICszNiw5IEBAIHN0YXRpYyB2b2lkIGRldl9mcmVlKHN0cnVjdCBrdW5pdF9y
ZXNvdXJjZSAqcmVzKQ0KPiAgIAlyb290X2RldmljZV91bnJlZ2lzdGVyKGRldik7DQo+ICAgfQ0K
PiAgIA0KPiAtc3RydWN0IGRybV9kZXZpY2UgKmRybV9rdW5pdF9kZXZpY2VfaW5pdChzdHJ1Y3Qg
a3VuaXQgKnRlc3QsIHUzMiBmZWF0dXJlcywgY2hhciAqbmFtZSkNCj4gK3N0cnVjdCBkcm1fZGV2
aWNlICoNCj4gK2RybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2RldmljZShzdHJ1Y3Qga3VuaXQg
KnRlc3QsDQo+ICsJCQkJICB1MzIgZmVhdHVyZXMsIGNoYXIgKm5hbWUpDQo+ICAgew0KPiAgIAlz
dHJ1Y3Qga3VuaXRfZGV2ICprZGV2Ow0KPiAgIAlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtOw0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmggYi9k
cml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuaA0KPiBpbmRleCAyMGFiNmVl
YzRjODkuLmU5ODcwYzc5MTFmZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rlc3Rz
L2RybV9rdW5pdF9oZWxwZXJzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9r
dW5pdF9oZWxwZXJzLmgNCj4gQEAgLTYsNiArNiw5IEBADQo+ICAgc3RydWN0IGRybV9kZXZpY2U7
DQo+ICAgc3RydWN0IGt1bml0Ow0KPiAgIA0KPiAtc3RydWN0IGRybV9kZXZpY2UgKmRybV9rdW5p
dF9kZXZpY2VfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QsIHUzMiBmZWF0dXJlcywgY2hhciAqbmFt
ZSk7DQo+ICtzdHJ1Y3QgZHJtX2RldmljZSAqDQo+ICtkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2Ry
bV9kZXZpY2Uoc3RydWN0IGt1bml0ICp0ZXN0LA0KPiArCQkJCSAgdTMyIGZlYXR1cmVzLA0KPiAr
CQkJCSAgY2hhciAqbmFtZSk7DQo+ICAgDQo+ICAgI2VuZGlmIC8vIERSTV9LVU5JVF9IRUxQRVJT
X0hfDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
