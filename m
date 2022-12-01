Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5A263F382
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:16:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08DA73F499
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:16:34 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 0196D3F2F6
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:14:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="C dtRx9i";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="o SE6D+0";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id DA95C5803A4;
	Thu,  1 Dec 2022 10:14:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 01 Dec 2022 10:14:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907692; x=
	1669914892; bh=Vsy2pR2La7oPdHIjqFNEhNC4zRSpukOFWVxHMug8m4w=; b=C
	dtRx9iN9Ra4TsQuj1LoDgxAqJKqygQObpqFWuJLjq9oX1duI9SBUIMOssh3nQM/T
	qELUhn5BPb86noKqGJigLGcy7EUj3so361BX3G+LYHBZexR3iqe9BcHhcf1NUlro
	cHR7NvbuRGHs9Zw5rEn5nU6lq6KFGwOCoNsQiFo1Wv+CoktJeOUaJtlW5UfWQCon
	dOtaD8IRPhsLYMHsbwX8zYMvXo2Egw4H/K5iMtQAdZZngbcH87VOPhTRrHt/32wG
	W/pSH1K1GfU6QNdHB+9TuuiQxX9rTw0y8eff/wIw1kFu9mT/AHhg9kqqO+X9nZQg
	q0ictMhQ65jMcMHb7m+Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907692; x=
	1669914892; bh=Vsy2pR2La7oPdHIjqFNEhNC4zRSpukOFWVxHMug8m4w=; b=o
	SE6D+0c6EDvrhHKLwAVmdNpVy8ODT6KKX/qllB75PLpq2mD/UpSSkmn0IflR0ptN
	LdYKcniO6EURddqsmH9AGkArr7TseZ1gidy9j1rnU1H+CbzE76nGRvGGZ20rYnpG
	jOVJtKewC/UnAFErHD++oPZ7UyyDY++2jG19pY9fkE4H82iDNLWzluJBwuu1FIFt
	cWIRdqRjHLswQ2ZnAsZElKq/9wmtkvuB0G6uoDyyjyOpojkYjQZgVhv/SvuW7smA
	dunJhoNQ3VdOKaVXlwu0Ivb6+Su4QlJSRMpS4AXjQ35aVHw44cd38RsoJThwdlqn
	81OEngta8bBhdPAliiGTg==
X-ME-Sender: <xms:7MSIY62aSl17DA8JmirQpMIs9fr6gFTv70hjsxxNdAcGiMWVWzh8lA>
    <xme:7MSIY9FlLaWajDdcKK6pD2G-UdHaILMBH1Ye32WsNX9OCyC6FkK8K2d55tfmNENWB
    DMhyo_qklOEWoOAbg8>
X-ME-Received: <xmr:7MSIYy542i-68lklE7IJIe0TlNFabEsuyXh0hCVWa4lLbLTFJ66XmG6Bwwn1rvqB8XWfGOUG4X1zga7-Ps6UiC5708-kuq91DfakoMAOepRMJA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7MSIY73rSZtMGhqsFjCPhPjUIXFRa7LHspOZ2UBpJKMLvmFKsYLJkg>
    <xmx:7MSIY9HxxPy7OLUnLHUiAuKMoV_J6BUQlZXQn7PRVjeuF4FJvepxuA>
    <xmx:7MSIY09Yrzy63f_NDeJIIjnv_P_sVS2rSnrTE5ge1SLDyvcfz-Xf-A>
    <xmx:7MSIY8G3G3UGf5EBCdYpKrD9Echf2IgA081Ugmtwzr66FD_ZGQ1C4A>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:14:51 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-5-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4528; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=3MKZ16mfGI8pO4BPhdKS3FZs+sSNuL/c/wTiXJ9dtMc=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzSK+XIXKajPb9P+Gy3s3Htx7ZyLc3ZNcHWfO5NPs71U
 V6G6o5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABNZfoeRYV7dvbtr8xVv7HXMzb3bNc
 91WlQTr4zNzv2enxZ+jD01hZHhf+X0gD0ZxpXNRemHmHbZ5q7inLaN15ZtR2u+0fsvC/xncQAA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 0196D3F2F6
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim,new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,igalia.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LVGW4S6MCEY33HJDHCG6LK7KBG5Y6ZIV
X-Message-ID-Hash: LVGW4S6MCEY33HJDHCG6LK7KBG5Y6ZIV
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 05/20] drm/tests: helpers: Rename the device init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LVGW4S6MCEY33HJDHCG6LK7KBG5Y6ZIV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

