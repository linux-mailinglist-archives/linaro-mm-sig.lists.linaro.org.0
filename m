Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A028563F386
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:16:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0A583F485
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:16:53 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 3362C3F457
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:14:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="Z xB2AT5";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="r GL41U2";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id 16F6158026A;
	Thu,  1 Dec 2022 10:14:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 01 Dec 2022 10:14:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907695; x=
	1669914895; bh=9XAti2+tIbxl2NUHcNRem9TQQMIYele9SUbSUH7Ls+A=; b=Z
	xB2AT5GyUVR8kgnhXq3C5Leyv/W8kmCIWrMLvIonP3j7UYA3rghC1Ge+9kieZzqL
	bqXLieHJZZNzCdhuT16O3baF/fD43tladLs4l9WfnETlgTcAO9hnbpF9T/D4NbYu
	tRYBo03sy3WOQBSsNgV661PjRwHtbHOsfXEMsPus7OZfFyCrE32OW/uDKHU4OLSt
	IzlYiGTjlkptUnqodSE34SrSxD3zgpFGPe7mC8MSMqHjq9ADxHiIEv5AyNS4CYJt
	WOTmjY3kBavcYfeLiSeHh9LIjZ23UZhKz6y2dCMT0AXWZdDw1j2iYkTBvQ0Vysue
	tBjtm5sbvk7w0HQS6Mt0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907695; x=
	1669914895; bh=9XAti2+tIbxl2NUHcNRem9TQQMIYele9SUbSUH7Ls+A=; b=r
	GL41U2QBEFeFnx7Brkrg+1SdZ/ox7zxz6c0e41jdEw9JmCWpf30uKjYWF1GintG+
	L4dM750ilYf7ZnoyIYMjCYMWMM9eo7TV2u/khmPV8PtIINMJEY9oezFPogee0nL4
	k1G5xOzBusrWiPqWGJq7gZOshtMpuB93Gr+mI1x8Uijswogz/o98DkSIiUUOhBHt
	TcRuBljJpf/Nf7uAW4+EOr4Nd90pMg4TW9Bxmmy6MDfqaRjJxqZ1gwAyWOUq0sEN
	7FpKO9uwJicy0nYxid8Dv/uykN2WrCs1rdam5o1rgafvjxzlbmEDqy/2eCVYIFy+
	txuzre8mEnLxSHsdOKnkg==
X-ME-Sender: <xms:7sSIY6IoOn1cJZU0kim07RkBBGyzY7zJXm6cfcjTuahx5-omtST7ow>
    <xme:7sSIYyL1ksskE90HoVX33o4fYVZhMc5HqxIXZRuCQdfyIYTFqpJ3CKDznhIHRQd-C
    oNcOOGcKFU8s7-HBco>
X-ME-Received: <xmr:7sSIY6tDhyTwKAyF2L1Up8n0GXWFvhqB3glaVzp63OOCSF0vl39Y0JoVpLKsNMyeGiYAGZoaV9_9Q9p3ZRyJ2hPxMJKdtlT0mW2QOqbHvbwiRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7sSIY_bd6gT-6OhMX3jo2eVm8tZs0AG9Jl1ztetINM8qKdk1PeH1Fw>
    <xmx:7sSIYxZKd0oowiGsKV3fb7IhfbmL0HjXhuBQXWXofl7sjzG7TXxMtw>
    <xmx:7sSIY7DriMLpFJbSo9C-GXbKGc9I2H9iFhBu5r-7mHd6pobc0GK_rA>
    <xmx:78SIYy41wazYr0ljXhu4nQ5i7YNYRt0s5480Y1M27YrKtWbcg8TIEQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:14:54 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-6-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4335; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=C45pokugMijRI1xJrjlrUtt9ncB9ONss2reLWsGhOPk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzT83sYyzjl1WvTIA7abnr+iCqdXnj3/J+WKoeLrXf9Z
 LtildpSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAi8wIYGVYnOc7rF/xgUaoUaXPNXW
 eHImdnqOZH5qLY87OmlXauWcjIsElrQQr35mmzMwv+5dq9yv6z77NH5P/+AOs1d+ceV7HYzw0A
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 3362C3F457
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
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,igalia.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JLJZM2BUAITLDSZAMGBA7IQU4LKLH34X
X-Message-ID-Hash: JLJZM2BUAITLDSZAMGBA7IQU4LKLH34X
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 06/20] drm/tests: helpers: Remove the name parameter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JLJZM2BUAITLDSZAMGBA7IQU4LKLH34X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

