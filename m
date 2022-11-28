Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B84164C8D0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:19:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E19C3E96C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:19:11 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 9F8393EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 20:01:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=r5MQVKtb;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ISyLvvVbmkVMtysV5RC9fGrmHd3bXOuCgdRekBqVUuQ=; b=r5MQVKtbgyTmArJRqAObkt+Huo
	1YLaklT6xQoWF0ibenjtpkC7v0/shWVftQ4U2j9KxQfx1ceIFcsD92/9qca5DgSzPz2tfXh/3D//N
	9ybeK4Ho+l3GMPhmBdjiZchWvH4jDldxLYsrKVdG/QWnN9k4WXNBO1gvlQsl68CnRNuTTwXWcqdPY
	3nCRN06alHSkHp21JSn+8/D87F4nIX5XTwkH8r4avvd2q5xyqARioU32lEGnTw1GJu8driWyTd3h8
	9NsVQzszN422DMdRsEFlIHNRMuKmAJgvTrUaqp2tScNDAlGUruP6Cm5UySbQJq+kdDMoTH5rab6w8
	d76yaa0w==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozkJl-00Aboh-5u; Mon, 28 Nov 2022 21:01:29 +0100
Message-ID: <0ae37916-ecc1-d97c-6a98-c8008fdd05f6@igalia.com>
Date: Mon, 28 Nov 2022 17:01:20 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-6-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-6-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: 9F8393EBC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,igalia.com:email,igalia.com:dkim,cerno.tech:email];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[igalia.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[cerno.tech:email,fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,igalia.com:email,igalia.com:dkim];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[igalia.com];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MPDLT5XX6TRM6KJ5NYOYZQNJ3CPG642S
X-Message-ID-Hash: MPDLT5XX6TRM6KJ5NYOYZQNJ3CPG642S
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:30 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 06/17] drm/tests: helpers: Switch to a platform_device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MPDLT5XX6TRM6KJ5NYOYZQNJ3CPG642S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IFRoZSBkZXZpY2UgbWFu
YWdlZCByZXNvdXJjZXMgYXJlIHJhbiBpZiB0aGUgZGV2aWNlIGhhcyBidXMsIHdoaWNoIGlzIG5v
dA0KPiB0aGUgY2FzZSBvZiBhIHJvb3RfZGV2aWNlLg0KPiANCj4gTGV0J3MgdXNlIGEgcGxhdGZv
cm1fZGV2aWNlIGluc3RlYWQuDQo+IA0KPiBSZXZpZXdlZC1ieTogSmF2aWVyIE1hcnRpbmV6IENh
bmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBh
cmQgPG1heGltZUBjZXJuby50ZWNoPg0KDQpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxtY2Fu
YWxAaWdhbGlhLmNvbT4NCg0KQmVzdCBSZWdhcmRzLA0KLSBNYcOtcmEgQ2FuYWwNCg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jIHwgMTYgKysrKysr
KysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5p
dF9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0K
PiBpbmRleCA5ZmIwNDVmYTY4NWYuLjE1Njc4YWI4MjNiMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCj4gQEAgLTcsNiArNyw3IEBADQo+ICAjaW5j
bHVkZSA8a3VuaXQvcmVzb3VyY2UuaD4NCj4gIA0KPiAgI2luY2x1ZGUgPGxpbnV4L2RldmljZS5o
Pg0KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPg0KPiAgDQo+ICAjZGVmaW5l
IEtVTklUX0RFVklDRV9OQU1FCSJkcm0ta3VuaXQtbW9jay1kZXZpY2UiDQo+ICANCj4gQEAgLTMy
LDcgKzMzLDE2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNzIGRy
bV9tb2RlX2NvbmZpZ19mdW5jcyA9IHsNCj4gICAqLw0KPiAgc3RydWN0IGRldmljZSAqZHJtX2t1
bml0X2hlbHBlcl9hbGxvY19kZXZpY2Uoc3RydWN0IGt1bml0ICp0ZXN0KQ0KPiAgew0KPiAtCXJl
dHVybiByb290X2RldmljZV9yZWdpc3RlcihLVU5JVF9ERVZJQ0VfTkFNRSk7DQo+ICsJc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldjsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJcGRldiA9IHBs
YXRmb3JtX2RldmljZV9hbGxvYyhLVU5JVF9ERVZJQ0VfTkFNRSwgUExBVEZPUk1fREVWSURfTk9O
RSk7DQo+ICsJS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0LCBwZGV2KTsNCj4gKw0K
PiArCXJldCA9IHBsYXRmb3JtX2RldmljZV9hZGQocGRldik7DQo+ICsJS1VOSVRfQVNTRVJUX0VR
KHRlc3QsIHJldCwgMCk7DQo+ICsNCj4gKwlyZXR1cm4gJnBkZXYtPmRldjsNCj4gIH0NCj4gIEVY
UE9SVF9TWU1CT0woZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kZXZpY2UpOw0KPiAgDQo+IEBAIC00
NSw3ICs1NSw5IEBAIEVYUE9SVF9TWU1CT0woZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kZXZpY2Up
Ow0KPiAgICovDQo+ICB2b2lkIGRybV9rdW5pdF9oZWxwZXJfZnJlZV9kZXZpY2Uoc3RydWN0IGt1
bml0ICp0ZXN0LCBzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ICB7DQo+IC0Jcm9vdF9kZXZpY2VfdW5y
ZWdpc3RlcihkZXYpOw0KPiArCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSB0b19wbGF0
Zm9ybV9kZXZpY2UoZGV2KTsNCj4gKw0KPiArCXBsYXRmb3JtX2RldmljZV91bnJlZ2lzdGVyKHBk
ZXYpOw0KPiAgfQ0KPiAgRVhQT1JUX1NZTUJPTChkcm1fa3VuaXRfaGVscGVyX2ZyZWVfZGV2aWNl
KTsNCj4gIA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
