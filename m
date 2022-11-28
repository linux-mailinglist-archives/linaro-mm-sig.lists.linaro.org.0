Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A272664C8CF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:18:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3D853E972
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:18:50 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 2BE6F3EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 19:49:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=KlyRebYW;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VAmDay8Qe2++NlnJo/s9zmage8EXAfl6yM10J36267M=; b=KlyRebYWJtdIAFWsb7JuDb5P47
	eGzD6qfJm+YoSe1Mind9vYfg8c0LAmobj0xdjme1b2dwc4aOVPUoR//F6U3oCLLNlgdN0gy3cCNqK
	j7DvEjZXnB78iiEHB21IKJMsSN8dbUOSjK/6p4D6N5c4hkhH8ajPdskiiHSr4wsmT+sKBBg8D0Okc
	f6+/KPwdvZNad7M0lxhyUbfVTFgrGHBR3eLBiI6PyJb2jdyK/rcpFDbom4RMC9ksCaFrfPBHZksUK
	R00qzvfLiPuSsbx/36a8/LWdceALEWrIStiv2aRmmpMVB9Qsv/Z3XI/O082SchT+1kx1l1XnimewP
	YIuUzNrQ==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozk7a-00AbVH-Fp; Mon, 28 Nov 2022 20:48:54 +0100
Message-ID: <eb318e69-3fc5-c041-cc17-e0549d6cf128@igalia.com>
Date: Mon, 28 Nov 2022 16:48:45 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-5-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-5-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: 2BE6F3EBC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,igalia.com:email,igalia.com:dkim];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
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
	URIBL_BLOCKED(0.00)[igalia.com:email,igalia.com:dkim,cerno.tech:email];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[igalia.com];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JHKJARBJEWRLY3FZ3EA6L7EAAO6Y6OYN
