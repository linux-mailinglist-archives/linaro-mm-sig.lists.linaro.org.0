Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3979A6C4311
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:23:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 484003EBC6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:23:10 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id AC39C3F473
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 08:23:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Ulun32Ya;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5777762220;
	Fri, 17 Mar 2023 08:23:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72552C433D2;
	Fri, 17 Mar 2023 08:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679041382;
	bh=eVjVeNRWTWrNvZ0ADJpOpPfGExYmn5HJ+ecNEWoPDEg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ulun32YaRazjRkzxIZjPbqKxF6ImcLWBmaPIvepaMqbz8of7ETiXZcWkPs6RE3JxL
	 2M1h8mkmBcoPxQ3wJmDd3ceuDE2Zwt59R7NXQiUEs1SWKUQfoADEX68QjACH/nQf7n
	 KsFILlJiZoHeCWYwoj/9YwQv2XozshXqfLSHMLNVpr9+mjKDSxUkgC6GR4EFLLay++
	 sze/f/kNYnk6DAF3roBOckVZdzWQyQNZEdYtVSYsZIzOfxE+esmve0pKaeAJ6xLEzi
	 zp8UluWatlfV2ZVCj8bn144UDVaep1UKS5v12Kf5UWqBKO/Q+IrwccbSgwhpbrYd4A
	 xlC/nXQYYkTTA==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 17 Mar 2023 08:16:59 +0000
Message-Id: <20230317081718.2650744-19-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
In-Reply-To: <20230317081718.2650744-1-lee@kernel.org>
References: <20230317081718.2650744-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AC39C3F473
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,lists.linaro.org];
	URIBL_BLOCKED(0.00)[linaro.org:email,amd.com:email,dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo,lists.freedesktop.org:email,ffwll.ch:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EGWO7JCRAOABTWYGPYZKTPEEN5GBKU32
X-Message-ID-Hash: EGWO7JCRAOABTWYGPYZKTPEEN5GBKU32
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:21:08 +0000
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, amd-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 18/37] drm/amd/amdgpu/amdgpu_vce: Provide description for amdgpu_vce_validate_bo()'s 'p' param
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EGWO7JCRAOABTWYGPYZKTPEEN5GBKU32/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmNlLmM6NTk5OiB3YXJuaW5nOiBGdW5jdGlv
biBwYXJhbWV0ZXIgb3IgbWVtYmVyICdwJyBub3QgZGVzY3JpYmVkIGluICdhbWRncHVfdmNlX3Zh
bGlkYXRlX2JvJw0KDQpDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29t
Pg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6
ICJQYW4sIFhpbmh1aSIgPFhpbmh1aS5QYW5AYW1kLmNvbT4NCkNjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAZ21haWwuY29tPg0KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCkNj
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6IGFtZC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
Q2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZw0KU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4NCi0t
LQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92Y2UuYyB8IDEgKw0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3ZjZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3ZjZS5jDQppbmRleCAyZmI2MTQxMGIxYzAyLi5jNGQ2NWFkZTVjMDBhIDEwMDY0NA0KLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZjZS5jDQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmNlLmMNCkBAIC01ODUsNiArNTg1LDcgQEAgc3Rh
dGljIGludCBhbWRncHVfdmNlX2dldF9kZXN0cm95X21zZyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJp
bmcsIHVpbnQzMl90IGhhbmRsZSwNCiAvKioNCiAgKiBhbWRncHVfdmNlX3ZhbGlkYXRlX2JvIC0g
bWFrZSBzdXJlIG5vdCB0byBjcm9zcyA0R0IgYm91bmRhcnkNCiAgKg0KKyAqIEBwOiBwYXJzZXIg
Y29udGV4dA0KICAqIEBpYjogaW5kaXJlY3QgYnVmZmVyIHRvIHVzZQ0KICAqIEBsbzogYWRkcmVz
cyBvZiBsb3dlciBkd29yZA0KICAqIEBoaTogYWRkcmVzcyBvZiBoaWdoZXIgZHdvcmQNCi0tIA0K
Mi40MC4wLnJjMS4yODQuZzg4MjU0ZDUxYzUtZ29vZw0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
