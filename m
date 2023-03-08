Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 771706B0DAF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 16:54:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A5693F0A8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 15:54:29 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id 1C9963EF9C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 15:53:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=E8F1gMxo;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id l1so16923385pjt.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 07:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678290813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRbyMbeEc1g04CNRPycSMV1Llvla2kLsSk+TytIEmsk=;
        b=E8F1gMxoQi0pjd5J8Y6jydRjSAIw7Rqa8bmWluE0DJDyJZamKjSmyYHmicDKUAwwOC
         DQnKhprOqhc0JTNy+sNnE+urwNiknzVmXk5HUXLv/5fJW1DelsQr9V6lzlC2C/fBuROh
         dQlC9fHbBdG8RGLCVsgfvMowoZ2Tl2CmLHqlPv8EjfQxnvTBDu/RpJJx7iFwMlFw2PyV
         xPv4elub5ZEWEK3KKrtxxxySXJKaza7NBM6oYqynNIPvldcOtpF8ekHdqQYc+CKou2ta
         q0eWopDJcM86skChVL/X3tfUtoAE/NnPmjB29i3AHiXjxIjt05hzj6/+bqxy3PBQ2wAb
         0PaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678290813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRbyMbeEc1g04CNRPycSMV1Llvla2kLsSk+TytIEmsk=;
        b=gbGMvTjKDMVmWlu1WKYx/qE8Zo54QmJkZnMck4ypdATnWyvTmyThTX7us0hHDEC6Zf
         x4D0L6V+4JImBVFt+3t3iUsqNoPtv7yEeOQKzFHd/rp3/MEcDVWAeHGGH59HLZT8cUZR
         VF+B4CMvN3LwwVRLXmR1iqVcYUfQBaZI5zTmVsXxxNdJuFxdMU+3GJC0EdiDdcBR7T85
         ImWDq4yjU0Gb+weuAiNaRCmBN1Pg3t9rzb5Xy/cm3Phl8//HfYEdwQALJIVmi2bgAJRU
         lmjIR0DdSrv7sS5u8H+z/aqCs9KCNhAPUqnT3PUwG2rwhD2zt13v2F04UnWAwUMJAlgo
         Mi9g==
X-Gm-Message-State: AO0yUKUO95/4S+zTtsu37qoaD1oK9HZJC23ZlbXcRR4eRRkS7n3KdHpK
	r4cqhV/e8QnbL9APx9eD8uk=
X-Google-Smtp-Source: AK7set99fLa+QCsE+WaWRDGxHZu+A8+0MlNPxutv5RXA+vhBhaw33wHVVnezivT/H0yLgb50ZxOFTQ==
X-Received: by 2002:a17:903:41c3:b0:19e:699e:9b64 with SMTP id u3-20020a17090341c300b0019e699e9b64mr23933457ple.65.1678290813286;
        Wed, 08 Mar 2023 07:53:33 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id jx15-20020a170903138f00b0019468fe44d3sm9996583plb.25.2023.03.08.07.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 07:53:32 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Mar 2023 07:52:53 -0800
Message-Id: <20230308155322.344664-3-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1C9963EF9C
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.42:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: UPJSM6CP2TR5RNLZ3UUNST4V6CQOYZ52
X-Message-ID-Hash: UPJSM6CP2TR5RNLZ3UUNST4V6CQOYZ52
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 02/15] dma-buf/fence-array: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UPJSM6CP2TR5RNLZ3UUNST4V6CQOYZ52/>
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
DQotLSANCjIuMzkuMg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