X-Message-ID-Hash: JHKJARBJEWRLY3FZ3EA6L7EAAO6Y6OYN
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:30 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 05/17] drm/tests: helpers: Create the device in another function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JHKJARBJEWRLY3FZ3EA6L7EAAO6Y6OYN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IFdlJ2xsIG5lZWQgaW4g
c29tZSB0ZXN0cyB0byBjb250cm9sIHdoZW4gdGhlIGRldmljZSBuZWVkcyB0byBiZSBhZGRlZA0K
PiBhbmQgcmVtb3ZlZCwgc28gbGV0J3Mgc3BsaXQgdGhlIGRldmljZSBjcmVhdGlvbiBmcm9tIHRo
ZSBEUk0gZGV2aWNlDQo+IGNyZWF0aW9uIGZ1bmN0aW9uLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
TWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+DQoNCkp1c3QgYSBzbWFsbCBuaXQgYmVs
b3csDQoNClJldmlld2VkLWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPg0KDQo+
ICANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVscGVy
X3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYw0K
PiBpbmRleCBiZTYxYTkyYjc5ZDIuLjQzOGIxZDQyYjg0MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3Rlc3RzL2RybV9wcm9iZV9oZWxwZXJfdGVzdC5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYw0KPiBAQCAtMTcsNiArMTcsNyBA
QA0KPiAgDQo+ICBzdHJ1Y3QgZHJtX3Byb2JlX2hlbHBlcl90ZXN0X3ByaXYgew0KPiAgCXN0cnVj
dCBkcm1fZGV2aWNlICpkcm07DQo+ICsJc3RydWN0IGRldmljZSAqZGV2Ow0KPiAgCXN0cnVjdCBk
cm1fY29ubmVjdG9yIGNvbm5lY3RvcjsNCj4gIH07DQo+ICANCj4gQEAgLTM5LDcgKzQwLDEwIEBA
IHN0YXRpYyBpbnQgZHJtX3Byb2JlX2hlbHBlcl90ZXN0X2luaXQoc3RydWN0IGt1bml0ICp0ZXN0
KQ0KPiAgCUtVTklUX0FTU0VSVF9OT1RfTlVMTCh0ZXN0LCBwcml2KTsNCj4gIAl0ZXN0LT5wcml2
ID0gcHJpdjsNCj4gIA0KPiAtCXByaXYtPmRybSA9IGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJt
X2RldmljZSh0ZXN0LA0KPiArCXByaXYtPmRldiA9IGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZGV2
aWNlKHRlc3QpOw0KPiArCUtVTklUX0FTU0VSVF9OT1RfRVJSX09SX05VTEwodGVzdCwgcHJpdi0+
ZGV2KTsNCj4gKw0KPiArCXByaXYtPmRybSA9IGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2Rl
dmljZSh0ZXN0LCBwcml2LT5kZXYsDQo+ICAJCQkJCQkgICAgICBEUklWRVJfTU9ERVNFVCB8IERS
SVZFUl9BVE9NSUMpOw0KPiAgCUtVTklUX0FTU0VSVF9OT1RfRVJSX09SX05VTEwodGVzdCwgcHJp
di0+ZHJtKTsNCj4gIA0KPiBAQCAtNTUsNiArNTksMTMgQEAgc3RhdGljIGludCBkcm1fcHJvYmVf
aGVscGVyX3Rlc3RfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QpDQo+ICAJcmV0dXJuIDA7DQo+ICB9
DQo+ICANCj4gK3N0YXRpYyB2b2lkIGRybV9wcm9iZV9oZWxwZXJfdGVzdF9leGl0KHN0cnVjdCBr
dW5pdCAqdGVzdCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX3Byb2JlX2hlbHBlcl90ZXN0X3ByaXYg
KnByaXYgPSB0ZXN0LT5wcml2OzsNCg0KVGhlcmUgYXJlIHR3byBzZW1pY29sb25zIGJ5IHRoZSBl
bmQgb2YgdGhpcyBzdGF0ZW1lbnQuDQoNCkJlc3QgUmVnYXJkcywNCi0gTWHDrXJhIENhbmFsDQoN
Cj4gKw0KPiArCWRybV9rdW5pdF9oZWxwZXJfZnJlZV9kZXZpY2UodGVzdCwgcHJpdi0+ZGV2KTsN
Cj4gK30NCj4gKw0KPiAgdHlwZWRlZiBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqKCpleHBlY3Rl
ZF9tb2RlX2Z1bmNfdCkoc3RydWN0IGRybV9kZXZpY2UgKik7DQo+ICANCj4gIHN0cnVjdCBkcm1f
Y29ubmVjdG9yX2hlbHBlcl90dl9nZXRfbW9kZXNfdGVzdCB7DQo+IEBAIC0xOTUsNiArMjA2LDcg
QEAgc3RhdGljIHN0cnVjdCBrdW5pdF9jYXNlIGRybV90ZXN0X2Nvbm5lY3Rvcl9oZWxwZXJfdHZf
Z2V0X21vZGVzX3Rlc3RzW10gPSB7DQo+ICBzdGF0aWMgc3RydWN0IGt1bml0X3N1aXRlIGRybV90
ZXN0X2Nvbm5lY3Rvcl9oZWxwZXJfdHZfZ2V0X21vZGVzX3N1aXRlID0gew0KPiAgCS5uYW1lID0g
ImRybV9jb25uZWN0b3JfaGVscGVyX3R2X2dldF9tb2RlcyIsDQo+ICAJLmluaXQgPSBkcm1fcHJv
YmVfaGVscGVyX3Rlc3RfaW5pdCwNCj4gKwkuZXhpdCA9IGRybV9wcm9iZV9oZWxwZXJfdGVzdF9l
eGl0LA0KPiAgCS50ZXN0X2Nhc2VzID0gZHJtX3Rlc3RfY29ubmVjdG9yX2hlbHBlcl90dl9nZXRf
bW9kZXNfdGVzdHMsDQo+ICB9Ow0KPiAgDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
a3VuaXRfaGVscGVycy5oIGIvaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaA0KPiBpbmRl
eCA2YzEyYjE0MjZiYTAuLmI0Mjc3ZmU5MmMzOCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0v
ZHJtX2t1bml0X2hlbHBlcnMuaA0KPiArKysgYi9pbmNsdWRlL2RybS9kcm1fa3VuaXRfaGVscGVy
cy5oDQo+IEBAIC02LDggKzYsMTEgQEANCj4gIHN0cnVjdCBkcm1fZGV2aWNlOw0KPiAgc3RydWN0
IGt1bml0Ow0KPiAgDQo+ICtzdHJ1Y3QgZGV2aWNlICpkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2Rl
dmljZShzdHJ1Y3Qga3VuaXQgKnRlc3QpOw0KPiArdm9pZCBkcm1fa3VuaXRfaGVscGVyX2ZyZWVf
ZGV2aWNlKHN0cnVjdCBrdW5pdCAqdGVzdCwgc3RydWN0IGRldmljZSAqZGV2KTsNCj4gKw0KPiAg
c3RydWN0IGRybV9kZXZpY2UgKg0KPiAtZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kcm1fZGV2aWNl
KHN0cnVjdCBrdW5pdCAqdGVzdCwNCj4gK2RybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2Rldmlj
ZShzdHJ1Y3Qga3VuaXQgKnRlc3QsIHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gIAkJCQkgIHUzMiBm
ZWF0dXJlcyk7DQo+ICANCj4gICNlbmRpZiAvLyBEUk1fS1VOSVRfSEVMUEVSU19IXw0KPiANCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
