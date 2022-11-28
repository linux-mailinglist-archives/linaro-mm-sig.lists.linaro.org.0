Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FD764C8D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:20:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B21D3E96F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:20:14 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 175653EBF7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 20:17:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=rxsHLnx+;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vX2ocme+hZX+NjcZX8O3c1XHJ5V+wwKS4fNwe5R5UdY=; b=rxsHLnx+h1SMG8JejTEY8iGuqe
	JCT40++sS2UnuzQpE56kIg4U9YFOKBXOwSCt+1BBQGeiAqgTY7JKzFz0ZCbLI1dRMUcr+DiZDgzXP
	s163fDKm4A+ML8Dof+fz8DeOsnTHJF4DWa+SUJI90ucPviQwDCCwssU0z42v6BCO/bglNBNa+L0w4
	IV0gHFrqKYq6WWfoBZEFMfxs/+brKXYSWILBMVXnbzM5332BmLxe95ElE6UuqbF5gA/Ao6bCf7orX
	qiM8q4sL0YcwY9lB5PIm/g6cMBjA8z5MwmngoM+q8tEXS3L4d1SxKrK1ljLVnpmrUj73dLO2U7dyi
	s+y6Ty4g==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozkYq-00AcMt-79; Mon, 28 Nov 2022 21:17:04 +0100
