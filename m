Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB1863F398
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:18:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CD9B3F485
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:18:58 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 8A4B83F46F
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="h RdhfTM";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="m 5vVkZv";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id 6EAC558039C;
	Thu,  1 Dec 2022 10:15:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 01 Dec 2022 10:15:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907709; x=
	1669914909; bh=4qyLjNj9I2PgaCEUKxaTESctL+iP/Fgu4safJAulzr8=; b=h
	RdhfTMROoBbPs8839WQ0SWSjNFTS9vGwidZWm4ZEtSdUxyYC88tdJC/8ytD2kc7x
	m5aHgpO+5QjWtwc95aUf3wsVPjCmXTJgHrug9tigVH27VkGbXl+c6z3/oDbtZj/a
	4QcMXlyPxaBSzHWkqfdD/uE09pmzS5E3UCJ/TyyOm0yFQVx2DaCFk0kLA4XMOLfg
	UJxRYQ6xygwujLbguaHCRdlcCVbNaZ/67Q4+mr76NyVRjCVWog8B3nQmvfAu8lwG
	ork8dePz1MHU8yUDytRY+RumLfvB7NPKUZ3LiYJPpfTYNW1OkUykPTnWVtKmGWMY
	dlMqBN7sfdgm5OXuV/+cQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907709; x=
	1669914909; bh=4qyLjNj9I2PgaCEUKxaTESctL+iP/Fgu4safJAulzr8=; b=m
	5vVkZv+YF2cF5cvuSZF2XewNsLmU4p/2V26fdCC7/HPA3g78kynlcyL5oeLCVurj
	iVSgt/0QQ6ekSyk6SAI35XPpmXZkLKsXzSPjb/6AZUSf0Je7XRJ0ZWG77lDAFuhb
	JEGPiUYXxGQXTLv6ElVYuu+T5rOXQ9vgEz5KxxZGdU4w/n8nTEffttUJrUAngdzp
	nvSiZyuQbR8XjXMxQwlRg4ughUxleS8FXuN58XUOViCmLm9W38ALPfEPAzZu4im8
	LR3prZOs6mWvrQIAezG6JiUPrG+E2+2yF1ydcI1u589JvRBPjVfO8YQLz0CvbPsy
	DUHxht2Rjm+QpmvRa2/Ig==
X-ME-Sender: <xms:-8SIY6KY7xaaDsbxd7uUJ6dvRGcvv7Z5OvkuV6rkYv7PaxBTlbjo1g>
    <xme:-8SIYyKlc4Dr5PbzDF4fYsLjLEPO87AZLuUEyRV_yakwACfHQD9OJxB63Iw-MkEnF
    7XIDDwVVD5IGygYEmc>
X-ME-Received: <xmr:-8SIY6szUkYIzlWEHCDJtrTsW1JMKJt7dcG9fATX3VhiMsm3ceZRB5bV3viCizMN3uHUK9dL4RjshK4R5u7nohtbYfbI3Un6rkKfh5Tix9ssyQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:-8SIY_YN8_v2rxUEZTfO40En_UWPeCc0-aPCJs6e83fEI1ROstRKXg>
    <xmx:-8SIYxa6ExQtbKu_UOgm92JeDe06rWfzeUQTqoZDoIaFT9_i6NhDjQ>
    <xmx:-8SIY7CbxGY_R5FocKFMIBeFR8V4TS96zHVlXe-y_3pAGkSMRtix2Q>
    <xmx:_cSIYy4lUQIavrd6aQ451EZWo1ubCrsothpFmt2OCLAQSwBR-O7rFw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:06 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-12-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3018; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=Av6gZFakHRoxX8sJF2gVpTz9tFILeIP7wlDUh3ydDfM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzSYklY0LNCfMfewxvSCMq/6LkmNA0ZG9pLeNxcZ74kO
 lHvWUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgIlYeTMydBSruR94OKPgvlIbz+tbXb
 Vrr7u6v71tmDaf6ymP+84UM0aG7iwrprVTu4W7duvsePtixuJ1/j+422Qj3kreLrxW8a2MFQA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 8A4B83F46F
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.60 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[messagingengine.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.230:c];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	RCVD_IN_DNSWL_LOW(-0.10)[66.111.4.230:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,ffwll.ch,suse.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim,igalia.com:email];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[messagingengine.com:dkim,new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,igalia.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: F23ZTPNSQ4AIQ7V4OMWKL5S3JM6YCW6Q
X-Message-ID-Hash: F23ZTPNSQ4AIQ7V4OMWKL5S3JM6YCW6Q
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 12/20] drm/tests: Add a test for DRM managed actions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F23ZTPNSQ4AIQ7V4OMWKL5S3JM6YCW6Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

