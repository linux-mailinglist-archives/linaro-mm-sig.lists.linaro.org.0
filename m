Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDF963F38E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:17:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC4F23F485
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:17:36 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 731893F457
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:14:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="f vPftML";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="l k+QMcR";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.nyi.internal (Postfix) with ESMTP id 56433580393;
	Thu,  1 Dec 2022 10:14:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 01 Dec 2022 10:14:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907699; x=
	1669914899; bh=1gEexNYiuyV4YjnbwZvlH/g9Uce0Jq9UIcsowosshF4=; b=f
	vPftML6TB57CKUZ4Y3+X+gPjyY9aPHYaOuqJnCQda0z9OsG02BFiJwUf8FFE0vv3
	Do8hAnL/VgQiQRDlUdRPQyOjXH1xriHKtu8TzEDsRbmSLvlLjoj8nMKorRQ7JMMU
	xE0Cv7uSb+Ck/8Xu71NNj9E1skqKQDqpWBnpR/z9LQIDwWljOAKXxefTks/VeiE2
	ijZT75oGfvPnVKVOrqlR6tsVMzvZvYNbQRNjrJayH8rqpbZSG+uSpAz+Wl0YoWlZ
	9cVFRl8hzvME1uV83i6HXmdn9lqZkgslslQ5ktMTjs7H0pLki77nPhWPz6eke9T6
	78c6y3efQq+dCCz1V39Uw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907699; x=
	1669914899; bh=1gEexNYiuyV4YjnbwZvlH/g9Uce0Jq9UIcsowosshF4=; b=l
	k+QMcRGPdHeYl1JdAed3WvT9aaC69LXGk5OXSjV0t9Q36bL/9+GtKNhVs9xdSK2L
	zaMKclZgJNumrJs7sDKMTQbQsBuaOR74pU31cYtG8F30WO6yGuEBKtsbg+9aU8L+
	JEN0dP4P/ZmIyMMhlfDzM/ntbWNo/zZNMtC5PqbJr9BaWeex+F3gsBr1tj+IQVlx
	rXz6BN7ql3EJ96/jIlTSglkeK/81jGIO1V6ZGLAzONPIuXlHFHwH6szNGTkgTPfl
	DCogqfcGIL++vkjc8EGQiQBO90ooUPsJYbFxui07YEvhVXmGkDZhet+UnFsOhrL9
	SRw6+FuB2fc2FuNC2CCmQ==
X-ME-Sender: <xms:88SIY2esE1AbKvKidbgqnklM-9uZErofwU1AXBYsVSKlayYv__aqlw>
    <xme:88SIYwMOL06LfcY2E2N7YKukyl1_6djbEJ584t4oSBs_NDIHtkrrHGUBB4YU8Cptx
    weVNjSNGGqaVpBsvps>
X-ME-Received: <xmr:88SIY3gBxAxnb6iADfWmHaRC_shVRSe5DxMBylSLEyjwgudiuU6gM_EY83skWyhNDPbcl_zqkvTo40kISjWvUPjU-OEKpQ5MTPZaZZmfqbqDXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:88SIYz_cSTjghNF7tTVHqerUwQE0_hwhK48d9HLZzWnBI1jJKSwr8Q>
    <xmx:88SIYyslqztxwxAySCVKDqy88atSG4m88pnn50lXXlpbomFeTVQ2HA>
    <xmx:88SIY6ERzjlMX81LnuMmbct9VPZGoMOWryXTCD2_9OEDi8xpgoJ9Bw>
    <xmx:88SIY-v7L0e6fH_qPIlh5MUoqfrXRj4QYWSgSJYrDq6qMQ0vcMda5g>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:14:58 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-8-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1738; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=dVRZxagdLaYZPJKU0AZPqLREkHLuV+SpdsWWGxEoUWA=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzQkqm9uufVD+/+0yIUPLzvf3sH+9mH76WtLvAMapIX+
 1nu97ChlYRDjYpAVU2SJETZfEndq1utONr55MHNYmUCGMHBxCsBEmnkYGVZ+EtlX0NF3N+7YjuoVuk
 69i4NmamhNmZ/brb/a/f45luUMv1lPXQ81zuIznvP0+MeqXx/zD6tXReRrX+IJu9U9z1roHBcA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 731893F457
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
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,igalia.com:email,cerno.tech:email,cerno.tech:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KPUQ75WD6SBZ4JID3UTVMPBRTJYEWWB3
X-Message-ID-Hash: KPUQ75WD6SBZ4JID3UTVMPBRTJYEWWB3
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 08/20] drm/tests: helpers: Switch to a platform_device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KPUQ75WD6SBZ4JID3UTVMPBRTJYEWWB3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

