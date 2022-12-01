Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A75463F39E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:19:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AEDF3F2E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:19:42 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id E23AE3F47D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="J J1+70p";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="l uZR/L5";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.nyi.internal (Postfix) with ESMTP id C5A81580381;
	Thu,  1 Dec 2022 10:15:13 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Thu, 01 Dec 2022 10:15:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907713; x=
	1669914913; bh=oDB2afXY6lkHKaqUoi0wRi3hiF2Hi8xv6xcV2kl0XgE=; b=J
	J1+70pDODrFN9p104zfK4+W64oGRpxJRZ4Fq4+sDfdOD0yHesjMFSS5p6SvYVrY4
	XoSaV1sif8A52rkgBkF/eR/5fuboUhPb/TehhuRgLYXyskhOci2B1+w6WtIvCNH7
	wE6qPPxzwQI5DKw7kgiP10UGdIGeilHwXFHJISFyEhDqPm3zVzvxaM3fdgxNIu+j
	lfiza8Cr/uBSsjTAzGqkLa6Vm6XW5mi2pLh64VOCMLiZ1g8P363MibSOqvQYBWrd
	gOWNmPwRYmSAeP53xxYCgfdS/sSBezoBOOYd3gd5AY1uJtt4T8Jm2yX1wqVNmmKY
	tzIwPPHfbxwbTalTKDb7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907713; x=
	1669914913; bh=oDB2afXY6lkHKaqUoi0wRi3hiF2Hi8xv6xcV2kl0XgE=; b=l
	uZR/L5+9wXpouuqXjTHLl6i7VBR3EFftgIM6wLf9GTwjbuH2eFyqo0aazVTf6fnO
	rBBwgfHWOlO1rFgx3Wh55zobGbOhFbWSnuV0YAJrtGOjSr1x9fra2KPs3GIygxcr
	6gneChCAfUpMR48eGnKFuuJV6NzFj9PXvaIfkR/m0vvfCAFwkhjzdNoegWZl6ppJ
	7l1+yweykLfNJSB6FVnjFuEbAYhDCojA3wn13kteLqsQxStuxtYe6VnHmgI8LBLK
	tmSVleRy3tT0IbeDBGNwMp5sHNoLzUI3j4NaV2G4epWRpHrBzFVHRD7mRYsWa+DD
	Sy2HDeYYkNOyTFJPsWwiQ==
X-ME-Sender: <xms:AcWIY3AUzxmNVJQmqT2Y5NyEMOkFFPcODhUWPrcTbEJ4KHVxAoNLzA>
    <xme:AcWIY9hvvkiY_ACAZJC1edFywIT9mBe0cK4WPuq25xviK2KgRC3kfUOIb07I8Z6e9
    7XMtPcBisxIqukrw-E>
X-ME-Received: <xmr:AcWIYykHEnSvBW1QTWuJQbkn7lnFKSpxcmU7v7AisVBRb-lVm37Rx_IY1xaLvDckzXJQlIqbJ6Zbjf1-m7dn6eQQH5cqxVVfzujh_HU1ML8ttg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:AcWIY5xOywpVkoFQYlZfzGZ-L22bAK0fXaZtFi9r2dE9MD-pqPrk2g>
    <xmx:AcWIY8RkRD1Dxz09SXRJWCEMtWge7LxRosMiiG6rH1lcEQ7cCV0-xQ>
    <xmx:AcWIY8abPeYNGe5rbjjOT5EH15ecjyTaKTY-oN-RQVX5d15rhZS47A>
    <xmx:AcWIY0znQN4yWD1VqgHmvnOt95M0jeQMBx9yTvWqZRk4vWZeJio7rQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:12 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-14-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=5028; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=PmLbO4zADFTtSdsuPA9IBUCP4WoMg3nPuUuT2WyMo0I=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzQe8t9Qz25Q1+exubuM5VLgrydKvn96ZCvKmWpPRaQ1
 fSrpKGVhEONikBVTZIkRNl8Sd2rW6042vnkwc1iZQIYwcHEKwES+XGFkmO3c2td+7JlKwNHz72MKGF
 dxvhLrW5aX+TDD9zfv2UX8XowM39YqZZ5T2bW+aGXJ5p0MdxtcdXOSpz1Qm7c27p7d/Bc2fAA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: E23AE3F47D
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
	URIBL_BLOCKED(0.00)[messagingengine.com:dkim,igalia.com:email,new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HOBUNGERHDSPQPJSX6K7AK6D4J2R3B27
X-Message-ID-Hash: HOBUNGERHDSPQPJSX6K7AK6D4J2R3B27
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 14/20] drm/vc4: crtc: Introduce a lower-level crtc init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HOBUNGERHDSPQPJSX6K7AK6D4J2R3B27/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

