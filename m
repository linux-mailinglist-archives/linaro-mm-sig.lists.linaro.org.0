Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 252A763F391
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:17:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3551A3F2E5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:17:56 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 73E253F493
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="J VR7l8l";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="s azvw4L";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.nyi.internal (Postfix) with ESMTP id 57D5C58039C;
	Thu,  1 Dec 2022 10:15:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Thu, 01 Dec 2022 10:15:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907701; x=
	1669914901; bh=qBaPjNlhfE/YsxDnTij+FTizhNUE0G6itXL5vBTjAgk=; b=J
	VR7l8lzIidl9UfjFTfDJb2brNDPhKm0kR2CaE3a7Syj31pHXGL7gvuDluJJBFuTU
	dshXclsY23T9WKOmrdON75rKQvXw36WQ0vKLiP+/HechKj21t4KM1lKjZinyvR8Q
	hTaAhMLvBxQKlt5rYUoMx3if4U9in7Yowc1C+lDHMad6uOVohKujChxmVK7AlQAo
	a8gmGVBoATF+0DBW7ZBzhhrJRI/kkcnAPH5eIedihpZYm1WuBi99LvCcdDKufZjI
	etsk8HneWcnKzvmwmKb10CHeQOL2HeJcdWlQTmL77LtnuhKTRThHSaY9vCvG99hl
	dD+DdlzxyI5l/LaenjwiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907701; x=
	1669914901; bh=qBaPjNlhfE/YsxDnTij+FTizhNUE0G6itXL5vBTjAgk=; b=s
	azvw4LtEiLDfu0bdWTSHGQjCZCW6RLe3daKUDcUvPyZ1Kg0SV8PPwRiwco01o4ln
	dLRKNRcrFrNmQOoE7vnMenmzedCBQ55C0I5lcioONwcMgIxMeWFuIVG81V1DukDQ
	97WbOQd8L5/TNc2EsyyL0YkU5e43hgUcGAWV+oRiTcFN0iQBOfA8vpPIdMBDNFCz
	836YoSwR0y27rRRGLt1sYEdS3rYs2osfqtG3h4JSUUdQXm812HML6aMBVKXqu+ac
	op99jJvU6h6DaS4LXJAOTyUuQgggMfMyWTiO8Sfwms2d4GGU1h7XVH6kLhPQzGKB
	7P9FYrQ5dXozpYoU/MOdg==
X-ME-Sender: <xms:9cSIY2IZbAIyyguxO-6jQITqmrpYphvq09OqzeoOJk8tOYon_d8vfA>
    <xme:9cSIY-L2ItExkoNBlUMiZ-rq-K7_-aADsAjzqK4xQfNIJAwh7U684faToLs9AE3VF
    aY5cY-JybfZ5Kze2iY>
X-ME-Received: <xmr:9cSIY2uCagEpRn8sWtDFTOqVPAOFjyB1GwC5Op15D2XvyWyPpOqM1nImnK8lA_FY2Lhbfhdhwtlkuw_7qW6nMTmEKncXoArWhygzpw1_3FdiOw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:9cSIY7YVDZUJSnysa9LgSbAJ9VZouSuN_jF5ElfXAMdvgoHukk7f-g>
    <xmx:9cSIY9aGH0w73WzaVkFAcKbLTTRHQsq6vWEZx5lNmc7KgicwOq-0vg>
    <xmx:9cSIY3BJvx4tq_qP2xkxHxqT04IXyV1fHg2BEYR_UwlpgkflHf0o5Q>
    <xmx:9cSIY-6XtDZS_hlm5J6XGTi_7RqY7UtwbVBQKeEBDi5hEZhl10VfOQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:00 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-9-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2324; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=yYpdpN4Z7ig+2ZlJ/roXFAY7P6KOCPfO+JwX1aWrG0I=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzQcXvsLsQce4FRpmRmSbbLohnvmpyKTFYkHtuzlOJXQ
 GK7SUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgIm8fcPI8Db13+MnbZ/5bpdtXaGyon
 JD2/UjNnyc/55ekWAUDS3dw8XwV1x3Vf7qnULiidHRC3YpXPQxCvgQfjl0d3YYt/nHXLUH/AA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 73E253F493
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,igalia.com:email,messagingengine.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JW2WTIUDQFNAOTB6NZO5ABGMEGH3LD7Q
X-Message-ID-Hash: JW2WTIUDQFNAOTB6NZO5ABGMEGH3LD7Q
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 09/20] drm/tests: helpers: Make sure the device is bound
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JW2WTIUDQFNAOTB6NZO5ABGMEGH3LD7Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

