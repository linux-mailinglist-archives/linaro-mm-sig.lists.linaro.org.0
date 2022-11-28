Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBA964C8D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:20:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DADB3E974
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:20:34 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 10FCE3EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 20:24:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=LIik+9UM;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QYXxZJSHFCQt3h/7y3A5kbbceUgmwfmV1IqjP3fxZUg=; b=LIik+9UMAQJCIDO+cZKWhn6+1H
	EmYKSWMp0+GBdJqBPq2aLClaiBHFKKSjwdAK0s2gcSwt/quMlH0lTaNmW+X0U8fAZNydLQjyLaUAN
	fRMltDkHl1RAaGoLhqFGbmguA0JpOni45hjzqYHJh1fn0XzVOrCOkpmSvCLFMFNoJk17Siz0VdNGX
	DgeE1KMAF5pTpMpPs30bg/FbCkVsU7UwVW2bAP3WL0qT+fvZ9DWitOXUXmIU9w84op+gG0gSi27am
	QG9sk1cSNXCNhcZ2KzJNRp7qi4YPemzGl/j+dQQ0A6zKgpdSGt50WTlabUCaEE8FrkOdwegCvCeKu
	Awkg9jfg==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozkfM-00AcTd-CO; Mon, 28 Nov 2022 21:23:48 +0100