VGhlIGN1cnJlbnQgdmM0X2NydGNfaW5pdCgpIGhlbHBlciBhc3N1bWVzIHRoYXQgd2Ugd2lsbCBi
ZSB1c2luZw0KaGFyZHdhcmUgcGxhbmVzIGFuZCBjYWxscyB2YzRfcGxhbmVfaW5pdCgpLg0KDQpX
aGlsZSBpdCdzIGEgcmVhc29uYWJsZSBhc3N1bXB0aW9uLCB3ZSdsbCB3YW50IHRvIG1vY2sgdGhl
IHBsYW5lIGFuZA0KdGh1cyBwcm92aWRlIG91ciBvd24uIExldCdzIGNyZWF0ZSBhIGhlbHBlciB0
aGF0IHdpbGwgdGFrZSB0aGUgcGxhbmUgYXMNCmFuIGFyZ3VtZW50Lg0KDQpSZXZpZXdlZC1ieTog
SmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+DQpSZXZpZXdlZC1i
eTogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT4NClNpZ25lZC1vZmYtYnk6IE1heGlt
ZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL3ZjNC92
YzRfY3J0Yy5jIHwgNzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
DQogZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmggIHwgIDYgKysrKw0KIDIgZmlsZXMgY2hh
bmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9j
cnRjLmMNCmluZGV4IDMzMzUyOWVkM2EwZC4uNWY3ZjUwYWRkNDZlIDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3ZjNC92YzRfY3J0Yy5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3Zj
NF9jcnRjLmMNCkBAIC0xMjg2LDMxICsxMjg2LDM4IEBAIHN0YXRpYyB2b2lkIHZjNF9zZXRfY3J0
Y19wb3NzaWJsZV9tYXNrcyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLA0KIAl9DQogfQ0KIA0KLWlu
dCB2YzRfY3J0Y19pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYsDQotCQkgIHN0cnVjdCB2YzRfY3J0YyAqdmM0X2NydGMsDQotCQkgIGNvbnN0
IHN0cnVjdCB2YzRfY3J0Y19kYXRhICpkYXRhLA0KLQkJICBjb25zdCBzdHJ1Y3QgZHJtX2NydGNf
ZnVuY3MgKmNydGNfZnVuY3MsDQotCQkgIGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19oZWxwZXJfZnVu
Y3MgKmNydGNfaGVscGVyX2Z1bmNzLA0KLQkJICBib29sIGZlZWRzX3R4cCkNCisvKioNCisgKiBf
X3ZjNF9jcnRjX2luaXQgLSBJbml0aWFsaXplcyBhIENSVEMNCisgKiBAZHJtOiBEUk0gRGV2aWNl
DQorICogQHBkZXY6IENSVEMgUGxhdGZvcm0gRGV2aWNlDQorICogQHZjNF9jcnRjOiBDUlRDIE9i
amVjdCB0byBJbml0aWFsaXplDQorICogQGRhdGE6IENvbmZpZ3VyYXRpb24gZGF0YSBhc3NvY2lh
dGVkIHdpdGggdGhpcyBDUlRDDQorICogQHByaW1hcnlfcGxhbmU6IFByaW1hcnkgcGxhbmUgZm9y
IENSVEMNCisgKiBAY3J0Y19mdW5jczogQ2FsbGJhY2tzIGZvciB0aGUgbmV3IENSVEMNCisgKiBA
Y3J0Y19oZWxwZXJfZnVuY3M6IEhlbHBlciBDYWxsYmFja3MgZm9yIHRoZSBuZXcgQ1JUQw0KKyAq
IEBmZWVkc190eHA6IElzIHRoaXMgQ1JUQyBjb25uZWN0ZWQgdG8gdGhlIFRYUD8NCisgKg0KKyAq
IEluaXRpYWxpemVzIG91ciBwcml2YXRlIENSVEMgc3RydWN0dXJlLiBUaGlzIGZ1bmN0aW9uIGlz
IG1vc3RseQ0KKyAqIHJlbGV2YW50IGZvciBLVW5pdCB0ZXN0aW5nLCBhbGwgb3RoZXIgdXNlcnMg
c2hvdWxkIHVzZQ0KKyAqIHZjNF9jcnRjX2luaXQoKSBpbnN0ZWFkLg0KKyAqDQorICogUmV0dXJu
czoNCisgKiAwIG9uIHN1Y2Nlc3MsIGEgbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlLg0K
KyAqLw0KK2ludCBfX3ZjNF9jcnRjX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRybSwNCisJCSAg
ICBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LA0KKwkJICAgIHN0cnVjdCB2YzRfY3J0YyAq
dmM0X2NydGMsDQorCQkgICAgY29uc3Qgc3RydWN0IHZjNF9jcnRjX2RhdGEgKmRhdGEsDQorCQkg
ICAgc3RydWN0IGRybV9wbGFuZSAqcHJpbWFyeV9wbGFuZSwNCisJCSAgICBjb25zdCBzdHJ1Y3Qg
ZHJtX2NydGNfZnVuY3MgKmNydGNfZnVuY3MsDQorCQkgICAgY29uc3Qgc3RydWN0IGRybV9jcnRj
X2hlbHBlcl9mdW5jcyAqY3J0Y19oZWxwZXJfZnVuY3MsDQorCQkgICAgYm9vbCBmZWVkc190eHAp
DQogew0KIAlzdHJ1Y3QgdmM0X2RldiAqdmM0ID0gdG9fdmM0X2Rldihkcm0pOw0KIAlzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMgPSAmdmM0X2NydGMtPmJhc2U7DQotCXN0cnVjdCBkcm1fcGxhbmUgKnBy
aW1hcnlfcGxhbmU7DQogCXVuc2lnbmVkIGludCBpOw0KIAlpbnQgcmV0Ow0KIA0KLQkvKiBGb3Ig
bm93LCB3ZSBjcmVhdGUganVzdCB0aGUgcHJpbWFyeSBhbmQgdGhlIGxlZ2FjeSBjdXJzb3INCi0J
ICogcGxhbmVzLiAgV2Ugc2hvdWxkIGJlIGFibGUgdG8gc3RhY2sgbW9yZSBwbGFuZXMgb24gZWFz
aWx5LA0KLQkgKiBidXQgdG8gZG8gdGhhdCB3ZSB3b3VsZCBuZWVkIHRvIGNvbXB1dGUgdGhlIGJh
bmR3aWR0aA0KLQkgKiByZXF1aXJlbWVudCBvZiB0aGUgcGxhbmUgY29uZmlndXJhdGlvbiwgYW5k
IHJlamVjdCBvbmVzDQotCSAqIHRoYXQgd2lsbCB0YWtlIHRvbyBtdWNoLg0KLQkgKi8NCi0JcHJp
bWFyeV9wbGFuZSA9IHZjNF9wbGFuZV9pbml0KGRybSwgRFJNX1BMQU5FX1RZUEVfUFJJTUFSWSwg
MCk7DQotCWlmIChJU19FUlIocHJpbWFyeV9wbGFuZSkpIHsNCi0JCWRldl9lcnIoZHJtLT5kZXYs
ICJmYWlsZWQgdG8gY29uc3RydWN0IHByaW1hcnkgcGxhbmVcbiIpOw0KLQkJcmV0dXJuIFBUUl9F
UlIocHJpbWFyeV9wbGFuZSk7DQotCX0NCi0NCiAJdmM0X2NydGMtPmRhdGEgPSBkYXRhOw0KIAl2
YzRfY3J0Yy0+cGRldiA9IHBkZXY7DQogCXZjNF9jcnRjLT5mZWVkc190eHAgPSBmZWVkc190eHA7
DQpAQCAtMTM0Miw2ICsxMzQ5LDMxIEBAIGludCB2YzRfY3J0Y19pbml0KHN0cnVjdCBkcm1fZGV2
aWNlICpkcm0sIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsDQogCXJldHVybiAwOw0KIH0N
CiANCitpbnQgdmM0X2NydGNfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2LA0KKwkJICBzdHJ1Y3QgdmM0X2NydGMgKnZjNF9jcnRjLA0KKwkJ
ICBjb25zdCBzdHJ1Y3QgdmM0X2NydGNfZGF0YSAqZGF0YSwNCisJCSAgY29uc3Qgc3RydWN0IGRy
bV9jcnRjX2Z1bmNzICpjcnRjX2Z1bmNzLA0KKwkJICBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfaGVs
cGVyX2Z1bmNzICpjcnRjX2hlbHBlcl9mdW5jcywNCisJCSAgYm9vbCBmZWVkc190eHApDQorew0K
KwlzdHJ1Y3QgZHJtX3BsYW5lICpwcmltYXJ5X3BsYW5lOw0KKw0KKwkvKiBGb3Igbm93LCB3ZSBj
cmVhdGUganVzdCB0aGUgcHJpbWFyeSBhbmQgdGhlIGxlZ2FjeSBjdXJzb3INCisJICogcGxhbmVz
LiAgV2Ugc2hvdWxkIGJlIGFibGUgdG8gc3RhY2sgbW9yZSBwbGFuZXMgb24gZWFzaWx5LA0KKwkg
KiBidXQgdG8gZG8gdGhhdCB3ZSB3b3VsZCBuZWVkIHRvIGNvbXB1dGUgdGhlIGJhbmR3aWR0aA0K
KwkgKiByZXF1aXJlbWVudCBvZiB0aGUgcGxhbmUgY29uZmlndXJhdGlvbiwgYW5kIHJlamVjdCBv
bmVzDQorCSAqIHRoYXQgd2lsbCB0YWtlIHRvbyBtdWNoLg0KKwkgKi8NCisJcHJpbWFyeV9wbGFu
ZSA9IHZjNF9wbGFuZV9pbml0KGRybSwgRFJNX1BMQU5FX1RZUEVfUFJJTUFSWSwgMCk7DQorCWlm
IChJU19FUlIocHJpbWFyeV9wbGFuZSkpIHsNCisJCWRldl9lcnIoZHJtLT5kZXYsICJmYWlsZWQg
dG8gY29uc3RydWN0IHByaW1hcnkgcGxhbmVcbiIpOw0KKwkJcmV0dXJuIFBUUl9FUlIocHJpbWFy
eV9wbGFuZSk7DQorCX0NCisNCisJcmV0dXJuIF9fdmM0X2NydGNfaW5pdChkcm0sIHBkZXYsIHZj
NF9jcnRjLCBkYXRhLCBwcmltYXJ5X3BsYW5lLA0KKwkJCSAgICAgICBjcnRjX2Z1bmNzLCBjcnRj
X2hlbHBlcl9mdW5jcywgZmVlZHNfdHhwKTsNCit9DQorDQogc3RhdGljIGludCB2YzRfY3J0Y19i
aW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lkICpkYXRh
KQ0KIHsNCiAJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IHRvX3BsYXRmb3JtX2Rldmlj
ZShkZXYpOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmgNCmluZGV4IDA1MWMyZTNiNmQ0My4uY2QyMDAyZmZm
MTE1IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmgNCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS92YzQvdmM0X2Rydi5oDQpAQCAtODg4LDYgKzg4OCwxMiBAQCBpbnQgdmM0
X2JvX2RlYnVnZnNfaW5pdChzdHJ1Y3QgZHJtX21pbm9yICptaW5vcik7DQogLyogdmM0X2NydGMu
YyAqLw0KIGV4dGVybiBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHZjNF9jcnRjX2RyaXZlcjsNCiBp
bnQgdmM0X2NydGNfZGlzYWJsZV9hdF9ib290KHN0cnVjdCBkcm1fY3J0YyAqY3J0Yyk7DQoraW50
IF9fdmM0X2NydGNfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2LA0KKwkJICAgIHN0cnVjdCB2YzRfY3J0YyAqdmM0X2NydGMsIGNvbnN0IHN0
cnVjdCB2YzRfY3J0Y19kYXRhICpkYXRhLA0KKwkJICAgIHN0cnVjdCBkcm1fcGxhbmUgKnByaW1h
cnlfcGxhbmUsDQorCQkgICAgY29uc3Qgc3RydWN0IGRybV9jcnRjX2Z1bmNzICpjcnRjX2Z1bmNz
LA0KKwkJICAgIGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19oZWxwZXJfZnVuY3MgKmNydGNfaGVscGVy
X2Z1bmNzLA0KKwkJICAgIGJvb2wgZmVlZHNfdHhwKTsNCiBpbnQgdmM0X2NydGNfaW5pdChzdHJ1
Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LA0KIAkJICBz
dHJ1Y3QgdmM0X2NydGMgKnZjNF9jcnRjLCBjb25zdCBzdHJ1Y3QgdmM0X2NydGNfZGF0YSAqZGF0
YSwNCiAJCSAgY29uc3Qgc3RydWN0IGRybV9jcnRjX2Z1bmNzICpjcnRjX2Z1bmNzLA0KDQotLSAN
CmI0IDAuMTAuMQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