VGhlIGRldmljZSBtYW5hZ2VkIHJlc291cmNlcyBhcmUgZnJlZWQgd2hlbiB0aGUgZGV2aWNlIGlz
IGRldGFjaGVkLCBzbw0KaXQgaGFzIHRvIGJlIGJvdW5kIGluIHRoZSBmaXJzdCBwbGFjZS4NCg0K
TGV0J3MgY3JlYXRlIGEgZmFrZSBkcml2ZXIgdGhhdCB3ZSB3aWxsIGJpbmQgdG8gb3VyIGZha2Ug
ZGV2aWNlIHRvDQpiZW5lZml0IGZyb20gdGhlIGRldmljZSBtYW5hZ2VkIGNsZWFudXBzIGluIG91
ciB0ZXN0cy4NCg0KUmV2aWV3ZWQtYnk6IE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+
DQpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4NCi0tLQ0K
IGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jIHwgMjYgKysrKysrKysr
KysrKysrKysrKysrKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5p
dF9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0K
aW5kZXggYjY2Y2U3Nzk1MTFiLi45YmZkM2NiOWNkZTEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL3Rl
c3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCkBAIC0xOCwxMiArMTgsMzIgQEAgc3RydWN0IGt1bml0
X2RldiB7DQogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9jb25maWdfZnVuY3MgZHJtX21v
ZGVfY29uZmlnX2Z1bmNzID0gew0KIH07DQogDQorc3RhdGljIGludCBmYWtlX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQorew0KKwlyZXR1cm4gMDsNCit9DQorDQorc3RhdGlj
IGludCBmYWtlX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KK3sNCisJcmV0
dXJuIDA7DQorfQ0KKw0KK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGZha2VfcGxhdGZv
cm1fZHJpdmVyID0gew0KKwkucHJvYmUJPSBmYWtlX3Byb2JlLA0KKwkucmVtb3ZlCT0gZmFrZV9y
ZW1vdmUsDQorCS5kcml2ZXIgPSB7DQorCQkubmFtZQk9IEtVTklUX0RFVklDRV9OQU1FLA0KKwl9
LA0KK307DQorDQogLyoqDQogICogZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kZXZpY2UgLSBBbGxv
Y2F0ZSBhIG1vY2sgZGV2aWNlIGZvciBhIEtVbml0IHRlc3QNCiAgKiBAdGVzdDogVGhlIHRlc3Qg
Y29udGV4dCBvYmplY3QNCiAgKg0KICAqIFRoaXMgYWxsb2NhdGVzIGEgZmFrZSBzdHJ1Y3QgJmRl
dmljZSB0byBjcmVhdGUgYSBtb2NrIGZvciBhIEtVbml0DQotICogdGVzdC4NCisgKiB0ZXN0LiBU
aGUgZGV2aWNlIHdpbGwgYWxzbyBiZSBib3VuZCB0byBhIGZha2UgZHJpdmVyLiBJdCB3aWxsIHRo
dXMgYmUNCisgKiBhYmxlIHRvIGxldmVyYWdlIHRoZSB1c3VhbCBpbmZyYXN0cnVjdHVyZSBhbmQg
bW9zdCBub3RhYmx5IHRoZQ0KKyAqIGRldmljZS1tYW5hZ2VkIHJlc291cmNlcyBqdXN0IGxpa2Ug
YSAicmVhbCIgZGV2aWNlLg0KICAqDQogICogQ2FsbGVycyBuZWVkIHRvIG1ha2Ugc3VyZSBkcm1f
a3VuaXRfaGVscGVyX2ZyZWVfZGV2aWNlKCkgb24gdGhlDQogICogZGV2aWNlIHdoZW4gZG9uZS4N
CkBAIC0zNiw2ICs1Niw5IEBAIHN0cnVjdCBkZXZpY2UgKmRybV9rdW5pdF9oZWxwZXJfYWxsb2Nf
ZGV2aWNlKHN0cnVjdCBrdW5pdCAqdGVzdCkNCiAJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
djsNCiAJaW50IHJldDsNCiANCisJcmV0ID0gcGxhdGZvcm1fZHJpdmVyX3JlZ2lzdGVyKCZmYWtl
X3BsYXRmb3JtX2RyaXZlcik7DQorCUtVTklUX0FTU0VSVF9FUSh0ZXN0LCByZXQsIDApOw0KKw0K
IAlwZGV2ID0gcGxhdGZvcm1fZGV2aWNlX2FsbG9jKEtVTklUX0RFVklDRV9OQU1FLCBQTEFURk9S
TV9ERVZJRF9OT05FKTsNCiAJS1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0LCBwZGV2
KTsNCiANCkBAIC01OCw2ICs4MSw3IEBAIHZvaWQgZHJtX2t1bml0X2hlbHBlcl9mcmVlX2Rldmlj
ZShzdHJ1Y3Qga3VuaXQgKnRlc3QsIHN0cnVjdCBkZXZpY2UgKmRldikNCiAJc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldiA9IHRvX3BsYXRmb3JtX2RldmljZShkZXYpOw0KIA0KIAlwbGF0Zm9y
bV9kZXZpY2VfdW5yZWdpc3RlcihwZGV2KTsNCisJcGxhdGZvcm1fZHJpdmVyX3VucmVnaXN0ZXIo
JmZha2VfcGxhdGZvcm1fZHJpdmVyKTsNCiB9DQogRVhQT1JUX1NZTUJPTF9HUEwoZHJtX2t1bml0
X2hlbHBlcl9mcmVlX2RldmljZSk7DQogDQoNCi0tIA0KYjQgMC4xMC4xDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
