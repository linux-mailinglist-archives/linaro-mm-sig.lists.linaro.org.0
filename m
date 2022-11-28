Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9692E64C8D2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:19:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A85453EEB4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:19:50 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id ED0193EBF7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 20:14:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=LqtalMNy;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=08/2Un2YGzJddEhSx7wn1daARTMK5OvPSBMOvCMzINI=; b=LqtalMNyuU4+k5RTvZu/mPL98S
	o8GMW4mfahXsFshKuSALJ04tWQVB6919Y+DwyUVMW4FzDoaXGmaDae3SnWsCa34ugNaDwPfU0TA1g
	x0B+OWKB5hW+KCcUcZ6W/WRwSamd1hmwt4v85UybVzZe32GveqRH5m7WnWKksjNl+fA7muEAqKkVP
	mZPWh6QtnhxbOhVNgOAiUu08rVMyrWxtiPnr/2moN3KV4ZzBCNMn2IjTbf/RzRSXUzCWsX+/hJWql
	6raDkSqrNL5q1eeKxgTEAFNJDIUufD985vTjoD4uryoikaPRCE26ZKQOHRPmCtCdRMjwNJiot8Xic
	379Bak0w==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozkWK-00AcJO-Rs; Mon, 28 Nov 2022 21:14:29 +0100
