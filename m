Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0440F70314A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 May 2023 17:17:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A07B44352
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 May 2023 15:17:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D3A2B3EFA0
	for <linaro-mm-sig@lists.linaro.org>; Sat,  6 May 2023 03:09:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Oi4A+bM3;
	spf=pass (lists.linaro.org: domain of chenhuacai@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=chenhuacai@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 80C1964240
	for <linaro-mm-sig@lists.linaro.org>; Sat,  6 May 2023 03:09:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56394C433A1
	for <linaro-mm-sig@lists.linaro.org>; Sat,  6 May 2023 03:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683342556;
	bh=94DSp8k+H3J+AqmROh/Y6LXMjAfEDuNgrjATTUqIGf0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Oi4A+bM3GJYMILFGv9WW2BLv73UjF4glWlr9rNrPlG4q2hxKa1PVStT77yBASYe+i
	 mRna95Xpo0cXMDq+kLuwMf7YEJd6s+Ng82m+AjTtDUd1+w2ueB0UKGaWBYNCRKNlQ5
	 aSaTyJZQM9yaEZpWQl9gPn0u4wMa2vYSTp7d7g5+6rxZJY63VNcMGC1FMdM6WINudX
	 wNRi2C/MSuxHjKRZzXJqB3NBk2yFCyEl0qS5KCRY/6yfzVvL1zvzwI3NCFtUfPv6bI
	 eAw026lpC2qCHucsoZiYoJ++/CDr6gePHHdCxIPrAd2eKs0CRe6YEq9wcaXlYYcX7n
	 xt1eDaqzRv14g==
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-965ab8ed1fcso440627366b.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 May 2023 20:09:16 -0700 (PDT)
X-Gm-Message-State: AC+VfDwTmM6iKnGYXN/9Qgtkh+lSvU1CuiyAhwFmUqq0nDqDkVj2XL+h
	gCbxqeg5NsAI+IZXJt2+9A87GtRimusS1z0WgM8=
X-Google-Smtp-Source: ACHHUZ5q66Rt3kuFcvOCHyf5q3SCTx0oegflyWNX/hW3kcg5FLjFyT6/1CH0s9pr7aacP/qFhtu3dHWdoaSL+Fp2GWY=
X-Received: by 2002:a17:907:720f:b0:933:1134:be1e with SMTP id
 dr15-20020a170907720f00b009331134be1emr2995754ejc.53.1683342554618; Fri, 05
 May 2023 20:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230504080406.1213623-1-suijingfeng@loongson.cn> <20230504080406.1213623-2-suijingfeng@loongson.cn>
In-Reply-To: <20230504080406.1213623-2-suijingfeng@loongson.cn>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Sat, 6 May 2023 11:09:04 +0800
X-Gmail-Original-Message-ID: <CAAhV-H4zKGkd2JUyYTDKBEGFEO5V+oRz8iuzF9w+ivz0t6+CFw@mail.gmail.com>
Message-ID: <CAAhV-H4zKGkd2JUyYTDKBEGFEO5V+oRz8iuzF9w+ivz0t6+CFw@mail.gmail.com>
To: Sui Jingfeng <suijingfeng@loongson.cn>
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,lists.loongnix.cn,vger.kernel.org,lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D3A2B3EFA0
X-Spamd-Bar: ----
X-MailFrom: chenhuacai@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YWDIJJ7OVY4QEPPVVEMJAYRNHAANOFMC
X-Message-ID-Hash: YWDIJJ7OVY4QEPPVVEMJAYRNHAANOFMC
X-Mailman-Approved-At: Mon, 15 May 2023 15:16:50 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 1/2] MAINTAINERS: add maintainers for DRM LOONGSON driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YWDIJJ7OVY4QEPPVVEMJAYRNHAANOFMC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIEppbmdmZW5nLA0KDQpJIHRoaW5rIHlvdSBzaG91bGQgZXhjaGFuZ2UgdGhlIG9yZGVyIG9m
IHRoZXNlIHR3byBwYXRjaGVzLg0KDQoNCkh1YWNhaQ0KDQpPbiBUaHUsIE1heSA0LCAyMDIzIGF0
IDQ6MDTigK9QTSBTdWkgSmluZ2ZlbmcgPHN1aWppbmdmZW5nQGxvb25nc29uLmNuPiB3cm90ZToN
Cj4NCj4gIFRoaXMgcGF0Y2ggYWRkIG15c2VsZiBhcyBtYWludGFpbmVyIHRvIGRybSBsb29uZ3Nv
biBkcml2ZXINCj4NCj4gU2lnbmVkLW9mZi1ieTogU3VpIEppbmdmZW5nIDxzdWlqaW5nZmVuZ0Bs
b29uZ3Nvbi5jbj4NCj4gLS0tDQo+ICBNQUlOVEFJTkVSUyB8IDcgKysrKysrKw0KPiAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMg
Yi9NQUlOVEFJTkVSUw0KPiBpbmRleCA3M2IzMjk4YjcyMzIuLjFmNWFhODc1NmQ4NyAxMDA2NDQN
Cj4gLS0tIGEvTUFJTlRBSU5FUlMNCj4gKysrIGIvTUFJTlRBSU5FUlMNCj4gQEAgLTY5MjIsNiAr
NjkyMiwxMyBAQCBUOiAgICAgICBnaXQgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJt
L2RybS1taXNjDQo+ICBGOiAgICAgZHJpdmVycy9ncHUvZHJtL2xpbWEvDQo+ICBGOiAgICAgaW5j
bHVkZS91YXBpL2RybS9saW1hX2RybS5oDQo+DQo+ICtEUk0gRFJJVkVSUyBGT1IgTE9PTkdTT04N
Cj4gK006ICAgICBTdWkgSmluZ2ZlbmcgPHN1aWppbmdmZW5nQGxvb25nc29uLmNuPg0KPiArTDog
ICAgIGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gK1M6ICAgICBTdXBwb3J0ZWQN
Cj4gK1Q6ICAgICBnaXQgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1taXNj
DQo+ICtGOiAgICAgZHJpdmVycy9ncHUvZHJtL2xvb25nc29uLw0KPiArDQo+ICBEUk0gRFJJVkVS
UyBGT1IgTUVESUFURUsNCj4gIE06ICAgICBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2Vy
bmVsLm9yZz4NCj4gIE06ICAgICBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRl
Pg0KPiAtLQ0KPiAyLjI1LjENCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
