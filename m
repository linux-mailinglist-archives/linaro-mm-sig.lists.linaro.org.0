Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 008939AE53A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 14:42:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1227F44602
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 12:42:50 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 013964461B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 12:42:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PbeagnCE;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.53 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5cb615671acso507045a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 05:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729773728; x=1730378528; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sj6gTNhuF8KQ+mC8FcVavaAooc7DkgFZVC/sO2AOejw=;
        b=PbeagnCEkPCgPEUyFO1gzdZ9zJx82DYQTQatJ903euIdSANpTVwN19XI18pGRVyTZR
         HZJKIshhE705bckbzWLTdZ3Z/ap5zSGL/ryxS9Ct+osW7ZIl9NaPGfrIaiG4huRo6wce
         gP/24p55z+y2lltaAA+6yaKjLkximHfXQ43Dl3QPI+m9DAZHGL4Hr9127F0UOdYWZJUv
         BdCfdmzdZoBQDntNVyjeKKDPDfAzDQDMv10GCVwIXc8agOxJ7xkd+suv4wdsk9DLrGJ6
         1+qHD+RYqJrX4WPMHPR9akPIiVPKJoPHULxzGDuC4KAGiqU8WDEiAYfM+sOAwxXyeWF2
         UsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729773728; x=1730378528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sj6gTNhuF8KQ+mC8FcVavaAooc7DkgFZVC/sO2AOejw=;
        b=UZJ8xJHDpRePjQROlvrGDrSXHHEppaoZHwCwmaGYNpGhUjiKIn35SQW8P9i54sh51u
         zb8406aQntmk+d8G289G27fWE/dxFy9MZCNSrKQv3tjb48/WZRHor41XCBJpVXtfOIdt
         BXV0JktUR5Y+frPG+WkO2csjPHd8Vnn2Sw+7uRmDzQe2DsWIJVKg85QMckGHoDcBmWxN
         enoO1DAzw5kD9Lso+sx6JBjancFdqdIOI4V+pyP7ooDpR5hVl4gel0CgGEYOx016MEOh
         ACsqeXEoDZMtAbCfVrF9A37a0bFiaU7ED5n3E9xQH0fNDc8i3/yZojF4e77o1hYh+N/f
         ytLA==
X-Forwarded-Encrypted: i=1; AJvYcCWmGMbiLLOowTlfp6MdX1lIWGM+2oRBJE46jgP6Rns1xpNaC7Lxvtz4+jy2fB9LvIBj18yB1Whg0cKGMZuh@lists.linaro.org
X-Gm-Message-State: AOJu0Yzg+ttfY1GV7ZYRwkvQiNE+0Yo0O+ND26etE3RNc6wTWtddk2Df
	+ReY2dOPAmw+fSFcjRg+aqCfarWahGO9k/tcxQy99KjVmzaQJLW9
X-Google-Smtp-Source: AGHT+IEEuTA8PMmVuhARSpT0IT9Dw6qAIi5njqx7dcLq/evV3H2wVxDBE4GcYae26HsdPCERft1Agg==
X-Received: by 2002:a05:6402:5d3:b0:5c8:9529:1b59 with SMTP id 4fb4d7f45d1cf-5cb8b1e9c71mr5459788a12.20.1729773727785;
        Thu, 24 Oct 2024 05:42:07 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1550:4200:da3c:7fbc:c60c:ca4b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cb66a65419sm5623026a12.25.2024.10.24.05.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 05:42:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: friedrich.vock@gmx.de,
	Richardqi.Liang@amd.com,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 24 Oct 2024 14:41:58 +0200