Message-ID: <b48c4585-52b9-5311-5210-fd5679bda90f@igalia.com>
Date: Mon, 28 Nov 2022 17:14:21 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-10-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-10-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: ED0193EBF7
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,igalia.com:dkim];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:+];
	URIBL_BLOCKED(0.00)[fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,igalia.com:email,igalia.com:dkim];
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
Message-ID-Hash: L2JWM7XSA6NAXFIT4JG52TRFHZTQNNPB
X-Message-ID-Hash: L2JWM7XSA6NAXFIT4JG52TRFHZTQNNPB
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:31 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 10/17] drm/tests: Add a test for DRM managed actions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L2JWM7XSA6NAXFIT4JG52TRFHZTQNNPB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IERSTS1tYW5hZ2VkIGFj
dGlvbnMgYXJlIHN1cHBvc2VkIHRvIGJlIHJhbiB3aGVuZXZlciB0aGUgZGV2aWNlIGlzDQo+IHJl
bGVhc2VkLiBMZXQncyBpbnRyb2R1Y2UgYSBiYXNpYyB1bml0IHRlc3QgdG8gbWFrZSBzdXJlIGl0
IGhhcHBlbnMuDQo+IA0KPiBSZXZpZXdlZC1ieTogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxq
YXZpZXJtQHJlZGhhdC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGlt
ZUBjZXJuby50ZWNoPg0KDQpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlh
LmNvbT4NCg0KQmVzdCBSZWdhcmRzLA0KLSBNYcOtcmEgQ2FuYWwNCg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS90ZXN0cy9NYWtlZmlsZSAgICAgICAgICAgfCAgMSArDQo+ICBkcml2ZXJzL2dw
dS9kcm0vdGVzdHMvZHJtX21hbmFnZWRfdGVzdC5jIHwgNzEgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1
L2RybS90ZXN0cy9NYWtlZmlsZQ0KPiBpbmRleCA5NGZlNTQ2ZDkzN2QuLjQ4NjA1MzA1MmJhOSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL01ha2VmaWxlDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS90ZXN0cy9NYWtlZmlsZQ0KPiBAQCAtMTAsNiArMTAsNyBAQCBvYmotJChD
T05GSUdfRFJNX0tVTklUX1RFU1QpICs9IFwNCj4gIAlkcm1fZm9ybWF0X3Rlc3QubyBcDQo+ICAJ
ZHJtX2ZyYW1lYnVmZmVyX3Rlc3QubyBcDQo+ICAJZHJtX2t1bml0X2hlbHBlcnMubyBcDQo+ICsJ
ZHJtX21hbmFnZWRfdGVzdC5vIFwNCj4gIAlkcm1fbW1fdGVzdC5vIFwNCj4gIAlkcm1fbW9kZXNf
dGVzdC5vIFwNCj4gIAlkcm1fcGxhbmVfaGVscGVyX3Rlc3QubyBcDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX21hbmFnZWRfdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJt
L3Rlc3RzL2RybV9tYW5hZ2VkX3Rlc3QuYw0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjE2NTJkY2ExMWQzMA0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fbWFuYWdlZF90ZXN0LmMNCj4gQEAgLTAsMCArMSw3MSBA
QA0KPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCj4gKw0KPiArI2luY2x1
ZGUgPGRybS9kcm1fZHJ2Lmg+DQo+ICsjaW5jbHVkZSA8ZHJtL2RybV9rdW5pdF9oZWxwZXJzLmg+
DQo+ICsjaW5jbHVkZSA8ZHJtL2RybV9tYW5hZ2VkLmg+DQo+ICsNCj4gKyNpbmNsdWRlIDxrdW5p
dC9yZXNvdXJjZS5oPg0KPiArDQo+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+DQo+ICsNCj4g
Ky8qIE91Z2h0IHRvIGJlIGVub3VnaCBmb3IgYW55Ym9keSAqLw0KPiArI2RlZmluZSBURVNUX1RJ
TUVPVVRfTVMJMTAwDQo+ICsNCj4gK3N0cnVjdCBtYW5hZ2VkX3Rlc3RfcHJpdiB7DQo+ICsJYm9v
bCBhY3Rpb25fZG9uZTsNCj4gKwl3YWl0X3F1ZXVlX2hlYWRfdCBhY3Rpb25fd3E7DQo+ICt9Ow0K
PiArDQo+ICtzdGF0aWMgdm9pZCBkcm1fYWN0aW9uKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHZv
aWQgKnB0cikNCj4gK3sNCj4gKwlzdHJ1Y3QgbWFuYWdlZF90ZXN0X3ByaXYgKnByaXYgPSBwdHI7
DQo+ICsNCj4gKwlwcml2LT5hY3Rpb25fZG9uZSA9IHRydWU7DQo+ICsJd2FrZV91cF9pbnRlcnJ1
cHRpYmxlKCZwcml2LT5hY3Rpb25fd3EpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBkcm1f
dGVzdF9tYW5hZ2VkX3J1bl9hY3Rpb24oc3RydWN0IGt1bml0ICp0ZXN0KQ0KPiArew0KPiArCXN0
cnVjdCBtYW5hZ2VkX3Rlc3RfcHJpdiAqcHJpdjsNCj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
Ow0KPiArCXN0cnVjdCBkZXZpY2UgKmRldjsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJcHJpdiA9
IGt1bml0X2t6YWxsb2ModGVzdCwgc2l6ZW9mKCpwcml2KSwgR0ZQX0tFUk5FTCk7DQo+ICsJS1VO
SVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0LCBwcml2KTsNCj4gKwlpbml0X3dhaXRxdWV1
ZV9oZWFkKCZwcml2LT5hY3Rpb25fd3EpOw0KPiArDQo+ICsJZGV2ID0gZHJtX2t1bml0X2hlbHBl
cl9hbGxvY19kZXZpY2UodGVzdCk7DQo+ICsJS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0
ZXN0LCBkZXYpOw0KPiArDQo+ICsJZHJtID0gX19kcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9k
ZXZpY2UodGVzdCwgZGV2LCBzaXplb2YoKmRybSksIDAsIERSSVZFUl9NT0RFU0VUKTsNCj4gKwlL
VU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIGRybSk7DQo+ICsNCj4gKwlyZXQgPSBk
cm1tX2FkZF9hY3Rpb25fb3JfcmVzZXQoZHJtLCBkcm1fYWN0aW9uLCBwcml2KTsNCj4gKwlLVU5J
VF9FWFBFQ1RfRVEodGVzdCwgcmV0LCAwKTsNCj4gKw0KPiArCXJldCA9IGRybV9kZXZfcmVnaXN0
ZXIoZHJtLCAwKTsNCj4gKwlLVU5JVF9BU1NFUlRfRVEodGVzdCwgcmV0LCAwKTsNCj4gKw0KPiAr
CWRybV9kZXZfdW5yZWdpc3Rlcihkcm0pOw0KPiArCWRybV9rdW5pdF9oZWxwZXJfZnJlZV9kZXZp
Y2UodGVzdCwgZGV2KTsNCj4gKw0KPiArCXJldCA9IHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZV90
aW1lb3V0KHByaXYtPmFjdGlvbl93cSwgcHJpdi0+YWN0aW9uX2RvbmUsDQo+ICsJCQkJCSAgICAg
ICBtc2Vjc190b19qaWZmaWVzKFRFU1RfVElNRU9VVF9NUykpOw0KPiArCUtVTklUX0VYUEVDVF9H
VCh0ZXN0LCByZXQsIDApOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgc3RydWN0IGt1bml0X2Nhc2Ug
ZHJtX21hbmFnZWRfdGVzdHNbXSA9IHsNCj4gKwlLVU5JVF9DQVNFKGRybV90ZXN0X21hbmFnZWRf
cnVuX2FjdGlvbiksDQo+ICsJe30NCj4gK307DQo+ICsNCj4gK3N0YXRpYyBzdHJ1Y3Qga3VuaXRf
c3VpdGUgZHJtX21hbmFnZWRfdGVzdF9zdWl0ZSA9IHsNCj4gKwkubmFtZSA9ICJkcm0tdGVzdC1t
YW5hZ2VkIiwNCj4gKwkudGVzdF9jYXNlcyA9IGRybV9tYW5hZ2VkX3Rlc3RzDQo+ICt9Ow0KPiAr
DQo+ICtrdW5pdF90ZXN0X3N1aXRlKGRybV9tYW5hZ2VkX3Rlc3Rfc3VpdGUpOw0KPiArDQo+ICtN
T0RVTEVfQVVUSE9SKCJNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4iKTsNCj4gK01P
RFVMRV9MSUNFTlNFKCJHUEwiKTsNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