Message-ID: <ad9d7004-ca7b-abdd-82b5-bdf14ee8e067@igalia.com>
Date: Mon, 28 Nov 2022 17:16:51 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-11-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-11-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: 175653EBF7
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,igalia.com:dkim,cerno.tech:email,fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:+];
	URIBL_BLOCKED(0.00)[fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,igalia.com:email,igalia.com:dkim,cerno.tech:email];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
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
Message-ID-Hash: RSGBQLDTS5552HF2ZHT2FDOLKWW2657E
X-Message-ID-Hash: RSGBQLDTS5552HF2ZHT2FDOLKWW2657E
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:31 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 11/17] drm/vc4: Move HVS state to main header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RSGBQLDTS5552HF2ZHT2FDOLKWW2657E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IEluIG9yZGVyIHRvIGlu
dHJvZHVjZSB1bml0IHRlc3RzIGZvciB0aGUgSFZTIHN0YXRlIGNvbXB1dGF0aW9uLCB3ZSdsbA0K
PiBuZWVkIGFjY2VzcyB0byB0aGUgdmM0X2h2c19zdGF0ZSBzdHJ1Y3QgZGVmaW5pdGlvbiBhbmQg
aXRzIGFzc29jaWF0ZWQNCj4gaGVscGVycy4NCj4gDQo+IExldCdzIG1vdmUgdGhlbSBpbiBvdXIg
ZHJpdmVyIGhlYWRlci4NCj4gDQo+IFJldmlld2VkLWJ5OiBKYXZpZXIgTWFydGluZXogQ2FuaWxs
YXMgPGphdmllcm1AcmVkaGF0LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+DQoNClJldmlld2VkLWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBp
Z2FsaWEuY29tPg0KDQpCZXN0IFJlZ2FyZHMsDQotIE1hw61yYSBDYW5hbA0KDQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmggfCAyMyArKysrKysrKysrKysrKysrKysrKysr
Kw0KPiAgZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfa21zLmMgfCAyNSArKystLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDIyIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Rydi5o
IGIvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmgNCj4gaW5kZXggNmFmNjE1YzJlYjY1Li4w
NTFjMmUzYjZkNDMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Rydi5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Rydi5oDQo+IEBAIC0zNTUsNiArMzU1
LDI5IEBAIHN0cnVjdCB2YzRfaHZzIHsNCj4gIAlib29sIHZjNV9oZG1pX2VuYWJsZV80MDk2Ynky
MTYwOw0KPiAgfTsNCj4gIA0KPiArI2RlZmluZSBIVlNfTlVNX0NIQU5ORUxTIDMNCj4gKw0KPiAr
c3RydWN0IHZjNF9odnNfc3RhdGUgew0KPiArCXN0cnVjdCBkcm1fcHJpdmF0ZV9zdGF0ZSBiYXNl
Ow0KPiArCXVuc2lnbmVkIGxvbmcgY29yZV9jbG9ja19yYXRlOw0KPiArDQo+ICsJc3RydWN0IHsN
Cj4gKwkJdW5zaWduZWQgaW5fdXNlOiAxOw0KPiArCQl1bnNpZ25lZCBsb25nIGZpZm9fbG9hZDsN
Cj4gKwkJc3RydWN0IGRybV9jcnRjX2NvbW1pdCAqcGVuZGluZ19jb21taXQ7DQo+ICsJfSBmaWZv
X3N0YXRlW0hWU19OVU1fQ0hBTk5FTFNdOw0KPiArfTsNCj4gKw0KPiArc3RhdGljIGlubGluZSBz
dHJ1Y3QgdmM0X2h2c19zdGF0ZSAqDQo+ICt0b192YzRfaHZzX3N0YXRlKGNvbnN0IHN0cnVjdCBk
cm1fcHJpdmF0ZV9zdGF0ZSAqcHJpdikNCj4gK3sNCj4gKwlyZXR1cm4gY29udGFpbmVyX29mKHBy
aXYsIHN0cnVjdCB2YzRfaHZzX3N0YXRlLCBiYXNlKTsNCj4gK30NCj4gKw0KPiArc3RydWN0IHZj
NF9odnNfc3RhdGUgKnZjNF9odnNfZ2V0X2dsb2JhbF9zdGF0ZShzdHJ1Y3QgZHJtX2F0b21pY19z
dGF0ZSAqc3RhdGUpOw0KPiArc3RydWN0IHZjNF9odnNfc3RhdGUgKnZjNF9odnNfZ2V0X29sZF9n
bG9iYWxfc3RhdGUoY29uc3Qgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKTsNCj4gK3N0
cnVjdCB2YzRfaHZzX3N0YXRlICp2YzRfaHZzX2dldF9uZXdfZ2xvYmFsX3N0YXRlKGNvbnN0IHN0
cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+ICsNCj4gIHN0cnVjdCB2YzRfcGxhbmUg
ew0KPiAgCXN0cnVjdCBkcm1fcGxhbmUgYmFzZTsNCj4gIH07DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vdmM0L3ZjNF9rbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2ttcy5j
DQo+IGluZGV4IDcyODI1NDVjNTRhMS4uNTNkOWYzMDQ2MGNmIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vdmM0L3ZjNF9rbXMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3Zj
NF9rbXMuYw0KPiBAQCAtMjUsOCArMjUsNiBAQA0KPiAgI2luY2x1ZGUgInZjNF9kcnYuaCINCj4g
ICNpbmNsdWRlICJ2YzRfcmVncy5oIg0KPiAgDQo+IC0jZGVmaW5lIEhWU19OVU1fQ0hBTk5FTFMg
Mw0KPiAtDQo+ICBzdHJ1Y3QgdmM0X2N0bV9zdGF0ZSB7DQo+ICAJc3RydWN0IGRybV9wcml2YXRl
X3N0YXRlIGJhc2U7DQo+ICAJc3RydWN0IGRybV9jb2xvcl9jdG0gKmN0bTsNCj4gQEAgLTM5LDIz
ICszNyw2IEBAIHRvX3ZjNF9jdG1fc3RhdGUoY29uc3Qgc3RydWN0IGRybV9wcml2YXRlX3N0YXRl
ICpwcml2KQ0KPiAgCXJldHVybiBjb250YWluZXJfb2YocHJpdiwgc3RydWN0IHZjNF9jdG1fc3Rh
dGUsIGJhc2UpOw0KPiAgfQ0KPiAgDQo+IC1zdHJ1Y3QgdmM0X2h2c19zdGF0ZSB7DQo+IC0Jc3Ry
dWN0IGRybV9wcml2YXRlX3N0YXRlIGJhc2U7DQo+IC0JdW5zaWduZWQgbG9uZyBjb3JlX2Nsb2Nr
X3JhdGU7DQo+IC0NCj4gLQlzdHJ1Y3Qgew0KPiAtCQl1bnNpZ25lZCBpbl91c2U6IDE7DQo+IC0J
CXVuc2lnbmVkIGxvbmcgZmlmb19sb2FkOw0KPiAtCQlzdHJ1Y3QgZHJtX2NydGNfY29tbWl0ICpw
ZW5kaW5nX2NvbW1pdDsNCj4gLQl9IGZpZm9fc3RhdGVbSFZTX05VTV9DSEFOTkVMU107DQo+IC19
Ow0KPiAtDQo+IC1zdGF0aWMgc3RydWN0IHZjNF9odnNfc3RhdGUgKg0KPiAtdG9fdmM0X2h2c19z
dGF0ZShjb25zdCBzdHJ1Y3QgZHJtX3ByaXZhdGVfc3RhdGUgKnByaXYpDQo+IC17DQo+IC0JcmV0
dXJuIGNvbnRhaW5lcl9vZihwcml2LCBzdHJ1Y3QgdmM0X2h2c19zdGF0ZSwgYmFzZSk7DQo+IC19
DQo+IC0NCj4gIHN0cnVjdCB2YzRfbG9hZF90cmFja2VyX3N0YXRlIHsNCj4gIAlzdHJ1Y3QgZHJt
X3ByaXZhdGVfc3RhdGUgYmFzZTsNCj4gIAl1NjQgaHZzX2xvYWQ7DQo+IEBAIC0xOTEsNyArMTcy
LDcgQEAgdmM0X2N0bV9jb21taXQoc3RydWN0IHZjNF9kZXYgKnZjNCwgc3RydWN0IGRybV9hdG9t
aWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQkgIFZDNF9TRVRfRklFTEQoY3RtX3N0YXRlLT5maWZvLCBT
Q0FMRVJfT0xFRE9GRlNfRElTUEZJRk8pKTsNCj4gIH0NCj4gIA0KPiAtc3RhdGljIHN0cnVjdCB2
YzRfaHZzX3N0YXRlICoNCj4gK3N0cnVjdCB2YzRfaHZzX3N0YXRlICoNCj4gIHZjNF9odnNfZ2V0
X25ld19nbG9iYWxfc3RhdGUoY29uc3Qgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQ0K
PiAgew0KPiAgCXN0cnVjdCB2YzRfZGV2ICp2YzQgPSB0b192YzRfZGV2KHN0YXRlLT5kZXYpOw0K
PiBAQCAtMjA0LDcgKzE4NSw3IEBAIHZjNF9odnNfZ2V0X25ld19nbG9iYWxfc3RhdGUoY29uc3Qg
c3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCXJldHVybiB0b192YzRfaHZzX3N0
YXRlKHByaXZfc3RhdGUpOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgc3RydWN0IHZjNF9odnNfc3Rh
dGUgKg0KPiArc3RydWN0IHZjNF9odnNfc3RhdGUgKg0KPiAgdmM0X2h2c19nZXRfb2xkX2dsb2Jh
bF9zdGF0ZShjb25zdCBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICB7DQo+ICAJ
c3RydWN0IHZjNF9kZXYgKnZjNCA9IHRvX3ZjNF9kZXYoc3RhdGUtPmRldik7DQo+IEBAIC0yMTcs
NyArMTk4LDcgQEAgdmM0X2h2c19nZXRfb2xkX2dsb2JhbF9zdGF0ZShjb25zdCBzdHJ1Y3QgZHJt
X2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJcmV0dXJuIHRvX3ZjNF9odnNfc3RhdGUocHJpdl9z
dGF0ZSk7DQo+ICB9DQo+ICANCj4gLXN0YXRpYyBzdHJ1Y3QgdmM0X2h2c19zdGF0ZSAqDQo+ICtz
dHJ1Y3QgdmM0X2h2c19zdGF0ZSAqDQo+ICB2YzRfaHZzX2dldF9nbG9iYWxfc3RhdGUoc3RydWN0
IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgew0KPiAgCXN0cnVjdCB2YzRfZGV2ICp2YzQg
PSB0b192YzRfZGV2KHN0YXRlLT5kZXYpOw0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
