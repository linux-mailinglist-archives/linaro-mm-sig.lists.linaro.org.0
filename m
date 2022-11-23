Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6FF63A13C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:31:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C6463EF21
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:31:28 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com [64.147.123.27])
	by lists.linaro.org (Postfix) with ESMTPS id 0023C3ED34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:28:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b=mu2K0anA;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=EehV9e84;
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.27 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.west.internal (Postfix) with ESMTP id 58F6E2B069AE;
	Wed, 23 Nov 2022 10:28:33 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 23 Nov 2022 10:28:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1669217312; x=1669224512; bh=sfcj948ykx
	6duQ3ByisVajLNdP1+tXdvy57uQ1P6vrI=; b=mu2K0anAimZ+hLqPX//LMY5PyF
	UlZIA9jmYPgPWxUv0YVkHB6g/vg6AIQc42RWPMbcW0NgSTlr3PXcKB4q0+s2+rvx
	btDvzSiulnvyQvFUg0jOcoEpwM1Pjp0reEgnZW8StWXhW9hruYE/hUxV3MwkA2j3
	OxgNyQbWtdvBMBa0dFddKy4bQ41UIXgKgY8gm79nLkRvgdh6Kou5CFgIl5MglYq9
	K+XnozlV4Z2V8u3VDLo/Y7YiGp6pFn8a5GFqomP5dxLF8iMco1l4T+IiorZCNs9I
	oW8z1enLgoZ6AnTZdZjhX2ZQWXMb9/zna3k4WT7noiX7L64WF44XSjLtBlrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1669217312; x=1669224512; bh=sfcj948ykx6du
	Q3ByisVajLNdP1+tXdvy57uQ1P6vrI=; b=EehV9e84rV4w+tMkt8QY/07bJcKk8
	hBVH35AHsuJs69XRNxe0CoZwL8RYWaZOqU14c+faYaAQYG6L6tWsE7jvs1Q+zu2i
	UuNQyj3cA5bW/Wo7GnzTCBSzd19hQOu/TP2wr6D2U5p0Aaz7u3QglyeIXz6MEFB9
	Fgh0ptvtWIx3reYm1QRFu6Qy74i0dueLkLRKAuBv5G/PGQaroDQduQVeJ0anqw/S
	KaoqQR3yNYEakSi2CCbxJGvawDTbS+I2EDbesW+1kr5eBSXqUg8tJCimSNm5u6XO
	D2wawI4iJZHZnr8X3kHHVW1h5ovvwOHWx/dZga/SWcE76YMhMRsgjP+Kw==
X-ME-Sender: <xms:IDx-Yz2XkZfU3cJaXmkhE6TxOLefKWzLjxIcQ-xqMPtWEqUk54a59g>
    <xme:IDx-YyFPEPE8OVOSh9GfdTRu_ZAGT9s3ifcr2j6P82xBvJLSufDTyMRoYzcT54KhJ
    3DtOckCP3ScGonbWp0>
X-ME-Received: <xmr:IDx-Yz6v1dICxHCjOl2RVIXb7fuOASbqmZE-SO17LFxhsk7fkX-xJy_WcnjGNxrTUDJ9EncwK2paiwUGRRXzn1MQaBavx4p4lcQaSwgj1_bklg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedriedugdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefugggtgffhfffkvfevofesthekredtredtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvheefjeethfeggedugeevjeeiteefueegheevffetjeekudefleetuddtueeg
    heenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:IDx-Y429eFYFpfTLnW82gx5JBeX1N_1J0K7kr6eWRFq2XjGEJpm90Q>
    <xmx:IDx-Y2En9Yu2an2SwMyqneimqllQoUbvQpn7iOvXb9BP6J6shHBe4g>
    <xmx:IDx-Y5-GFcV88kcCQa4Y_D0xcRFa0jWrjBttRrdusQLrdGtfUC1wAg>
    <xmx:IDx-Y4lfubpiTrFExdogPC3SE7PYWs8C_1qaLEDgv2-dX9FcPPpW5dJ5qlI>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Nov 2022 10:28:31 -0500 (EST)
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-b4-tracking: H4sIAHY7fmMC/w3LQQqEMAwAwK9IzgZsKlj9TXSDBiVKU72If98e5zAvuGQVh6l5IcujrqdVhLaBZW
 NbBfVXDdQRhUAR86W436YFi3hxTAPHlPqReIhQ18wuOGe2ZavP7uP4vj8lxm4IZgAAAA==