VGhlIG5hbWUgZG9lc24ndCByZWFsbHkgZml0IHRoZSBjb252ZW50aW9ucyBmb3IgdGhlIG90aGVy
IGhlbHBlcnMgaW4NCkRSTS9LTVMsIHNvIGxldCdzIHJlbmFtZSBpdCB0byBtYWtlIGl0IG9idmlv
dXMgdGhhdCB3ZSBhbGxvY2F0ZSBhIG5ldw0KRFJNIGRldmljZS4NCg0KUmV2aWV3ZWQtYnk6IE1h
w61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+DQpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlw
YXJkIDxtYXhpbWVAY2Vybm8udGVjaD4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1f
Y2xpZW50X21vZGVzZXRfdGVzdC5jIHwgMyArKy0NCiBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJt
X2t1bml0X2hlbHBlcnMuYyAgICAgICB8IDggKysrKystLS0NCiBkcml2ZXJzL2dwdS9kcm0vdGVz
dHMvZHJtX21vZGVzX3Rlc3QuYyAgICAgICAgICB8IDMgKystDQogZHJpdmVycy9ncHUvZHJtL3Rl
c3RzL2RybV9wcm9iZV9oZWxwZXJfdGVzdC5jICAgfCA1ICsrKy0tDQogaW5jbHVkZS9kcm0vZHJt
X2t1bml0X2hlbHBlcnMuaCAgICAgICAgICAgICAgICAgfCA1ICsrKystDQogNSBmaWxlcyBjaGFu
Z2VkLCAxNiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3Rlc3RzL2RybV9jbGllbnRfbW9kZXNldF90ZXN0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vdGVzdHMvZHJtX2NsaWVudF9tb2Rlc2V0X3Rlc3QuYw0KaW5kZXggZWQyZjYyZTkyZmVh
Li42Y2RmMDhmNTgyY2UgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2Ns
aWVudF9tb2Rlc2V0X3Rlc3QuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9jbGll
bnRfbW9kZXNldF90ZXN0LmMNCkBAIC01OSw3ICs1OSw4IEBAIHN0YXRpYyBpbnQgZHJtX2NsaWVu
dF9tb2Rlc2V0X3Rlc3RfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QpDQogDQogCXRlc3QtPnByaXYg
PSBwcml2Ow0KIA0KLQlwcml2LT5kcm0gPSBkcm1fa3VuaXRfZGV2aWNlX2luaXQodGVzdCwgRFJJ
VkVSX01PREVTRVQsICJkcm0tY2xpZW50LW1vZGVzZXQtdGVzdCIpOw0KKwlwcml2LT5kcm0gPSBk
cm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2UodGVzdCwgRFJJVkVSX01PREVTRVQsDQor
CQkJCQkJICAgICAgImRybS1jbGllbnQtbW9kZXNldC10ZXN0Iik7DQogCUtVTklUX0FTU0VSVF9O
T1RfRVJSX09SX05VTEwodGVzdCwgcHJpdi0+ZHJtKTsNCiANCiAJcmV0ID0gZHJtbV9jb25uZWN0
b3JfaW5pdChwcml2LT5kcm0sICZwcml2LT5jb25uZWN0b3IsDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVz
dHMvZHJtX2t1bml0X2hlbHBlcnMuYw0KaW5kZXggNGZlMTMxMTQxNzE4Li5lNzE4MDczYmE2ZTkg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0K
KysrIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCkBAIC0zNiw3
ICszNiw3IEBAIHN0YXRpYyB2b2lkIGRldl9mcmVlKHN0cnVjdCBrdW5pdF9yZXNvdXJjZSAqcmVz
KQ0KIH0NCiANCiAvKioNCi0gKiBkcm1fa3VuaXRfZGV2aWNlX2luaXQgLSBBbGxvY2F0ZXMgYSBt
b2NrIERSTSBkZXZpY2UgZm9yIEtVbml0IHRlc3RzDQorICogZHJtX2t1bml0X2hlbHBlcl9hbGxv
Y19kcm1fZGV2aWNlIC0gQWxsb2NhdGVzIGEgbW9jayBEUk0gZGV2aWNlIGZvciBLVW5pdCB0ZXN0
cw0KICAqIEB0ZXN0OiBUaGUgdGVzdCBjb250ZXh0IG9iamVjdA0KICAqIEBmZWF0dXJlczogTW9j
a2VkIERSTSBkZXZpY2UgZHJpdmVyIGZlYXR1cmVzDQogICogQG5hbWU6IE5hbWUgb2YgdGhlIHN0
cnVjdCAmZGV2aWNlIHRvIGFsbG9jYXRlDQpAQCAtNTIsNyArNTIsOSBAQCBzdGF0aWMgdm9pZCBk
ZXZfZnJlZShzdHJ1Y3Qga3VuaXRfcmVzb3VyY2UgKnJlcykNCiAgKiBSZXR1cm5zOg0KICAqIEEg
cG9pbnRlciB0byB0aGUgbmV3IGRybV9kZXZpY2UsIG9yIGFuIEVSUl9QVFIoKSBvdGhlcndpc2Uu
DQogICovDQotc3RydWN0IGRybV9kZXZpY2UgKmRybV9rdW5pdF9kZXZpY2VfaW5pdChzdHJ1Y3Qg
a3VuaXQgKnRlc3QsIHUzMiBmZWF0dXJlcywgY2hhciAqbmFtZSkNCitzdHJ1Y3QgZHJtX2Rldmlj
ZSAqDQorZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kcm1fZGV2aWNlKHN0cnVjdCBrdW5pdCAqdGVz
dCwNCisJCQkJICB1MzIgZmVhdHVyZXMsIGNoYXIgKm5hbWUpDQogew0KIAlzdHJ1Y3Qga3VuaXRf
ZGV2ICprZGV2Ow0KIAlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtOw0KQEAgLTgyLDcgKzg0LDcgQEAg
c3RydWN0IGRybV9kZXZpY2UgKmRybV9rdW5pdF9kZXZpY2VfaW5pdChzdHJ1Y3Qga3VuaXQgKnRl
c3QsIHUzMiBmZWF0dXJlcywgY2hhcg0KIA0KIAlyZXR1cm4gZHJtOw0KIH0NCi1FWFBPUlRfU1lN
Qk9MX0dQTChkcm1fa3VuaXRfZGV2aWNlX2luaXQpOw0KK0VYUE9SVF9TWU1CT0xfR1BMKGRybV9r
dW5pdF9oZWxwZXJfYWxsb2NfZHJtX2RldmljZSk7DQogDQogTU9EVUxFX0FVVEhPUigiTWF4aW1l
IFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+Iik7DQogTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOw0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fbW9kZXNfdGVzdC5jIGIvZHJp
dmVycy9ncHUvZHJtL3Rlc3RzL2RybV9tb2Rlc190ZXN0LmMNCmluZGV4IDM5NTNlNDc4YzRkMC4u
NjcyMzA4OWRmZjlmIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9tb2Rl
c190ZXN0LmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fbW9kZXNfdGVzdC5jDQpA
QCAtMjIsNyArMjIsOCBAQCBzdGF0aWMgaW50IGRybV90ZXN0X21vZGVzX2luaXQoc3RydWN0IGt1
bml0ICp0ZXN0KQ0KIAlwcml2ID0ga3VuaXRfa3phbGxvYyh0ZXN0LCBzaXplb2YoKnByaXYpLCBH
RlBfS0VSTkVMKTsNCiAJS1VOSVRfQVNTRVJUX05PVF9OVUxMKHRlc3QsIHByaXYpOw0KIA0KLQlw
cml2LT5kcm0gPSBkcm1fa3VuaXRfZGV2aWNlX2luaXQodGVzdCwgRFJJVkVSX01PREVTRVQsICJk
cm0tbW9kZXMtdGVzdCIpOw0KKwlwcml2LT5kcm0gPSBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2Ry
bV9kZXZpY2UodGVzdCwgRFJJVkVSX01PREVTRVQsDQorCQkJCQkJICAgICAgImRybS1tb2Rlcy10
ZXN0Iik7DQogCUtVTklUX0FTU0VSVF9OT1RfRVJSX09SX05VTEwodGVzdCwgcHJpdi0+ZHJtKTsN
CiANCiAJdGVzdC0+cHJpdiA9IHByaXY7DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rl
c3RzL2RybV9wcm9iZV9oZWxwZXJfdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9w
cm9iZV9oZWxwZXJfdGVzdC5jDQppbmRleCAxZjM5NDFjMTUwYWUuLjg1MjM2ZmY0NzQ0ZiAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYw0K
KysrIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9wcm9iZV9oZWxwZXJfdGVzdC5jDQpAQCAt
MzksOCArMzksOSBAQCBzdGF0aWMgaW50IGRybV9wcm9iZV9oZWxwZXJfdGVzdF9pbml0KHN0cnVj
dCBrdW5pdCAqdGVzdCkNCiAJS1VOSVRfQVNTRVJUX05PVF9OVUxMKHRlc3QsIHByaXYpOw0KIAl0
ZXN0LT5wcml2ID0gcHJpdjsNCiANCi0JcHJpdi0+ZHJtID0gZHJtX2t1bml0X2RldmljZV9pbml0
KHRlc3QsIERSSVZFUl9NT0RFU0VUIHwgRFJJVkVSX0FUT01JQywNCi0JCQkJCSAgImRybS1wcm9i
ZS1oZWxwZXItdGVzdCIpOw0KKwlwcml2LT5kcm0gPSBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2Ry
bV9kZXZpY2UodGVzdCwNCisJCQkJCQkgICAgICBEUklWRVJfTU9ERVNFVCB8IERSSVZFUl9BVE9N
SUMsDQorCQkJCQkJICAgICAgImRybS1wcm9iZS1oZWxwZXItdGVzdCIpOw0KIAlLVU5JVF9BU1NF
UlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIHByaXYtPmRybSk7DQogDQogCWNvbm5lY3RvciA9ICZw
cml2LT5jb25uZWN0b3I7DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBl
cnMuaCBiL2luY2x1ZGUvZHJtL2RybV9rdW5pdF9oZWxwZXJzLmgNCmluZGV4IDIwYWI2ZWVjNGM4
OS4uZTk4NzBjNzkxMWZlIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBl
cnMuaA0KKysrIGIvaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaA0KQEAgLTYsNiArNiw5
IEBADQogc3RydWN0IGRybV9kZXZpY2U7DQogc3RydWN0IGt1bml0Ow0KIA0KLXN0cnVjdCBkcm1f
ZGV2aWNlICpkcm1fa3VuaXRfZGV2aWNlX2luaXQoc3RydWN0IGt1bml0ICp0ZXN0LCB1MzIgZmVh
dHVyZXMsIGNoYXIgKm5hbWUpOw0KK3N0cnVjdCBkcm1fZGV2aWNlICoNCitkcm1fa3VuaXRfaGVs
cGVyX2FsbG9jX2RybV9kZXZpY2Uoc3RydWN0IGt1bml0ICp0ZXN0LA0KKwkJCQkgIHUzMiBmZWF0
dXJlcywNCisJCQkJICBjaGFyICpuYW1lKTsNCiANCiAjZW5kaWYgLy8gRFJNX0tVTklUX0hFTFBF
UlNfSF8NCg0KLS0gDQpiNCAwLjEwLjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