RFJNLW1hbmFnZWQgYWN0aW9ucyBhcmUgc3VwcG9zZWQgdG8gYmUgcmFuIHdoZW5ldmVyIHRoZSBk
ZXZpY2UgaXMNCnJlbGVhc2VkLiBMZXQncyBpbnRyb2R1Y2UgYSBiYXNpYyB1bml0IHRlc3QgdG8g
bWFrZSBzdXJlIGl0IGhhcHBlbnMuDQoNClJldmlld2VkLWJ5OiBKYXZpZXIgTWFydGluZXogQ2Fu
aWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4NClJldmlld2VkLWJ5OiBNYcOtcmEgQ2FuYWwgPG1j
YW5hbEBpZ2FsaWEuY29tPg0KU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNl
cm5vLnRlY2g+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvTWFrZWZpbGUgICAgICAgICAg
IHwgIDEgKw0KIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fbWFuYWdlZF90ZXN0LmMgfCA3MSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIDIgZmlsZXMgY2hhbmdlZCwgNzIgaW5z
ZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL01ha2VmaWxl
IGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL01ha2VmaWxlDQppbmRleCBlZjE0YmQ0ODExMzkuLmFh
ZjM1N2UyOWM2NSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9NYWtlZmlsZQ0K
KysrIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL01ha2VmaWxlDQpAQCAtMTIsNiArMTIsNyBAQCBv
YmotJChDT05GSUdfRFJNX0tVTklUX1RFU1QpICs9IFwNCiAJZHJtX2Zvcm1hdF9oZWxwZXJfdGVz
dC5vIFwNCiAJZHJtX2Zvcm1hdF90ZXN0Lm8gXA0KIAlkcm1fZnJhbWVidWZmZXJfdGVzdC5vIFwN
CisJZHJtX21hbmFnZWRfdGVzdC5vIFwNCiAJZHJtX21tX3Rlc3QubyBcDQogCWRybV9tb2Rlc190
ZXN0Lm8gXA0KIAlkcm1fcGxhbmVfaGVscGVyX3Rlc3QubyBcDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3Rlc3RzL2RybV9tYW5hZ2VkX3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0
cy9kcm1fbWFuYWdlZF90ZXN0LmMNCm5ldyBmaWxlIG1vZGUgMTAwNjQ0DQppbmRleCAwMDAwMDAw
MDAwMDAuLjE2NTJkY2ExMWQzMA0KLS0tIC9kZXYvbnVsbA0KKysrIGIvZHJpdmVycy9ncHUvZHJt
L3Rlc3RzL2RybV9tYW5hZ2VkX3Rlc3QuYw0KQEAgLTAsMCArMSw3MSBAQA0KKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQorDQorI2luY2x1ZGUgPGRybS9kcm1fZHJ2Lmg+DQor
I2luY2x1ZGUgPGRybS9kcm1fa3VuaXRfaGVscGVycy5oPg0KKyNpbmNsdWRlIDxkcm0vZHJtX21h
bmFnZWQuaD4NCisNCisjaW5jbHVkZSA8a3VuaXQvcmVzb3VyY2UuaD4NCisNCisjaW5jbHVkZSA8
bGludXgvZGV2aWNlLmg+DQorDQorLyogT3VnaHQgdG8gYmUgZW5vdWdoIGZvciBhbnlib2R5ICov
DQorI2RlZmluZSBURVNUX1RJTUVPVVRfTVMJMTAwDQorDQorc3RydWN0IG1hbmFnZWRfdGVzdF9w
cml2IHsNCisJYm9vbCBhY3Rpb25fZG9uZTsNCisJd2FpdF9xdWV1ZV9oZWFkX3QgYWN0aW9uX3dx
Ow0KK307DQorDQorc3RhdGljIHZvaWQgZHJtX2FjdGlvbihzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
LCB2b2lkICpwdHIpDQorew0KKwlzdHJ1Y3QgbWFuYWdlZF90ZXN0X3ByaXYgKnByaXYgPSBwdHI7
DQorDQorCXByaXYtPmFjdGlvbl9kb25lID0gdHJ1ZTsNCisJd2FrZV91cF9pbnRlcnJ1cHRpYmxl
KCZwcml2LT5hY3Rpb25fd3EpOw0KK30NCisNCitzdGF0aWMgdm9pZCBkcm1fdGVzdF9tYW5hZ2Vk
X3J1bl9hY3Rpb24oc3RydWN0IGt1bml0ICp0ZXN0KQ0KK3sNCisJc3RydWN0IG1hbmFnZWRfdGVz
dF9wcml2ICpwcml2Ow0KKwlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtOw0KKwlzdHJ1Y3QgZGV2aWNl
ICpkZXY7DQorCWludCByZXQ7DQorDQorCXByaXYgPSBrdW5pdF9remFsbG9jKHRlc3QsIHNpemVv
ZigqcHJpdiksIEdGUF9LRVJORUwpOw0KKwlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRl
c3QsIHByaXYpOw0KKwlpbml0X3dhaXRxdWV1ZV9oZWFkKCZwcml2LT5hY3Rpb25fd3EpOw0KKw0K
KwlkZXYgPSBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RldmljZSh0ZXN0KTsNCisJS1VOSVRfQVNT
RVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0LCBkZXYpOw0KKw0KKwlkcm0gPSBfX2RybV9rdW5pdF9o
ZWxwZXJfYWxsb2NfZHJtX2RldmljZSh0ZXN0LCBkZXYsIHNpemVvZigqZHJtKSwgMCwgRFJJVkVS
X01PREVTRVQpOw0KKwlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIGRybSk7DQor
DQorCXJldCA9IGRybW1fYWRkX2FjdGlvbl9vcl9yZXNldChkcm0sIGRybV9hY3Rpb24sIHByaXYp
Ow0KKwlLVU5JVF9FWFBFQ1RfRVEodGVzdCwgcmV0LCAwKTsNCisNCisJcmV0ID0gZHJtX2Rldl9y
ZWdpc3Rlcihkcm0sIDApOw0KKwlLVU5JVF9BU1NFUlRfRVEodGVzdCwgcmV0LCAwKTsNCisNCisJ
ZHJtX2Rldl91bnJlZ2lzdGVyKGRybSk7DQorCWRybV9rdW5pdF9oZWxwZXJfZnJlZV9kZXZpY2Uo
dGVzdCwgZGV2KTsNCisNCisJcmV0ID0gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlX3RpbWVvdXQo
cHJpdi0+YWN0aW9uX3dxLCBwcml2LT5hY3Rpb25fZG9uZSwNCisJCQkJCSAgICAgICBtc2Vjc190
b19qaWZmaWVzKFRFU1RfVElNRU9VVF9NUykpOw0KKwlLVU5JVF9FWFBFQ1RfR1QodGVzdCwgcmV0
LCAwKTsNCit9DQorDQorc3RhdGljIHN0cnVjdCBrdW5pdF9jYXNlIGRybV9tYW5hZ2VkX3Rlc3Rz
W10gPSB7DQorCUtVTklUX0NBU0UoZHJtX3Rlc3RfbWFuYWdlZF9ydW5fYWN0aW9uKSwNCisJe30N
Cit9Ow0KKw0KK3N0YXRpYyBzdHJ1Y3Qga3VuaXRfc3VpdGUgZHJtX21hbmFnZWRfdGVzdF9zdWl0
ZSA9IHsNCisJLm5hbWUgPSAiZHJtLXRlc3QtbWFuYWdlZCIsDQorCS50ZXN0X2Nhc2VzID0gZHJt
X21hbmFnZWRfdGVzdHMNCit9Ow0KKw0KK2t1bml0X3Rlc3Rfc3VpdGUoZHJtX21hbmFnZWRfdGVz
dF9zdWl0ZSk7DQorDQorTU9EVUxFX0FVVEhPUigiTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5v
LnRlY2g+Iik7DQorTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOw0KDQotLSANCmI0IDAuMTAuMQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
