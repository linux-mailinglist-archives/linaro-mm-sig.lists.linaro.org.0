Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7F463F37C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:15:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C21823F4FC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:15:54 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 5E7273F2E7
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:14:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="j wykG5q";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="V ZgM+eC";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.nyi.internal (Postfix) with ESMTP id 42B2D58039C;
	Thu,  1 Dec 2022 10:14:48 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Thu, 01 Dec 2022 10:14:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907688; x=
	1669914888; bh=oFRyfh1Kb6qHZQvprIAbuyK/sPcUDfbwCdy1F4UYDQc=; b=j
	wykG5qUBixaGipYp4e4m8BSLzey9gcdbGmT+N4/uawWyEIAyqu4UqTdkzUybIwNJ
	CjRiLHWwNjbaIXQVTiDdRUd0BXJxGXyl6lcUlYmOMSgMAymfVABxwxNjPXEDkPjF
	em8KWk6JYWabXY4dPQHU5bhqiiBTuHY0V3SkRu6HWXOlVPwB7CCOr9at/9xE9Z3K
	QEZTskAX+2TarVId9YH3i7Y3nHga4iXtp307lHaalGhzHOJHJqdciEcHTOHOZQ63
	tkEOPCpxGahep7x5D2r0u3Clk/NpVEo0KMPLKlXSUWB64mctzEknl5kt+vdL5JFC
	wwALuYfVqrsr8AASZDV4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907688; x=
	1669914888; bh=oFRyfh1Kb6qHZQvprIAbuyK/sPcUDfbwCdy1F4UYDQc=; b=V
	ZgM+eCsydbpbYPxYm2vkdQoVJgwg8g0T2qlpNvjmRk90MzDYjVsKU90N9RXh+khQ
	pXd5YMkqzBTFL2KDNLEiZnvLCeWFKr1O5AhiQU8DezmdPDr7HzzaDilBmMiMRepH
	98bpdOI6IZ28L9CBc5kKTPT7D2ttCfqNd1srrQrO6iF303RCu/rSmUIeZ25tUzzG
	qAQBl7WGDkILz7P+DLBISCalqGGcQdHCCFAXRjPuBXZGJZGb3lG4udGsPUBMYI8h
	yuJYMaYALh1di82hPmjrTbLTQdO/no2Tmb0qe0ytFJUPJr7apedlM/Us613OrOuo
	Hl19eNoktxTdHrHI2bIyw==
X-ME-Sender: <xms:6MSIY64v_TAdDE4Tx9olwWvECYC3kmLRloevSlZbfJ4AwxjXRXa33w>
    <xme:6MSIYz69AXXbkCabsoGIbBkReHi4etm11eYQ6DOoJMEezYvZQsMGO0wVsm6GXW7WS
    4D0N3RzVEdoV3ZRYZY>
X-ME-Received: <xmr:6MSIY5efS5Kv1HfiAe5R-hhNvLkd2Y8JkYsgGC5ZvH6hRljQurEGmmZGLnjb-AMWeBVAzrfRnAhOxJBlWPbYKCXHdKFWxEwb-rzNOFrvtsT3cA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffuggfgtgfkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedvgfevjefhtdetveevhfelieeuueetgfdvgeevkeegudejffegfffgtedt
    leelhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6MSIY3IJrJHiTAEAcjs34n6nOIFn49qF6eSN9FgOE8SfCrDjuKhAgw>
    <xmx:6MSIY-I1GGQuXXSmTPjz7b0PTlbaalPVh0rH4j4ZkPRYZyZcVxQm3A>
    <xmx:6MSIY4yZ9od7iaT8MEWhCoQjwsE1CWLbY5dUQidkDCjaHDgiRqZH0Q>
    <xmx:6MSIY1oT8qtlDa4V1KMjjYxhQXK2qhKgoAXiGxx8TpG16ArdewASpA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:14:47 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20221123-rpi-kunit-tests-v3-3-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=sMZqQY4X/XQsf610ZjIZL0jnwkS6xkiB0Fed3TvkjBI=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzRKDJe/myw1/WfoLKYzh8LFZj20mtub8Tq/I42z/s7r
 VNUPHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZhI3GlGhgOebfsWvKzcv27JPNuJNt
 9+hL311uzL3vVPQifnxHpmzsmMDE9lk4SajzreP/y06NXGK5eq3A6kfsrJm37kS5aHrPT7XTwA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 5E7273F2E7
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
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,igalia.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BK6YW6E332R3RP2EAMSD5TRZG4AWVMC3
X-Message-ID-Hash: BK6YW6E332R3RP2EAMSD5TRZG4AWVMC3
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 03/20] drm/tests: helpers: Document drm_kunit_device_init()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BK6YW6E332R3RP2EAMSD5TRZG4AWVMC3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