Message-ID: <2edc6568-fe43-5600-ef44-051026b4109f@igalia.com>
Date: Mon, 28 Nov 2022 17:23:40 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-12-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-12-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: 10FCE3EBC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	DKIM_TRACE(0.00)[igalia.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
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
Message-ID-Hash: O74AZAVLYW52DCJOGSSTGR3SQGDOETYK
X-Message-ID-Hash: O74AZAVLYW52DCJOGSSTGR3SQGDOETYK
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:31 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 12/17] drm/vc4: crtc: Introduce a lower-level crtc init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O74AZAVLYW52DCJOGSSTGR3SQGDOETYK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IFRoZSBjdXJyZW50IHZj
NF9jcnRjX2luaXQoKSBoZWxwZXIgYXNzdW1lcyB0aGF0IHdlIHdpbGwgYmUgdXNpbmcNCj4gaGFy
ZHdhcmUgcGxhbmVzIGFuZCBjYWxscyB2YzRfcGxhbmVfaW5pdCgpLg0KPiANCj4gV2hpbGUgaXQn
cyBhIHJlYXNvbmFibGUgYXNzdW1wdGlvbiwgd2UnbGwgd2FudCB0byBtb2NrIHRoZSBwbGFuZSBh
bmQNCj4gdGh1cyBwcm92aWRlIG91ciBvd24uIExldCdzIGNyZWF0ZSBhIGhlbHBlciB0aGF0IHdp
bGwgdGFrZSB0aGUgcGxhbmUgYXMNCj4gYW4gYXJndW1lbnQuDQo+IA0KPiBSZXZpZXdlZC1ieTog
SmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+DQo+IFNpZ25lZC1v
ZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPg0KDQpBbHRob3VnaCB0aGUg
Y29tbWl0IG1lc3NhZ2UgZXhwbGFpbnMgYSBiaXQgYWJvdXQgd2h5IF9fdmM0X2NydGNfaW5pdCBp
cw0KYmVpbmcgY3JlYXRlZCwgaXQgd291bGQgYmUgbmljZSB0byBhZGQgYSBjb21tZW50IGluIHRo
ZSBjb2RlIGV4cGxhaW5pbmcNCnRoYXQgX192YzRfY3J0Y19pbml0IGNhbiBiZSB1c2VkIGZvciB0
ZXN0cyBhcyBpdCBhbGxvd3MgbW9ja2luZyB0aGUNCnBsYW5lLiBUaGlzIHdheSB0aGUgZGlzdGlu
Y3Rpb24gYmV0d2VlbiB2YzRfY3J0Y19pbml0IGFuZA0KX192YzRfY3J0Y19pbml0IHdpbGwgYmUg
Y2xlYW5lciB0byB0aGUgcmVhZGVyLg0KDQpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxtY2Fu
YWxAaWdhbGlhLmNvbT4NCg0KQmVzdCBSZWdhcmRzLA0KLSBNYcOtcmEgQ2FuYWwNCg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2NydGMuYyB8IDUyICsrKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2
LmggIHwgIDYgKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMTkg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRf
Y3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfY3J0Yy5jDQo+IGluZGV4IDMzMzUyOWVk
M2EwZC4uN2EyYzU0ZWZlY2IwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3Zj
NF9jcnRjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfY3J0Yy5jDQo+IEBAIC0x
Mjg2LDMxICsxMjg2LDIwIEBAIHN0YXRpYyB2b2lkIHZjNF9zZXRfY3J0Y19wb3NzaWJsZV9tYXNr
cyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLA0KPiAgCX0NCj4gIH0NCj4gIA0KPiAtaW50IHZjNF9j
cnRjX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldiwNCj4gLQkJICBzdHJ1Y3QgdmM0X2NydGMgKnZjNF9jcnRjLA0KPiAtCQkgIGNvbnN0IHN0
cnVjdCB2YzRfY3J0Y19kYXRhICpkYXRhLA0KPiAtCQkgIGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19m
dW5jcyAqY3J0Y19mdW5jcywNCj4gLQkJICBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfaGVscGVyX2Z1
bmNzICpjcnRjX2hlbHBlcl9mdW5jcywNCj4gLQkJICBib29sIGZlZWRzX3R4cCkNCj4gK2ludCBf
X3ZjNF9jcnRjX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRybSwNCj4gKwkJICAgIHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYsDQo+ICsJCSAgICBzdHJ1Y3QgdmM0X2NydGMgKnZjNF9jcnRj
LA0KPiArCQkgICAgY29uc3Qgc3RydWN0IHZjNF9jcnRjX2RhdGEgKmRhdGEsDQo+ICsJCSAgICBz
dHJ1Y3QgZHJtX3BsYW5lICpwcmltYXJ5X3BsYW5lLA0KPiArCQkgICAgY29uc3Qgc3RydWN0IGRy
bV9jcnRjX2Z1bmNzICpjcnRjX2Z1bmNzLA0KPiArCQkgICAgY29uc3Qgc3RydWN0IGRybV9jcnRj
X2hlbHBlcl9mdW5jcyAqY3J0Y19oZWxwZXJfZnVuY3MsDQo+ICsJCSAgICBib29sIGZlZWRzX3R4
cCkNCj4gIHsNCj4gIAlzdHJ1Y3QgdmM0X2RldiAqdmM0ID0gdG9fdmM0X2Rldihkcm0pOw0KPiAg
CXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9ICZ2YzRfY3J0Yy0+YmFzZTsNCj4gLQlzdHJ1Y3QgZHJt
X3BsYW5lICpwcmltYXJ5X3BsYW5lOw0KPiAgCXVuc2lnbmVkIGludCBpOw0KPiAgCWludCByZXQ7
DQo+ICANCj4gLQkvKiBGb3Igbm93LCB3ZSBjcmVhdGUganVzdCB0aGUgcHJpbWFyeSBhbmQgdGhl
IGxlZ2FjeSBjdXJzb3INCj4gLQkgKiBwbGFuZXMuICBXZSBzaG91bGQgYmUgYWJsZSB0byBzdGFj
ayBtb3JlIHBsYW5lcyBvbiBlYXNpbHksDQo+IC0JICogYnV0IHRvIGRvIHRoYXQgd2Ugd291bGQg
bmVlZCB0byBjb21wdXRlIHRoZSBiYW5kd2lkdGgNCj4gLQkgKiByZXF1aXJlbWVudCBvZiB0aGUg
cGxhbmUgY29uZmlndXJhdGlvbiwgYW5kIHJlamVjdCBvbmVzDQo+IC0JICogdGhhdCB3aWxsIHRh
a2UgdG9vIG11Y2guDQo+IC0JICovDQo+IC0JcHJpbWFyeV9wbGFuZSA9IHZjNF9wbGFuZV9pbml0
KGRybSwgRFJNX1BMQU5FX1RZUEVfUFJJTUFSWSwgMCk7DQo+IC0JaWYgKElTX0VSUihwcmltYXJ5
X3BsYW5lKSkgew0KPiAtCQlkZXZfZXJyKGRybS0+ZGV2LCAiZmFpbGVkIHRvIGNvbnN0cnVjdCBw
cmltYXJ5IHBsYW5lXG4iKTsNCj4gLQkJcmV0dXJuIFBUUl9FUlIocHJpbWFyeV9wbGFuZSk7DQo+
IC0JfQ0KPiAtDQo+ICAJdmM0X2NydGMtPmRhdGEgPSBkYXRhOw0KPiAgCXZjNF9jcnRjLT5wZGV2
ID0gcGRldjsNCj4gIAl2YzRfY3J0Yy0+ZmVlZHNfdHhwID0gZmVlZHNfdHhwOw0KPiBAQCAtMTM0
Miw2ICsxMzMxLDMxIEBAIGludCB2YzRfY3J0Y19pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0s
IHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+ICAN
Cj4gK2ludCB2YzRfY3J0Y19pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYsDQo+ICsJCSAgc3RydWN0IHZjNF9jcnRjICp2YzRfY3J0YywNCj4g
KwkJICBjb25zdCBzdHJ1Y3QgdmM0X2NydGNfZGF0YSAqZGF0YSwNCj4gKwkJICBjb25zdCBzdHJ1
Y3QgZHJtX2NydGNfZnVuY3MgKmNydGNfZnVuY3MsDQo+ICsJCSAgY29uc3Qgc3RydWN0IGRybV9j
cnRjX2hlbHBlcl9mdW5jcyAqY3J0Y19oZWxwZXJfZnVuY3MsDQo+ICsJCSAgYm9vbCBmZWVkc190
eHApDQo+ICt7DQo+ICsJc3RydWN0IGRybV9wbGFuZSAqcHJpbWFyeV9wbGFuZTsNCj4gKw0KPiAr
CS8qIEZvciBub3csIHdlIGNyZWF0ZSBqdXN0IHRoZSBwcmltYXJ5IGFuZCB0aGUgbGVnYWN5IGN1
cnNvcg0KPiArCSAqIHBsYW5lcy4gIFdlIHNob3VsZCBiZSBhYmxlIHRvIHN0YWNrIG1vcmUgcGxh
bmVzIG9uIGVhc2lseSwNCj4gKwkgKiBidXQgdG8gZG8gdGhhdCB3ZSB3b3VsZCBuZWVkIHRvIGNv
bXB1dGUgdGhlIGJhbmR3aWR0aA0KPiArCSAqIHJlcXVpcmVtZW50IG9mIHRoZSBwbGFuZSBjb25m
aWd1cmF0aW9uLCBhbmQgcmVqZWN0IG9uZXMNCj4gKwkgKiB0aGF0IHdpbGwgdGFrZSB0b28gbXVj
aC4NCj4gKwkgKi8NCj4gKwlwcmltYXJ5X3BsYW5lID0gdmM0X3BsYW5lX2luaXQoZHJtLCBEUk1f
UExBTkVfVFlQRV9QUklNQVJZLCAwKTsNCj4gKwlpZiAoSVNfRVJSKHByaW1hcnlfcGxhbmUpKSB7
DQo+ICsJCWRldl9lcnIoZHJtLT5kZXYsICJmYWlsZWQgdG8gY29uc3RydWN0IHByaW1hcnkgcGxh
bmVcbiIpOw0KPiArCQlyZXR1cm4gUFRSX0VSUihwcmltYXJ5X3BsYW5lKTsNCj4gKwl9DQo+ICsN
Cj4gKwlyZXR1cm4gX192YzRfY3J0Y19pbml0KGRybSwgcGRldiwgdmM0X2NydGMsIGRhdGEsIHBy
aW1hcnlfcGxhbmUsDQo+ICsJCQkgICAgICAgY3J0Y19mdW5jcywgY3J0Y19oZWxwZXJfZnVuY3Ms
IGZlZWRzX3R4cCk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbnQgdmM0X2NydGNfYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkNCj4gIHsN
Cj4gIAlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gdG9fcGxhdGZvcm1fZGV2aWNlKGRl
dik7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaCBiL2RyaXZl
cnMvZ3B1L2RybS92YzQvdmM0X2Rydi5oDQo+IGluZGV4IDA1MWMyZTNiNmQ0My4uY2QyMDAyZmZm
MTE1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaA0KPiBAQCAtODg4LDYgKzg4OCwxMiBAQCBp
bnQgdmM0X2JvX2RlYnVnZnNfaW5pdChzdHJ1Y3QgZHJtX21pbm9yICptaW5vcik7DQo+ICAvKiB2
YzRfY3J0Yy5jICovDQo+ICBleHRlcm4gc3RydWN0IHBsYXRmb3JtX2RyaXZlciB2YzRfY3J0Y19k
cml2ZXI7DQo+ICBpbnQgdmM0X2NydGNfZGlzYWJsZV9hdF9ib290KHN0cnVjdCBkcm1fY3J0YyAq
Y3J0Yyk7DQo+ICtpbnQgX192YzRfY3J0Y19pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsDQo+ICsJCSAgICBzdHJ1Y3QgdmM0X2NydGMgKnZj
NF9jcnRjLCBjb25zdCBzdHJ1Y3QgdmM0X2NydGNfZGF0YSAqZGF0YSwNCj4gKwkJICAgIHN0cnVj
dCBkcm1fcGxhbmUgKnByaW1hcnlfcGxhbmUsDQo+ICsJCSAgICBjb25zdCBzdHJ1Y3QgZHJtX2Ny
dGNfZnVuY3MgKmNydGNfZnVuY3MsDQo+ICsJCSAgICBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfaGVs
cGVyX2Z1bmNzICpjcnRjX2hlbHBlcl9mdW5jcywNCj4gKwkJICAgIGJvb2wgZmVlZHNfdHhwKTsN
Cj4gIGludCB2YzRfY3J0Y19pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYsDQo+ICAJCSAgc3RydWN0IHZjNF9jcnRjICp2YzRfY3J0YywgY29u
c3Qgc3RydWN0IHZjNF9jcnRjX2RhdGEgKmRhdGEsDQo+ICAJCSAgY29uc3Qgc3RydWN0IGRybV9j
cnRjX2Z1bmNzICpjcnRjX2Z1bmNzLA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
