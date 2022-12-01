Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F6363F39F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:20:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B2E23F2E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:20:02 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id A79B73F4C3
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="g ybvHvV";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="R xn5GcI";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.nyi.internal (Postfix) with ESMTP id 8D0215803A4;
	Thu,  1 Dec 2022 10:15:16 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 01 Dec 2022 10:15:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907716; x=
	1669914916; bh=5wSvW/DZx0aI6uP1+7/AFBFIuW+waBnmd9lfUJ/y8M8=; b=g
	ybvHvVqlnFvZ6msmZXOcssmsa5KOeB227L+9sg68rT1AtmWWXKEbSX3lCJIOLQu2
	Q8k7v8jzgkU0pdf8TMbYeOmGxaYWjGx0FERuaIETm23ssC6vEy2cH5m2vMYNxdlD
	N5J8W3a1srB3v56psR15zIn5uHHn9ModU/vAet+7Ifa7yl+hxkO8Ft/enIRPlAic
	UhN/F/qw/BDLlmaErxMC6BIH2EYo58qbeTX36QAaUhnCP6EGno4uJqr6qDHkuSSv
	WT4TzMYD1mlNlM3iFnBB6elTWsTJIih8DSPDcR/CCSLu2z1cMolD7fFudeRfmo1J
	FNApVy5N2+GgCzlKJ0vlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907716; x=
	1669914916; bh=5wSvW/DZx0aI6uP1+7/AFBFIuW+waBnmd9lfUJ/y8M8=; b=R
	xn5GcImQQ5PITwjW/nIVSSv/NFiTcb8LODJwUDNu8mHtUtt06bJrfudWOsKC3A7h
	q0VjLjh31c6tuC7io4afHRZmCdb0/nvfAk8jVgPznx3fh9iCopASToIR+vFmkq29
	c5MVx6s8ecC7JVNxdGG+FGaw47PPNndnjoHJpnXUXj4yifLIjYslbckTRccY+33G
	33WAcb85GqzLQ1nbqm9iJyW8NRzExM9JW7tDz8+TBVzKG2RMNHHmToXxpamgO8iZ
	ymlg2jbHZCxfmHqlTuoefGYtj4qzxOohcQYUSzprFnVQachNsUaFIvI/XKDx9lI3
	fzvROsWRA6+ZBbNRm0Icw==
X-ME-Sender: <xms:BMWIY0nCfEnHuNF70ZAQhW3DyqW1aIaLELKaQJR3UKnKm95bsb6UFg>
    <xme:BMWIYz1r7hHVlQ9t5hC5KzMm0tGu3rZuEB5fUBrXw2I9myW-r7l1HyQ_ok0bjiiI3
    2qZr9zQdxhkkaL1aDo>
X-ME-Received: <xmr:BMWIYyrPeJBW5b3Lw6Juw3xSa8Z3J1dtbbi62q9BXQ8KalZSMTW71dsupp4vl2seo3RuuPANKPCowPFrvJHI9tQRQAHkqCbnGPA6bt7ut1WdgA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:BMWIYwldK7ngUebqAchEjJHgnKUQ0ZcOxP4YurwvO44cQdXSPvDVsw>
    <xmx:BMWIYy13nJs_WRwGpehymofYE-MYIwN68t98RJY4t5A1d0yeII3Cxg>
    <xmx:BMWIY3vIEznS1SCgeNmp_pSxlhqszELlXUSeOCqbTfRDoOLthHCwvA>
    <xmx:BMWIY_3rcvDo7_AaAbrcoSnVWcsKHv7TZtzZ2fQxX6RD7USX-KxjEw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:14 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-15-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2364; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=5RCNFvFyyWlLaGm7Yfw8HK8YEA+rYifInFFZfiFrkV4=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzTuVE93ZVqdckBi0sqHPOsEGRa9zObbuXPZnQlXV92/
 lHRWrKOUhUGMi0FWTJElRth8SdypWa872fjmwcxhZQIZwsDFKQATKa1iZFjmx1mbx+OzeXZjo53K2l
 DfdbfV6ya/YlzZs7Jg5j4FjpkMv5hvTp3JEjI70tOg50Zgep7ThRWXHaeJck8TUghaybJnOQsA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: A79B73F4C3
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,igalia.com:email,messagingengine.com:dkim];
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
Message-ID-Hash: AJB3OFXRKSGL27L23HRKAHXPSFMRLNSN
X-Message-ID-Hash: AJB3OFXRKSGL27L23HRKAHXPSFMRLNSN
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 15/20] drm/vc4: crtc: Make encoder lookup helper public
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AJB3OFXRKSGL27L23HRKAHXPSFMRLNSN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

