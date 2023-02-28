Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDF56A6387
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 00:01:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E2A84424E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 23:01:03 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by lists.linaro.org (Postfix) with ESMTPS id D97593F4CC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 22:58:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=hjK19G1y;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.215.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 130so6660581pgg.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 14:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677625122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MohZmh6ZcfzJn1OmRfs/o8+oM4ZPKLi2FB+4LPpL34o=;
        b=hjK19G1y+9t6kEMLTgqI6C/R9VHYBU8KBYhFV7faYo5HB8p84Etyo1UAtA4iWCe1Hw
         uvND31JQjTYo2r32ygNrWaVDjWv/k3qvc7jrwqSIvMOAvHHpN8jKYTOwjzjPEBwJF+xk
         fixbNihhLTq9GC9AHCP7pa2dUcgktiXvIpq6ywnlV8qD4FM2Cf4nmfnqsdyA+tM9x6dC
         PUZLj+wlw7lH/NXnxKpo3cMYVn1Az9DXvTODKEgwKa2d8nXZplZnzfnMCiBrQ/52lH1z
         G/Ib2B5EMaZT8bcidj1SSHKcOYNFX+rk8Z++HJWMFKHxBKm9i//i20Kz4CS16SO3CIxl
         uL9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677625122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MohZmh6ZcfzJn1OmRfs/o8+oM4ZPKLi2FB+4LPpL34o=;
        b=x/M5BcIMWPVE10K92brcnAgYm4lxQiLG749gpKaX1gIkfY5NHvtdRWx6RgXfeYYipJ
         n8HKj7OPACiXyK7KJWpJXvyyPm+GoVVWrvOqTkLR55IpykoKRUeZJXQrzQ2vls+/AeQM
         rbAbtA93mo9e2fHblwlhNTeouj+OgpPVgJ9yAmA2IjxhAU2JsOzislkPP3jCec0ekUdH
         l6CFNiMnTOwOp0JhSsBifj/CCuorhi5Oq6MqAYqwhg9tHSjj1PSID1Wop7Fi5wBwMU34
         uddAV0qK7GmQ3ZnigjgO4XPgboBkmS1KAE2wpkV0XHjTe7yd/t0wkKDdzV/pON//A9N/
         /ghA==
X-Gm-Message-State: AO0yUKVqF2dClAsgGNO2zikQ5v0aTCHD/a4/ojFxZYb1vRg0HwmRqse7
	kj0GJDrgFUE4gl7WZG0yj9k=
X-Google-Smtp-Source: AK7set+hi0qZn6Ym8wkRncFCDDbYo/eyvE+1U2XGQCuwaskjeQT9FqYxsMx6ZcsoNBBDuF7tCnd7MQ==
X-Received: by 2002:a05:6a00:3002:b0:5ff:f1df:d82f with SMTP id ay2-20020a056a00300200b005fff1dfd82fmr4217882pfb.1.1677625121947;
        Tue, 28 Feb 2023 14:58:41 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id i22-20020aa78b56000000b005813f365afcsm6552280pfd.189.2023.02.28.14.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 14:58:41 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Feb 2023 14:58:06 -0800
Message-Id: <20230228225833.2920879-3-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230228225833.2920879-1-robdclark@gmail.com>
References: <20230228225833.2920879-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D97593F4CC
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.215.175:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.215.175:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 7WOGFCLZQOLXCALEA4562ZYWMAQ6XINZ
X-Message-ID-Hash: 7WOGFCLZQOLXCALEA4562ZYWMAQ6XINZ
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 02/16] dma-buf/fence-array: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7WOGFCLZQOLXCALEA4562ZYWMAQ6XINZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpQcm9wYWdhdGUgdGhl
IGRlYWRsaW5lIHRvIGFsbCB0aGUgZmVuY2VzIGluIHRoZSBhcnJheS4NCg0KU2lnbmVkLW9mZi1i
eTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KUmV2aWV3ZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDExICsrKysrKysrKysrDQogMSBmaWxlIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UtYXJyYXkuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KaW5kZXggNWM4
YTcwODQ1NzdiLi45YjNjZTg5NDgzNTEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0K
QEAgLTEyMywxMiArMTIzLDIzIEBAIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9yZWxlYXNl
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIAlkbWFfZmVuY2VfZnJlZShmZW5jZSk7DQogfQ0K
IA0KK3N0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsDQorCQkJCQkga3RpbWVfdCBkZWFkbGluZSkNCit7DQorCXN0cnVjdCBkbWFf
ZmVuY2VfYXJyYXkgKmFycmF5ID0gdG9fZG1hX2ZlbmNlX2FycmF5KGZlbmNlKTsNCisJdW5zaWdu
ZWQgaTsNCisNCisJZm9yIChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyArK2kpDQorCQlk
bWFfZmVuY2Vfc2V0X2RlYWRsaW5lKGFycmF5LT5mZW5jZXNbaV0sIGRlYWRsaW5lKTsNCit9DQor
DQogY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2FycmF5X29wcyA9IHsNCiAJ
LmdldF9kcml2ZXJfbmFtZSA9IGRtYV9mZW5jZV9hcnJheV9nZXRfZHJpdmVyX25hbWUsDQogCS5n
ZXRfdGltZWxpbmVfbmFtZSA9IGRtYV9mZW5jZV9hcnJheV9nZXRfdGltZWxpbmVfbmFtZSwNCiAJ
LmVuYWJsZV9zaWduYWxpbmcgPSBkbWFfZmVuY2VfYXJyYXlfZW5hYmxlX3NpZ25hbGluZywNCiAJ
LnNpZ25hbGVkID0gZG1hX2ZlbmNlX2FycmF5X3NpZ25hbGVkLA0KIAkucmVsZWFzZSA9IGRtYV9m
ZW5jZV9hcnJheV9yZWxlYXNlLA0KKwkuc2V0X2RlYWRsaW5lID0gZG1hX2ZlbmNlX2FycmF5X3Nl
dF9kZWFkbGluZSwNCiB9Ow0KIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2FycmF5X29wcyk7DQog
DQotLSANCjIuMzkuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