Message-Id: <20241024124159.4519-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241024124159.4519-1-christian.koenig@amd.com>
References: <20241024124159.4519-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.53:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.53:from];
	FREEMAIL_TO(0.00)[gmx.de,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 013964461B
X-Spamd-Bar: ---
Message-ID-Hash: YSAIIQQIK3QV6KUULA5ZV2UUOHSGPF5Z
X-Message-ID-Hash: YSAIIQQIK3QV6KUULA5ZV2UUOHSGPF5Z
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/3] dma-buf: sort fences in dma_fence_unwrap_merge
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YSAIIQQIK3QV6KUULA5ZV2UUOHSGPF5Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIG1lcmdlIGZ1bmN0aW9uIGluaXRpYWxseSBoYW5kbGVkIG9ubHkgaW5kaXZpZHVhbCBmZW5j
ZXMgYW5kDQphcnJheXMgd2hpY2ggaW4gdHVybiB3ZXJlIGNyZWF0ZWQgYnkgdGhlIG1lcmdlIGZ1
bmN0aW9uLiBUaGlzIGFsbG93ZWQNCnRvIGNyZWF0ZSB0aGUgbmV3IGFycmF5IGJ5IGEgc2ltcGxl
IG1lcmdlIHNvcnQgYmFzZWQgb24gdGhlIGZlbmNlDQpjb250ZXh0IG51bWJlci4NCg0KVGhlIHBy
b2JsZW0gaXMgbm93IHRoYXQgc2luY2UgdGhlIGFkZGl0aW9uIG9mIHRpbWVsaW5lIHN5bmMgb2Jq
ZWN0cw0KdXNlcnNwYWNlIGNhbiBjcmVhdGUgY2hhaW4gY29udGFpbmVycyBpbiBiYXNpY2FsbHkg
YW55IGZlbmNlIGNvbnRleHQNCm9yZGVyLg0KDQpJZiB0aG9zZSBhcmUgbWVyZ2VkIHRvZ2V0aGVy
IGl0IGNhbiBoYXBwZW4gdGhhdCB3ZSBjcmVhdGUgcmVhbGx5DQpsYXJnZSBhcnJheXMgc2luY2Ug
dGhlIG1lcmdlIHNvcnQgYWxnb3JpdGhtIGRvZXNuJ3Qgd29yayBhbnkgbW9yZS4NCg0KU28gcHV0
IGFuIGluc2VydCBzb3J0IGJlaGluZCB0aGUgbWVyZ2Ugc29ydCB3aGljaCBraWNrcyBpbiB3aGVu
IHRoZQ0KaW5wdXQgZmVuY2VzIGFyZSBub3QgaW4gdGhlIGV4cGVjdGVkIG9yZGVyLiBUaGlzIGlz
bid0IGFzIGVmZmljaWVudA0KYXMgYSBoZWFwIHNvcnQsIGJ1dCBoYXMgYmV0dGVyIHByb3BlcnRp
ZXMgZm9yIHRoZSBtb3N0IGNvbW1vbiB1c2UNCmNhc2UuDQoNClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgfCAzOSArKysrKysrKysrKysrKysrKysrKysrKysrKy0t
LS0NCiAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCg0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQppbmRleCA2MjhhZjUxYzgxYWYuLmQ5YWEyODBk
OWZmNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCkBAIC0xMDYsNyArMTA2LDcg
QEAgc3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKHVuc2lnbmVkIGlu
dCBudW1fZmVuY2VzLA0KIAkJZmVuY2VzW2ldID0gZG1hX2ZlbmNlX3Vud3JhcF9maXJzdChmZW5j
ZXNbaV0sICZpdGVyW2ldKTsNCiANCiAJY291bnQgPSAwOw0KLQlkbyB7DQorCXdoaWxlICh0cnVl
KSB7DQogCQl1bnNpZ25lZCBpbnQgc2VsOw0KIA0KIHJlc3RhcnQ6DQpAQCAtMTQ0LDExICsxNDQs
NDAgQEAgc3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKHVuc2lnbmVk
IGludCBudW1fZmVuY2VzLA0KIAkJCX0NCiAJCX0NCiANCi0JCWlmICh0bXApIHsNCi0JCQlhcnJh
eVtjb3VudCsrXSA9IGRtYV9mZW5jZV9nZXQodG1wKTsNCi0JCQlmZW5jZXNbc2VsXSA9IGRtYV9m
ZW5jZV91bndyYXBfbmV4dCgmaXRlcltzZWxdKTsNCisJCWlmICghdG1wKQ0KKwkJCWJyZWFrOw0K
Kw0KKwkJLyoNCisJCSAqIFdlIGNvdWxkIHVzZSBhIGJpbmFyeSBzZWFyY2ggaGVyZSwgYnV0IHNp
bmNlIHRoZSBhc3N1bXB0aW9uDQorCQkgKiBpcyB0aGF0IHRoZSBtYWluIGlucHV0IGFyZSBhbHJl
YWR5IHNvcnRlZCBkbWFfZmVuY2VfYXJyYXlzDQorCQkgKiBqdXN0IGxvb2tpbmcgZnJvbSBlbmQg
aGFzIGEgaGlnaGVyIGNoYW5jZSBvZiBmaW5kaW5nIHRoZQ0KKwkJICogcmlnaHQgbG9jYXRpb24g
b24gdGhlIGZpcnN0IHRyeQ0KKwkJICovDQorDQorCQlmb3IgKGkgPSBjb3VudDsgaS0tOykgew0K
KwkJCWlmIChsaWtlbHkoYXJyYXlbaV0tPmNvbnRleHQgPCB0bXAtPmNvbnRleHQpKQ0KKwkJCQli
cmVhazsNCisNCisJCQlpZiAoYXJyYXlbaV0tPmNvbnRleHQgPT0gdG1wLT5jb250ZXh0KSB7DQor
CQkJCWlmIChkbWFfZmVuY2VfaXNfbGF0ZXIodG1wLCBhcnJheVtpXSkpIHsNCisJCQkJCWRtYV9m
ZW5jZV9wdXQoYXJyYXlbaV0pOw0KKwkJCQkJYXJyYXlbaV0gPSBkbWFfZmVuY2VfZ2V0KHRtcCk7
DQorCQkJCX0NCisJCQkJZmVuY2VzW3NlbF0gPSBkbWFfZmVuY2VfdW53cmFwX25leHQoJml0ZXJb
c2VsXSk7DQorCQkJCWdvdG8gcmVzdGFydDsNCisJCQl9DQogCQl9DQotCX0gd2hpbGUgKHRtcCk7
DQorDQorCQkrK2k7DQorCQkvKg0KKwkJICogTWFrZSByb29tIGZvciB0aGUgZmVuY2UsIHRoaXMg
c2hvdWxkIGJlIGEgbm9wIG1vc3Qgb2YgdGhlDQorCQkgKiB0aW1lLg0KKwkJICovDQorCQltZW1j
cHkoJmFycmF5W2kgKyAxXSwgJmFycmF5W2ldLCAoY291bnQgLSBpKSAqIHNpemVvZigqYXJyYXkp
KTsNCisJCWFycmF5W2ldID0gZG1hX2ZlbmNlX2dldCh0bXApOw0KKwkJZmVuY2VzW3NlbF0gPSBk
bWFfZmVuY2VfdW53cmFwX25leHQoJml0ZXJbc2VsXSk7DQorCQljb3VudCsrOw0KKwl9Ow0KIA0K
IAlpZiAoY291bnQgPT0gMCkgew0KIAkJdG1wID0gZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVf
c3R1YihrdGltZV9nZXQoKSk7DQotLSANCjIuMzQuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