V2UnbGwgbmVlZCBhIGZ1bmN0aW9uIHRoYXQgbG9va3MgdXAgYW4gZW5jb2RlciBieSBpdHMgdmM0
X2VuY29kZXJfdHlwZS4NClN1Y2ggYSBmdW5jdGlvbiBpcyBhbHJlYWR5IHByZXNlbnQgaW4gdGhl
IENSVEMgY29kZSwgc28gbGV0J3MgbWFrZSBpdA0KcHVibGljIHNvIHRoYXQgd2UgY2FuIHJldXNl
IGl0IGluIHRoZSB1bml0IHRlc3RzLg0KDQpSZXZpZXdlZC1ieTogSmF2aWVyIE1hcnRpbmV6IENh
bmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+DQpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxt
Y2FuYWxAaWdhbGlhLmNvbT4NClNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZUBj
ZXJuby50ZWNoPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfY3J0Yy5jIHwgMTcgKy0t
LS0tLS0tLS0tLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaCAgfCAxNiArKysr
KysrKysrKysrKysrDQogMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxNiBkZWxl
dGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2NydGMuYyBi
L2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2NydGMuYw0KaW5kZXggNWY3ZjUwYWRkNDZlLi4xOTVk
MmI2MTgzOWQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9jcnRjLmMNCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2NydGMuYw0KQEAgLTQ4NiwyMSArNDg2LDYgQEAg
c3RhdGljIGludCB2YzRfY3J0Y19kaXNhYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywNCiAJcmV0
dXJuIDA7DQogfQ0KIA0KLXN0YXRpYyBzdHJ1Y3QgZHJtX2VuY29kZXIgKnZjNF9jcnRjX2dldF9l
bmNvZGVyX2J5X3R5cGUoc3RydWN0IGRybV9jcnRjICpjcnRjLA0KLQkJCQkJCQllbnVtIHZjNF9l
bmNvZGVyX3R5cGUgdHlwZSkNCi17DQotCXN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcjsNCi0N
Ci0JZHJtX2Zvcl9lYWNoX2VuY29kZXIoZW5jb2RlciwgY3J0Yy0+ZGV2KSB7DQotCQlzdHJ1Y3Qg
dmM0X2VuY29kZXIgKnZjNF9lbmNvZGVyID0gdG9fdmM0X2VuY29kZXIoZW5jb2Rlcik7DQotDQot
CQlpZiAodmM0X2VuY29kZXItPnR5cGUgPT0gdHlwZSkNCi0JCQlyZXR1cm4gZW5jb2RlcjsNCi0J
fQ0KLQ0KLQlyZXR1cm4gTlVMTDsNCi19DQotDQogaW50IHZjNF9jcnRjX2Rpc2FibGVfYXRfYm9v
dChzdHJ1Y3QgZHJtX2NydGMgKmNydGMpDQogew0KIAlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtID0g
Y3J0Yy0+ZGV2Ow0KQEAgLTUzNiw3ICs1MjEsNyBAQCBpbnQgdmM0X2NydGNfZGlzYWJsZV9hdF9i
b290KHN0cnVjdCBkcm1fY3J0YyAqY3J0YykNCiANCiAJcHZfZGF0YSA9IHZjNF9jcnRjX3RvX3Zj
NF9wdl9kYXRhKHZjNF9jcnRjKTsNCiAJZW5jb2Rlcl90eXBlID0gcHZfZGF0YS0+ZW5jb2Rlcl90
eXBlc1tlbmNvZGVyX3NlbF07DQotCWVuY29kZXIgPSB2YzRfY3J0Y19nZXRfZW5jb2Rlcl9ieV90
eXBlKGNydGMsIGVuY29kZXJfdHlwZSk7DQorCWVuY29kZXIgPSB2YzRfZmluZF9lbmNvZGVyX2J5
X3R5cGUoZHJtLCBlbmNvZGVyX3R5cGUpOw0KIAlpZiAoV0FSTl9PTighZW5jb2RlcikpDQogCQly
ZXR1cm4gMDsNCiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaCBi
L2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Rydi5oDQppbmRleCBjZDIwMDJmZmYxMTUuLjU0MzUy
ZGI0ODQ3NiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Rydi5oDQorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaA0KQEAgLTQ5NSw2ICs0OTUsMjIgQEAgdG9f
dmM0X2VuY29kZXIoY29uc3Qgc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQ0KIAlyZXR1cm4g
Y29udGFpbmVyX29mKGVuY29kZXIsIHN0cnVjdCB2YzRfZW5jb2RlciwgYmFzZSk7DQogfQ0KIA0K
K3N0YXRpYyBpbmxpbmUNCitzdHJ1Y3QgZHJtX2VuY29kZXIgKnZjNF9maW5kX2VuY29kZXJfYnlf
dHlwZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLA0KKwkJCQkJICAgICBlbnVtIHZjNF9lbmNvZGVy
X3R5cGUgdHlwZSkNCit7DQorCXN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcjsNCisNCisJZHJt
X2Zvcl9lYWNoX2VuY29kZXIoZW5jb2RlciwgZHJtKSB7DQorCQlzdHJ1Y3QgdmM0X2VuY29kZXIg
KnZjNF9lbmNvZGVyID0gdG9fdmM0X2VuY29kZXIoZW5jb2Rlcik7DQorDQorCQlpZiAodmM0X2Vu
Y29kZXItPnR5cGUgPT0gdHlwZSkNCisJCQlyZXR1cm4gZW5jb2RlcjsNCisJfQ0KKw0KKwlyZXR1
cm4gTlVMTDsNCit9DQorDQogc3RydWN0IHZjNF9jcnRjX2RhdGEgew0KIAljb25zdCBjaGFyICpu
YW1lOw0KIA0KDQotLSANCmI0IDAuMTAuMQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