VGhlIGRldmljZSBuYW1lIGlzbid0IHJlYWxseSB1c2VmdWwsIHdlIGNhbiBqdXN0IGRlZmluZSBp
dCBpbnN0ZWFkIG9mDQpleHBvc2luZyBpdCBpbiB0aGUgQVBJLg0KDQpSZXZpZXdlZC1ieTogTWHD
rXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT4NClNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBh
cmQgPG1heGltZUBjZXJuby50ZWNoPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9j
bGllbnRfbW9kZXNldF90ZXN0LmMgfCAzICstLQ0KIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1f
a3VuaXRfaGVscGVycy5jICAgICAgIHwgNyArKysrLS0tDQogZHJpdmVycy9ncHUvZHJtL3Rlc3Rz
L2RybV9tb2Rlc190ZXN0LmMgICAgICAgICAgfCAzICstLQ0KIGRyaXZlcnMvZ3B1L2RybS90ZXN0
cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYyAgIHwgMyArLS0NCiBpbmNsdWRlL2RybS9kcm1fa3Vu
aXRfaGVscGVycy5oICAgICAgICAgICAgICAgICB8IDMgKy0tDQogNSBmaWxlcyBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3Rlc3RzL2RybV9jbGllbnRfbW9kZXNldF90ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
dGVzdHMvZHJtX2NsaWVudF9tb2Rlc2V0X3Rlc3QuYw0KaW5kZXggNmNkZjA4ZjU4MmNlLi40ZDQ3
NWFlNmRiYjYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2NsaWVudF9t
b2Rlc2V0X3Rlc3QuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9jbGllbnRfbW9k
ZXNldF90ZXN0LmMNCkBAIC01OSw4ICs1OSw3IEBAIHN0YXRpYyBpbnQgZHJtX2NsaWVudF9tb2Rl
c2V0X3Rlc3RfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QpDQogDQogCXRlc3QtPnByaXYgPSBwcml2
Ow0KIA0KLQlwcml2LT5kcm0gPSBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2UodGVz
dCwgRFJJVkVSX01PREVTRVQsDQotCQkJCQkJICAgICAgImRybS1jbGllbnQtbW9kZXNldC10ZXN0
Iik7DQorCXByaXYtPmRybSA9IGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2RldmljZSh0ZXN0
LCBEUklWRVJfTU9ERVNFVCk7DQogCUtVTklUX0FTU0VSVF9OT1RfRVJSX09SX05VTEwodGVzdCwg
cHJpdi0+ZHJtKTsNCiANCiAJcmV0ID0gZHJtbV9jb25uZWN0b3JfaW5pdChwcml2LT5kcm0sICZw
cml2LT5jb25uZWN0b3IsDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9r
dW5pdF9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMu
Yw0KaW5kZXggZTcxODA3M2JhNmU5Li5lYzMzZmNiZDA5MmQgMTAwNjQ0DQotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJt
L3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCkBAIC04LDYgKzgsOCBAQA0KIA0KICNpbmNsdWRl
IDxsaW51eC9kZXZpY2UuaD4NCiANCisjZGVmaW5lIEtVTklUX0RFVklDRV9OQU1FCSJkcm0ta3Vu
aXQtbW9jay1kZXZpY2UiDQorDQogc3RydWN0IGt1bml0X2RldiB7DQogCXN0cnVjdCBkcm1fZGV2
aWNlIGJhc2U7DQogfTsNCkBAIC0zOSw3ICs0MSw2IEBAIHN0YXRpYyB2b2lkIGRldl9mcmVlKHN0
cnVjdCBrdW5pdF9yZXNvdXJjZSAqcmVzKQ0KICAqIGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJt
X2RldmljZSAtIEFsbG9jYXRlcyBhIG1vY2sgRFJNIGRldmljZSBmb3IgS1VuaXQgdGVzdHMNCiAg
KiBAdGVzdDogVGhlIHRlc3QgY29udGV4dCBvYmplY3QNCiAgKiBAZmVhdHVyZXM6IE1vY2tlZCBE
Uk0gZGV2aWNlIGRyaXZlciBmZWF0dXJlcw0KLSAqIEBuYW1lOiBOYW1lIG9mIHRoZSBzdHJ1Y3Qg
JmRldmljZSB0byBhbGxvY2F0ZQ0KICAqDQogICogVGhpcyBmdW5jdGlvbiBhbGxvY2F0ZXMgYSBu
ZXcgc3RydWN0ICZkZXZpY2UsIGNyZWF0ZXMgYSBzdHJ1Y3QNCiAgKiAmZHJtX2RyaXZlciBhbmQg
d2lsbCBjcmVhdGUgYSBzdHJ1Y3QgJmRybV9kZXZpY2UgdXNpbmcgYm90aC4NCkBAIC01NCw3ICs1
NSw3IEBAIHN0YXRpYyB2b2lkIGRldl9mcmVlKHN0cnVjdCBrdW5pdF9yZXNvdXJjZSAqcmVzKQ0K
ICAqLw0KIHN0cnVjdCBkcm1fZGV2aWNlICoNCiBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9k
ZXZpY2Uoc3RydWN0IGt1bml0ICp0ZXN0LA0KLQkJCQkgIHUzMiBmZWF0dXJlcywgY2hhciAqbmFt
ZSkNCisJCQkJICB1MzIgZmVhdHVyZXMpDQogew0KIAlzdHJ1Y3Qga3VuaXRfZGV2ICprZGV2Ow0K
IAlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtOw0KQEAgLTYyLDcgKzYzLDcgQEAgZHJtX2t1bml0X2hl
bHBlcl9hbGxvY19kcm1fZGV2aWNlKHN0cnVjdCBrdW5pdCAqdGVzdCwNCiAJc3RydWN0IGRldmlj
ZSAqZGV2Ow0KIAlpbnQgcmV0Ow0KIA0KLQlkZXYgPSBrdW5pdF9hbGxvY19yZXNvdXJjZSh0ZXN0
LCBkZXZfaW5pdCwgZGV2X2ZyZWUsIEdGUF9LRVJORUwsIG5hbWUpOw0KKwlkZXYgPSBrdW5pdF9h
bGxvY19yZXNvdXJjZSh0ZXN0LCBkZXZfaW5pdCwgZGV2X2ZyZWUsIEdGUF9LRVJORUwsIEtVTklU
X0RFVklDRV9OQU1FKTsNCiAJaWYgKCFkZXYpDQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsN
CiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX21vZGVzX3Rlc3QuYyBi
L2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fbW9kZXNfdGVzdC5jDQppbmRleCA2NzIzMDg5ZGZm
OWYuLjM1OTY1YWQ4NjE4OCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1f
bW9kZXNfdGVzdC5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX21vZGVzX3Rlc3Qu
Yw0KQEAgLTIyLDggKzIyLDcgQEAgc3RhdGljIGludCBkcm1fdGVzdF9tb2Rlc19pbml0KHN0cnVj
dCBrdW5pdCAqdGVzdCkNCiAJcHJpdiA9IGt1bml0X2t6YWxsb2ModGVzdCwgc2l6ZW9mKCpwcml2
KSwgR0ZQX0tFUk5FTCk7DQogCUtVTklUX0FTU0VSVF9OT1RfTlVMTCh0ZXN0LCBwcml2KTsNCiAN
Ci0JcHJpdi0+ZHJtID0gZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kcm1fZGV2aWNlKHRlc3QsIERS
SVZFUl9NT0RFU0VULA0KLQkJCQkJCSAgICAgICJkcm0tbW9kZXMtdGVzdCIpOw0KKwlwcml2LT5k
cm0gPSBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2UodGVzdCwgRFJJVkVSX01PREVT
RVQpOw0KIAlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIHByaXYtPmRybSk7DQog
DQogCXRlc3QtPnByaXYgPSBwcml2Ow0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0
cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fcHJv
YmVfaGVscGVyX3Rlc3QuYw0KaW5kZXggODUyMzZmZjQ3NDRmLi5iZTYxYTkyYjc5ZDIgMTAwNjQ0
DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX3Byb2JlX2hlbHBlcl90ZXN0LmMNCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYw0KQEAgLTQw
LDggKzQwLDcgQEAgc3RhdGljIGludCBkcm1fcHJvYmVfaGVscGVyX3Rlc3RfaW5pdChzdHJ1Y3Qg
a3VuaXQgKnRlc3QpDQogCXRlc3QtPnByaXYgPSBwcml2Ow0KIA0KIAlwcml2LT5kcm0gPSBkcm1f
a3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2UodGVzdCwNCi0JCQkJCQkgICAgICBEUklWRVJf
TU9ERVNFVCB8IERSSVZFUl9BVE9NSUMsDQotCQkJCQkJICAgICAgImRybS1wcm9iZS1oZWxwZXIt
dGVzdCIpOw0KKwkJCQkJCSAgICAgIERSSVZFUl9NT0RFU0VUIHwgRFJJVkVSX0FUT01JQyk7DQog
CUtVTklUX0FTU0VSVF9OT1RfRVJSX09SX05VTEwodGVzdCwgcHJpdi0+ZHJtKTsNCiANCiAJY29u
bmVjdG9yID0gJnByaXYtPmNvbm5lY3RvcjsNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
a3VuaXRfaGVscGVycy5oIGIvaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaA0KaW5kZXgg
ZTk4NzBjNzkxMWZlLi42YzEyYjE0MjZiYTAgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2RybS9kcm1f
a3VuaXRfaGVscGVycy5oDQorKysgYi9pbmNsdWRlL2RybS9kcm1fa3VuaXRfaGVscGVycy5oDQpA
QCAtOCw3ICs4LDYgQEAgc3RydWN0IGt1bml0Ow0KIA0KIHN0cnVjdCBkcm1fZGV2aWNlICoNCiBk
cm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2Uoc3RydWN0IGt1bml0ICp0ZXN0LA0KLQkJ
CQkgIHUzMiBmZWF0dXJlcywNCi0JCQkJICBjaGFyICpuYW1lKTsNCisJCQkJICB1MzIgZmVhdHVy
ZXMpOw0KIA0KICNlbmRpZiAvLyBEUk1fS1VOSVRfSEVMUEVSU19IXw0KDQotLSANCmI0IDAuMTAu
MQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