Q29tbWl0IDQ0YTM5MjgzMjRlOSAoImRybS90ZXN0czogQWRkIEt1bml0IEhlbHBlcnMiKSBpbnRy
b2R1Y2VkIHRoZQ0KZHJtX2t1bml0X2RldmljZV9pbml0KCkgZnVuY3Rpb24gYnV0IGRpZG4ndCBk
b2N1bWVudCBpdCBwcm9wZXJseS4gQWRkDQp0aGF0IGRvY3VtZW50YXRpb24uDQoNClJldmlld2Vk
LWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPg0KU2lnbmVkLW9mZi1ieTogTWF4
aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vdGVz
dHMvZHJtX2t1bml0X2hlbHBlcnMuYyB8IDE3ICsrKysrKysrKysrKysrKysrDQogMSBmaWxlIGNo
YW5nZWQsIDE3IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90
ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5p
dF9oZWxwZXJzLmMNCmluZGV4IDY2MDBhNGRiMzE1OC4uOWVkM2NmYzJhYzAzIDEwMDY0NA0KLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jDQpAQCAtMzUsNiArMzUsMjMgQEAg
c3RhdGljIHZvaWQgZGV2X2ZyZWUoc3RydWN0IGt1bml0X3Jlc291cmNlICpyZXMpDQogCXJvb3Rf
ZGV2aWNlX3VucmVnaXN0ZXIoZGV2KTsNCiB9DQogDQorLyoqDQorICogZHJtX2t1bml0X2Rldmlj
ZV9pbml0IC0gQWxsb2NhdGVzIGEgbW9jayBEUk0gZGV2aWNlIGZvciBLVW5pdCB0ZXN0cw0KKyAq
IEB0ZXN0OiBUaGUgdGVzdCBjb250ZXh0IG9iamVjdA0KKyAqIEBmZWF0dXJlczogTW9ja2VkIERS
TSBkZXZpY2UgZHJpdmVyIGZlYXR1cmVzDQorICogQG5hbWU6IE5hbWUgb2YgdGhlIHN0cnVjdCAm
ZGV2aWNlIHRvIGFsbG9jYXRlDQorICoNCisgKiBUaGlzIGZ1bmN0aW9uIGFsbG9jYXRlcyBhIG5l
dyBzdHJ1Y3QgJmRldmljZSwgY3JlYXRlcyBhIHN0cnVjdA0KKyAqICZkcm1fZHJpdmVyIGFuZCB3
aWxsIGNyZWF0ZSBhIHN0cnVjdCAmZHJtX2RldmljZSB1c2luZyBib3RoLg0KKyAqDQorICogVGhl
IGRldmljZSBhbmQgZHJpdmVyIGFyZSB0aWVkIHRvIHRoZSBAdGVzdCBjb250ZXh0IGFuZCB3aWxs
IGdldA0KKyAqIGNsZWFuZWQgYXQgdGhlIGVuZCBvZiB0aGUgdGVzdC4gVGhlIGRybV9kZXZpY2Ug
aXMgYWxsb2NhdGVkIHRocm91Z2gNCisgKiBkZXZtX2RybV9kZXZfYWxsb2MoKSBhbmQgd2lsbCB0
aHVzIGJlIGZyZWVkIHRocm91Z2ggYSBkZXZpY2UtbWFuYWdlZA0KKyAqIHJlc291cmNlLg0KKyAq
DQorICogUmV0dXJuczoNCisgKiBBIHBvaW50ZXIgdG8gdGhlIG5ldyBkcm1fZGV2aWNlLCBvciBh
biBFUlJfUFRSKCkgb3RoZXJ3aXNlLg0KKyAqLw0KIHN0cnVjdCBkcm1fZGV2aWNlICpkcm1fa3Vu
aXRfZGV2aWNlX2luaXQoc3RydWN0IGt1bml0ICp0ZXN0LCB1MzIgZmVhdHVyZXMsIGNoYXIgKm5h
bWUpDQogew0KIAlzdHJ1Y3Qga3VuaXRfZGV2ICprZGV2Ow0KDQotLSANCmI0IDAuMTAuMQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
