Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C6563F373
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:15:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D8743EA28
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:15:31 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 2F7023F44B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:14:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="L q18AxK";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="H jJCN06";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.nyi.internal (Postfix) with ESMTP id 09507580393;
	Thu,  1 Dec 2022 10:14:46 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 01 Dec 2022 10:14:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907686; x=
	1669914886; bh=iuEilx+xRoYQO1RYgfutYD8lYjMUxNr7wUiIyqj/yYs=; b=L
	q18AxKAxYF6umWFcqBiTe7oEWaogxy4bIEaiYKKcBbGXkJwD4PuJs2Rmlj4VuxnU
	TR1rOrLWM0+Av5O4Y5bfztC9JswWK98vOx/1PmtknN1lG6hZr4Wmm2B7eik/sQbF
	oSBzZg6Qn8NAov7CYFAOb2/gwbCnO2lyN6Go8qCdqSFErBvLh0E3B24ZPWgcL8o8
	llPb/vt9zCVw7NQDdg/VL553Bmoyh23gsYm0ZrU7YUAsaoZPOPaKIxn5HBQ85lfB
	qeCm8zOG64joDG876S98aFU42/56itN6xXLLI54ZrdXjJb39Q8X7rOK9I4jmgOa3
	WIrP+jruNCp5qRl/dKaTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907686; x=
	1669914886; bh=iuEilx+xRoYQO1RYgfutYD8lYjMUxNr7wUiIyqj/yYs=; b=H
	jJCN06LIct5EKfWYVhtn9kcucLCGGjuggh0QCWAYWfszpJYVU1BbRrto/Of2E70L
	6d2zNm6c2zJ/v90XuiYj07svHIq6RWkP+5m1k6Faopd8aUAsIMqCXtsZLBqy6AsA
	9jcDmFaO2li/S2Anf/QcboXZiZOjW9dFLT/AVxShalC4pit+HbqkH+3JNqzlKIjl
	kR3UpFK5CufbnmorSN/0DW3k/rYCdSGf/em2Yao3gPM38oMNBVbvFUyQhVbKH1IV
	yDXYiZPSA/Cg1nJN6YjP0uVxAYZgNGPnTiRCzlYzINGPqvY+FCPfW7gGjAQqejiy
	TU1Q1JuTN2U0/sWxV5JvA==
X-ME-Sender: <xms:5cSIYzjdtjOA7ZK1IVkdoKIIOnWhwPt_8SgYn2qkrWAOISCEbdfCEg>
    <xme:5cSIYwCdMhe-0tnl7O44fM0msVIGxvoQWp4vFhiDTSfBzkgRo8Pp_vVCGruC7DoeS
    iGwFeAhX8EqoBAAcIA>
X-ME-Received: <xmr:5cSIYzEx-wxf9SdwohshGberKo6CyUnao6dyk-rYJgFZd6Q1492iVU2qNHYEWVbaofQryqTQtK16-VLh3LkgJufjCa306D4ctX552U6HByrRFw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:5cSIYwRkNVFIQt-keryhE8__8NJtp2jHGdGqf1-SQPWA8Ul6dye-kQ>
    <xmx:5cSIYwzyinN8F8oWDK5bpsnLoQW5hHp-1KR8nPwq2E0Hj-llr28hUQ>
    <xmx:5cSIY25zlhNWLh5-DtP5Ejiv49NpFRjFOU4wl6g_8rKfAxGiIz1bJw>
    <xmx:5sSIY9TWXN4VIDORoxN3kX0b-yZ62xmmW75dTaAq3nWGGbAOasufnQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:14:44 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-2-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2332; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=AL8w9JCRskBiZKslQFe5w0wf2+nO0cN/2cUYvvpK3eM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdR9Rrni12zTk1WcC5d1NA24x3arsmBljdXmVkPDN/3enH
 iwNed5SyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAi4TMYGTYaaT2YmKahsnHOqgdeyy
 Plo9i0u0TONLavftAjJnjmxFaG/168wTKTr65XTai/zHXWpNfu7/f1Ky9EfmyVqzn61dsylhsA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 2F7023F44B
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,igalia.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OTXJMRLGZYUA74H42YGBG65SYZJGGOSZ
X-Message-ID-Hash: OTXJMRLGZYUA74H42YGBG65SYZJGGOSZ
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 02/20] drm/tests: Introduce a config option for the KUnit helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OTXJMRLGZYUA74H42YGBG65SYZJGGOSZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