From: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 23 Nov 2022 16:25:42 +0100
Message-Id: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=5288; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=0zXO9W25DSsn0o8dbcsN08cbQfO2IsUfYCuV/Qka/vc=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMl11lXyN5ckHluWv+WjAX/qNrXsSc3lu9t7Nx9dJyqRlqAa
 3vWzo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABNpTWX4p9+ZfY1b/1mhiCf7IhGDu4
 XXucIkeXaKbRHNv5z1addlVYb/jhc+vt7uk5fa9TIhzzU8QzJyeXf9nNawjde6O71/vC7hAwA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 0023C3ED34
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.27];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wnew2-smtp.messagingengine.com:rdns,wnew2-smtp.messagingengine.com:helo];
	RCPT_COUNT_TWELVE(0.00)[18];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WEMJDWA3P4H5F7HIJQ47YEKWFPKY7YCV
X-Message-ID-Hash: WEMJDWA3P4H5F7HIJQ47YEKWFPKY7YCV
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:31:20 +0000
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 00/24] drm: Introduce Kunit Tests to VC4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WEMJDWA3P4H5F7HIJQ47YEKWFPKY7YCV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

SGksDQoNClRoaXMgc2VyaWVzIGludHJvZHVjZSBLdW5pdCB0ZXN0cyB0byB0aGUgdmM0IEtNUyBk
cml2ZXIsIGJ1dCB1bmxpa2Ugd2hhdCB3ZQ0KaGF2ZSBiZWVuIGRvaW5nIHNvIGZhciBpbiBLTVMs
IGl0IGFjdHVhbGx5IHRlc3RzIHRoZSBhdG9taWMgbW9kZXNldHRpbmcgY29kZS4NCg0KSW4gb3Jk
ZXIgdG8gZG8gc28sIEkndmUgaGFkIHRvIGltcHJvdmUgYSBmYWlyIGJpdCBvbiB0aGUgS3VuaXQg
aGVscGVycyBhbHJlYWR5DQpmb3VuZCBpbiB0aGUgdHJlZSBpbiBvcmRlciB0byByZWdpc3RlciBh
IGZ1bGwgYmxvd24gYW5kIHNvbWV3aGF0IGZ1bmN0aW9uYWwgS01TDQpkcml2ZXIuDQoNCkl0J3Mg
b2YgY291cnNlIHJlbHlpbmcgb24gYSBtb2NrIHNvIHRoYXQgd2UgY2FuIHRlc3QgaXQgYW55d2hl
cmUuIFRoZSBtb2NraW5nDQphcHByb2FjaCBjcmVhdGVkIGEgbnVtYmVyIG9mIGlzc3VlcywgdGhl
IG1haW4gb25lIGJlaW5nIHRoYXQgd2UgbmVlZCB0byBjcmVhdGUNCmEgZGVjZW50IG1vY2sgaW4g
dGhlIGZpcnN0IHBsYWNlLCBzZWUgcGF0Y2ggMjIuIFRoZSBiYXNpYyBpZGVhIGlzIHRoYXQgSQ0K
Y3JlYXRlZCBzb21lIHN0cnVjdHVyZXMgdG8gcHJvdmlkZSBhIGRlY2VudCBhcHByb3hpbWF0aW9u
IG9mIHRoZSBhY3R1YWwNCmhhcmR3YXJlLCBhbmQgdGhhdCB3b3VsZCBzdXBwb3J0IGJvdGggbWFq
b3IgYXJjaGl0ZWN0dXJlcyBzdXBwb3J0ZWQgYnkgdmM0Lg0KDQpUaGlzIGlzIG9mIGNvdXJzZSBt
ZWFudCB0byBldm9sdmUgb3ZlciB0aW1lIGFuZCBzdXBwb3J0IG1vcmUgdGVzdHMsIGJ1dCBJJ3Zl
DQpmb2N1c2VkIG9uIHRlc3RpbmcgdGhlIEhWUyBGSUZPIGFzc2lnbm1lbnQgY29kZSB3aGljaCBp
cyBmYWlybHkgdHJpY2t5IChhbmQgdGhlDQp0ZXN0cyBoYXZlIGFjdHVhbGx5IHJldmVhbGVkIG9u
ZSBtb3JlIGJ1ZyB3aXRoIG91ciBjdXJyZW50IGltcGxlbWVudGF0aW9uKS4gSQ0KdXNlZCB0byBo
YXZlIGEgdXNlcnNwYWNlIGltcGxlbWVudGF0aW9uIG9mIHRob3NlIHRlc3RzLCB3aGVyZSBJIHdv
dWxkIGNvcHkgYW5kDQpwYXN0ZSB0aGUga2VybmVsIGNvZGUgYW5kIHJ1biB0aGUgdGVzdHMgb24g
YSByZWd1bGFyIGJhc2lzLiBJdCdzIHdhcyBvYnZpb3VzbHkNCmZhaXJseSBzdWJvcHRpbWFsLCBz
byBpdCBzZWVtZWQgbGlrZSB0aGUgcGVyZmVjdCB0ZXN0YmVkIGZvciB0aGF0IHNlcmllcy4NCg0K
TGV0IG1lIGtub3cgd2hhdCB5b3UgdGhpbmssDQpNYXhpbWUNCg0KVG86IERhdmlkIEFpcmxpZSA8
YWlybGllZEBnbWFpbC5jb20+DQpUbzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPg0K
VG86IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
DQpUbzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KVG86IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KQ2M6IERhdmUgU3RldmVuc29uIDxkYXZlLnN0
ZXZlbnNvbkByYXNwYmVycnlwaS5jb20+DQpDYzogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxq
YXZpZXJtQHJlZGhhdC5jb20+DQpDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhm
b3VuZGF0aW9uLm9yZz4NCkNjOiBNYcOtcmEgQ2FuYWwgPG1haXJhY2FuYWxAcmlzZXVwLm5ldD4N
CkNjOiBCcmVuZGFuIEhpZ2dpbnMgPGJyZW5kYW4uaGlnZ2luc0BsaW51eC5kZXY+DQpDYzogRGF2
aWQgR293IDxkYXZpZGdvd0Bnb29nbGUuY29tPg0KQ2M6IGxpbnV4LWtzZWxmdGVzdEB2Z2VyLmtl
cm5lbC5vcmcNCkNjOiBrdW5pdC1kZXZAZ29vZ2xlZ3JvdXBzLmNvbQ0KQ2M6IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnDQpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVj
aD4NCg0KLS0tDQpNYXhpbWUgUmlwYXJkICgyNCk6DQogICAgICBkcm0vdGVzdHM6IGhlbHBlcnM6
IFJlbmFtZSB0aGUgZGV2aWNlIGluaXQgaGVscGVyDQogICAgICBkcm0vdGVzdHM6IGhlbHBlcnM6
IFJlbW92ZSB0aGUgbmFtZSBwYXJhbWV0ZXINCiAgICAgIGRybS90ZXN0czogaGVscGVyczogQ3Jl
YXRlIHRoZSBkZXZpY2UgaW4gYW5vdGhlciBmdW5jdGlvbg0KICAgICAgZHJtL3Rlc3RzOiBoZWxw
ZXJzOiBTd2l0Y2ggdG8gYSBwbGF0Zm9ybV9kZXZpY2UNCiAgICAgIGRybS90ZXN0czogaGVscGVy
czogTWFrZSBzdXJlIHRoZSBkZXZpY2UgaXMgYm91bmQNCiAgICAgIGRybS90ZXN0czoga3VuaXQ6
IEFsbG93IGZvciBhIGN1c3RvbSBkZXZpY2Ugc3RydWN0IHRvIGJlIGFsbG9jYXRlZA0KICAgICAg
ZHJtL3Rlc3RzOiBoZWxwZXJzOiBBbGxvdyB0byBwYXNzIGEgY3VzdG9tIGRybV9kcml2ZXINCiAg
ICAgIGRybS90ZXN0czogQWRkIGEgdGVzdCBmb3IgRFJNIG1hbmFnZWQgYWN0aW9ucw0KICAgICAg
ZHJtL2F0b21pYzogQ29uc3RpZnkgdGhlIG9sZC9uZXcgc3RhdGUgYWNjZXNzb3JzDQogICAgICBk
cm0vdmM0OiBrbXM6IFNvcnQgdGhlIENSVENzIGJ5IG91dHB1dCBiZWZvcmUgYXNzaWduaW5nIHRo
ZW0NCiAgICAgIGRybS92YzQ6IENvbnN0aWZ5IGNvbnRhaW5lcl9vZiB3cmFwcGVycw0KICAgICAg
ZHJtL3ZjNDogTW92ZSBIVlMgc3RhdGUgdG8gbWFpbiBoZWFkZXINCiAgICAgIGRybS92YzQ6IGtt
czogQ29uc3RpZnkgdGhlIEhWUyBvbGQvbmV3IHN0YXRlIGhlbHBlcnMNCiAgICAgIGRybS92YzQ6
IHR4cDogUmVvcmRlciB0aGUgdmFyaWFibGUgYXNzaWdubWVudHMNCiAgICAgIGRybS92YzQ6IEFk
ZCBUWFAgZW5jb2RlciB0eXBlDQogICAgICBkcm0vdmM0OiB0eHA6IEluaXRpYWxpc2UgdGhlIENS
VEMgYmVmb3JlIHRoZSBlbmNvZGVyIGFuZCBjb25uZWN0b3INCiAgICAgIGRybS92YzQ6IGNydGM6
IFBhc3MgdGhlIGRldmljZSBhbmQgZGF0YSBpbiB2YzRfY3J0Y19pbml0DQogICAgICBkcm0vdmM0
OiBjcnRjOiBJbnRyb2R1Y2UgYSBsb3dlci1sZXZlbCBjcnRjIGluaXQgaGVscGVyDQogICAgICBk
cm0vdmM0OiBjcnRjOiBNYWtlIGVuY29kZXIgbG9va3VwIGhlbHBlciBwdWJsaWMNCiAgICAgIGRy
bS92YzQ6IGNydGM6IFByb3ZpZGUgYSBDUlRDIG5hbWUNCiAgICAgIGRybS92YzQ6IGh2czogUHJv
dmlkZSBhIGZ1bmN0aW9uIHRvIGluaXRpYWxpemUgdGhlIEhWUyBzdHJ1Y3R1cmUNCiAgICAgIGRy
bS92YzQ6IHRlc3RzOiBJbnRyb2R1Y2UgYSBtb2NraW5nIGluZnJhc3RydWN0dXJlDQogICAgICBk
cm0vdmM0OiB0ZXN0czogRmFpbCB0aGUgY3VycmVudCB0ZXN0IGlmIHdlIGFjY2VzcyBhIHJlZ2lz
dGVyDQogICAgICBkcm0vdmM0OiB0ZXN0czogQWRkIHVuaXQgdGVzdCBzdWl0ZSBmb3IgdGhlIFBW
IG11eGluZw0KDQogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWMuYyAgICAgICAgICAgICAgICAg
ICAgfCAgMTIgKy0NCiBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvTWFrZWZpbGUgICAgICAgICAgICAg
ICAgICB8ICAgMSArDQogZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9jbGllbnRfbW9kZXNldF90
ZXN0LmMgfCAgMTYgKy0NCiBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMu
YyAgICAgICB8IDExNiArKystLQ0KIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVs
cGVycy5oICAgICAgIHwgIDM5ICstDQogZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9tYW5hZ2Vk
X3Rlc3QuYyAgICAgICAgfCAgNjggKysrDQogZHJpdmVycy9ncHUvZHJtL3ZjNC9LY29uZmlnICAg
ICAgICAgICAgICAgICAgICAgfCAgMTUgKw0KIGRyaXZlcnMvZ3B1L2RybS92YzQvTWFrZWZpbGUg
ICAgICAgICAgICAgICAgICAgIHwgICAxICsNCiBkcml2ZXJzL2dwdS9kcm0vdmM0L3Rlc3RzLy5r
dW5pdGNvbmZpZyAgICAgICAgICB8ICAxNCArDQogZHJpdmVycy9ncHUvZHJtL3ZjNC90ZXN0cy9N
YWtlZmlsZSAgICAgICAgICAgICAgfCAgIDggKw0KIGRyaXZlcnMvZ3B1L2RybS92YzQvdGVzdHMv
dmM0X21vY2suYyAgICAgICAgICAgIHwgMTc0ICsrKysrKysNCiBkcml2ZXJzL2dwdS9kcm0vdmM0
L3Rlc3RzL3ZjNF9tb2NrLmggICAgICAgICAgICB8ICA1OCArKysNCiBkcml2ZXJzL2dwdS9kcm0v
dmM0L3Rlc3RzL3ZjNF9tb2NrX2NydGMuYyAgICAgICB8ICAzOSArKw0KIGRyaXZlcnMvZ3B1L2Ry
bS92YzQvdGVzdHMvdmM0X21vY2tfb3V0cHV0LmMgICAgIHwgIDk3ICsrKysNCiBkcml2ZXJzL2dw
dS9kcm0vdmM0L3Rlc3RzL3ZjNF9tb2NrX3BsYW5lLmMgICAgICB8ICA0NSArKw0KIGRyaXZlcnMv
Z3B1L2RybS92YzQvdGVzdHMvdmM0X3Rlc3RfcHZfbXV4aW5nLmMgIHwgNjI0ICsrKysrKysrKysr
KysrKysrKysrKysrKw0KIGRyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2NydGMuYyAgICAgICAgICAg
ICAgICAgIHwgMTE5ICsrKy0tDQogZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHBpLmMgICAgICAg
ICAgICAgICAgICAgfCAgMTMgKy0NCiBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuYyAgICAg
ICAgICAgICAgICAgICB8ICAgNCArLQ0KIGRyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Rydi5oICAg
ICAgICAgICAgICAgICAgIHwgMTEzICsrKystDQogZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHNp
LmMgICAgICAgICAgICAgICAgICAgfCAgIDkgKy0NCiBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9o
ZG1pX3JlZ3MuaCAgICAgICAgICAgICB8ICAgNCArDQogZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRf
aHZzLmMgICAgICAgICAgICAgICAgICAgfCAgODEgKy0tDQogZHJpdmVycy9ncHUvZHJtL3ZjNC92
YzRfa21zLmMgICAgICAgICAgICAgICAgICAgfCAxMzggKysrLS0tDQogZHJpdmVycy9ncHUvZHJt
L3ZjNC92YzRfdHhwLmMgICAgICAgICAgICAgICAgICAgfCAgNjYgKystDQogZHJpdmVycy9ncHUv
ZHJtL3ZjNC92YzRfdmVjLmMgICAgICAgICAgICAgICAgICAgfCAgMTMgKy0NCiBpbmNsdWRlL2Ry
bS9kcm1fYXRvbWljLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAzMiArLQ0KIDI3IGZpbGVz
IGNoYW5nZWQsIDE2NzggaW5zZXJ0aW9ucygrKSwgMjQxIGRlbGV0aW9ucygtKQ0KLS0tDQpiYXNl
LWNvbW1pdDogMzVjM2EyZDAyZjBkYzE1M2E1ZjJmMzA0YmEzM2UxNDM2YjZhOGQ4Zg0KY2hhbmdl
LWlkOiAyMDIyMTEyMy1ycGkta3VuaXQtdGVzdHMtODdhMzg4NDkyYTczDQoNCkJlc3QgcmVnYXJk
cywNCi0tIA0KTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