VGhlIGRldmljZSBtYW5hZ2VkIHJlc291cmNlcyBhcmUgcmFuIGlmIHRoZSBkZXZpY2UgaGFzIGJ1
cywgd2hpY2ggaXMgbm90DQp0aGUgY2FzZSBvZiBhIHJvb3RfZGV2aWNlLg0KDQpMZXQncyB1c2Ug
YSBwbGF0Zm9ybV9kZXZpY2UgaW5zdGVhZC4NCg0KUmV2aWV3ZWQtYnk6IEphdmllciBNYXJ0aW5l
eiBDYW5pbGxhcyA8amF2aWVybUByZWRoYXQuY29tPg0KUmV2aWV3ZWQtYnk6IE1hw61yYSBDYW5h
bCA8bWNhbmFsQGlnYWxpYS5jb20+DQpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhp
bWVAY2Vybm8udGVjaD4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVs
cGVycy5jIHwgMTYgKysrKysrKysrKysrKystLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rl
c3RzL2RybV9rdW5pdF9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0
X2hlbHBlcnMuYw0KaW5kZXggNGJmOThiZDBhOGM2Li5iNjZjZTc3OTUxMWIgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0KKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCkBAIC03LDYgKzcsNyBAQA0KICNp
bmNsdWRlIDxrdW5pdC9yZXNvdXJjZS5oPg0KIA0KICNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4N
CisjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+DQogDQogI2RlZmluZSBLVU5JVF9E
RVZJQ0VfTkFNRQkiZHJtLWt1bml0LW1vY2stZGV2aWNlIg0KIA0KQEAgLTMyLDcgKzMzLDE2IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNzIGRybV9tb2RlX2NvbmZp
Z19mdW5jcyA9IHsNCiAgKi8NCiBzdHJ1Y3QgZGV2aWNlICpkcm1fa3VuaXRfaGVscGVyX2FsbG9j
X2RldmljZShzdHJ1Y3Qga3VuaXQgKnRlc3QpDQogew0KLQlyZXR1cm4gcm9vdF9kZXZpY2VfcmVn
aXN0ZXIoS1VOSVRfREVWSUNFX05BTUUpOw0KKwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
Ow0KKwlpbnQgcmV0Ow0KKw0KKwlwZGV2ID0gcGxhdGZvcm1fZGV2aWNlX2FsbG9jKEtVTklUX0RF
VklDRV9OQU1FLCBQTEFURk9STV9ERVZJRF9OT05FKTsNCisJS1VOSVRfQVNTRVJUX05PVF9FUlJf
T1JfTlVMTCh0ZXN0LCBwZGV2KTsNCisNCisJcmV0ID0gcGxhdGZvcm1fZGV2aWNlX2FkZChwZGV2
KTsNCisJS1VOSVRfQVNTRVJUX0VRKHRlc3QsIHJldCwgMCk7DQorDQorCXJldHVybiAmcGRldi0+
ZGV2Ow0KIH0NCiBFWFBPUlRfU1lNQk9MX0dQTChkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2Rldmlj
ZSk7DQogDQpAQCAtNDUsNyArNTUsOSBAQCBFWFBPUlRfU1lNQk9MX0dQTChkcm1fa3VuaXRfaGVs
cGVyX2FsbG9jX2RldmljZSk7DQogICovDQogdm9pZCBkcm1fa3VuaXRfaGVscGVyX2ZyZWVfZGV2
aWNlKHN0cnVjdCBrdW5pdCAqdGVzdCwgc3RydWN0IGRldmljZSAqZGV2KQ0KIHsNCi0Jcm9vdF9k
ZXZpY2VfdW5yZWdpc3RlcihkZXYpOw0KKwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0g
dG9fcGxhdGZvcm1fZGV2aWNlKGRldik7DQorDQorCXBsYXRmb3JtX2RldmljZV91bnJlZ2lzdGVy
KHBkZXYpOw0KIH0NCiBFWFBPUlRfU1lNQk9MX0dQTChkcm1fa3VuaXRfaGVscGVyX2ZyZWVfZGV2
aWNlKTsNCiANCg0KLS0gDQpiNCAwLjEwLjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