RHJpdmVyLXNwZWNpZmljIHRlc3RzIHdpbGwgbmVlZCBhY2Nlc3MgdG8gdGhlIGhlbHBlcnMgd2l0
aG91dCBwdWxsaW5nDQpldmVyeSBEUk0gZnJhbWV3b3JrIHRlc3QuIExldCdzIGNyZWF0ZSBhbiBp
bnRlcm1lZGlhdGUgS2NvbmZpZyBvcHRpb25zDQpmb3IgdGhlIGhlbHBlcnMuDQoNClN1Z2dlc3Rl
ZC1ieTogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT4NClNpZ25lZC1vZmYtYnk6IE1h
eGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL0tj
b25maWcgICAgICAgIHwgNyArKysrKysrDQogZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlICAgICAg
IHwgMiArLQ0KIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9NYWtlZmlsZSB8IDQgKysrLQ0KIDMgZmls
ZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL0tjb25maWcNCmlu
ZGV4IDMxNWNiZGY2MTk3OS4uOWYwMTljZDA1M2UxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL0tjb25maWcNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9LY29uZmlnDQpAQCAtNjMsNiArNjMs
MTIgQEAgY29uZmlnIERSTV9VU0VfRFlOQU1JQ19ERUJVRw0KIAkgIGJ5dGVzIHBlciBjYWxsc2l0
ZSwgdGhlIC5kYXRhIGNvc3RzIGNhbiBiZSBzdWJzdGFudGlhbCwgYW5kDQogCSAgYXJlIHRoZXJl
Zm9yZSBjb25maWd1cmFibGUuDQogDQorY29uZmlnIERSTV9LVU5JVF9URVNUX0hFTFBFUlMNCisJ
dHJpc3RhdGUNCisJZGVwZW5kcyBvbiBEUk0gJiYgS1VOSVQNCisJaGVscA0KKwkgIEtVbml0IEhl
bHBlcnMgZm9yIEtNUyBkcml2ZXJzLg0KKw0KIGNvbmZpZyBEUk1fS1VOSVRfVEVTVA0KIAl0cmlz
dGF0ZSAiS1VuaXQgdGVzdHMgZm9yIERSTSIgaWYgIUtVTklUX0FMTF9URVNUUw0KIAlkZXBlbmRz
IG9uIERSTSAmJiBLVU5JVA0KQEAgLTczLDYgKzc5LDcgQEAgY29uZmlnIERSTV9LVU5JVF9URVNU
DQogCXNlbGVjdCBEUk1fS01TX0hFTFBFUg0KIAlzZWxlY3QgRFJNX0JVRERZDQogCXNlbGVjdCBE
Uk1fRVhQT1JUX0ZPUl9URVNUUyBpZiBtDQorCXNlbGVjdCBEUk1fS1VOSVRfVEVTVF9IRUxQRVJT
DQogCWRlZmF1bHQgS1VOSVRfQUxMX1RFU1RTDQogCWhlbHANCiAJICBUaGlzIGJ1aWxkcyB1bml0
IHRlc3RzIGZvciBEUk0uIFRoaXMgb3B0aW9uIGlzIG5vdCB1c2VmdWwgZm9yDQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlDQpp
bmRleCBmOTJjZDc4OTI3MTEuLjhkNjFmYmRmZGZhYyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9NYWtlZmlsZQ0KKysrIGIvZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlDQpAQCAtMTI1LDcg
KzEyNSw3IEBAIG9iai0kKENPTkZJR19EUk1fS01TX0hFTFBFUikgKz0gZHJtX2ttc19oZWxwZXIu
bw0KICMgRHJpdmVycyBhbmQgdGhlIHJlc3QNCiAjDQogDQotb2JqLSQoQ09ORklHX0RSTV9LVU5J
VF9URVNUKSArPSB0ZXN0cy8NCitvYmoteQkJCSs9IHRlc3RzLw0KIA0KIG9iai0kKENPTkZJR19E
Uk1fTUlQSV9EQkkpICs9IGRybV9taXBpX2RiaS5vDQogb2JqLSQoQ09ORklHX0RSTV9NSVBJX0RT
SSkgKz0gZHJtX21pcGlfZHNpLm8NCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMv
TWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvTWFrZWZpbGUNCmluZGV4IDk0ZmU1NDZk
OTM3ZC4uZWYxNGJkNDgxMTM5IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL01h
a2VmaWxlDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvTWFrZWZpbGUNCkBAIC0xLDUgKzEs
OCBAQA0KICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCiANCitvYmotJChDT05G
SUdfRFJNX0tVTklUX1RFU1RfSEVMUEVSUykgKz0gXA0KKwlkcm1fa3VuaXRfaGVscGVycy5vDQor
DQogb2JqLSQoQ09ORklHX0RSTV9LVU5JVF9URVNUKSArPSBcDQogCWRybV9idWRkeV90ZXN0Lm8g
XA0KIAlkcm1fY21kbGluZV9wYXJzZXJfdGVzdC5vIFwNCkBAIC05LDcgKzEyLDYgQEAgb2JqLSQo
Q09ORklHX0RSTV9LVU5JVF9URVNUKSArPSBcDQogCWRybV9mb3JtYXRfaGVscGVyX3Rlc3QubyBc
DQogCWRybV9mb3JtYXRfdGVzdC5vIFwNCiAJZHJtX2ZyYW1lYnVmZmVyX3Rlc3QubyBcDQotCWRy
bV9rdW5pdF9oZWxwZXJzLm8gXA0KIAlkcm1fbW1fdGVzdC5vIFwNCiAJZHJtX21vZGVzX3Rlc3Qu
byBcDQogCWRybV9wbGFuZV9oZWxwZXJfdGVzdC5vIFwNCg0KLS0gDQpiNCAwLjEwLjENCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
