Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1624F7ABE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:00:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C7F9401CB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:00:37 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id A8304402D3
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 08:59:57 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id k23so9437451ejd.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 01:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fLTp1rDW4i3mY7eYY/RGlpkFX2oma6BG2r9ZnWbz4W8=;
        b=RyoBUlxLgDLhzTvyNfjF+EkytESivgX1dhEo0gcCn5VZSZzh7H6HCKmtJNYBzXC6Nz
         mI8dpm1eo3NAcUoqtn4LXpJ+EpIB3oBfnruBHftNG+3J9XQsBZrvCgs7cV9m4fhxJLfW
         YfeCfGH0EnRrZiFe4yxiob4iqEtW1C52sXmnBkbLhhpt2YM/MjajEGuteG0tx4nMDbXU
         cxCyMGoiKVhA2Ym6gdPEDa2LJ1fw0cYOrEAnw78I/Kjz6IPex74StxxGnb/iT785YUcK
         oD+WlJKrtaCFc5rgydkDbhgP1xl5v+FR9SoRM1qljZbY4Qx0m1ESYhrpMQpPH5/R3t8R
         IfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fLTp1rDW4i3mY7eYY/RGlpkFX2oma6BG2r9ZnWbz4W8=;
        b=LujlAOcznO9jZ8NnvXJp5T4W9H3aL8svpdZt4M8y/kWGpMKzJOM/uJxt6+Y6UsA6fc
         DkJGIie/a14JYUP4T6M+tUhlspBtsdy4HJOMsGku0AyonqdSK27h76RGxo2tCHLzs7dQ
         1nNdWSeKqPJfqcEE2e7fpTY9WvCCeMChB+ZThk7TgtzbCJn04yGbTAFZQdwV2bKFO7+P
         jMgbiKwbPVAx6JOLrD27DiDtCv3SWelQw3nJi++c9U/k8P37ZhdNQMatg9QIMlXDxrmB
         urMK9kWge9u3VRQ1KvMzcxCkoU7DbGPKVLLDro2WipVpzMTQzxqQmXImcGQHe5KUgYZI
         WoYg==
X-Gm-Message-State: AOAM531Ikei0ObtiBesW/5CerIXI5ndjj3qpE5jvXIxTHMYzLu+uj/uJ
	ltDLI6zlt3VLCxU/6QwJ9hk=
X-Google-Smtp-Source: ABdhPJybdeY80Ujzj5/bv7vK1+k9Ar1apQmg9d9BVBW8qyLyTVJkUvryNql02/i+jE1F5jbDUKTmWg==
X-Received: by 2002:a17:907:3fa8:b0:6d3:477a:efe with SMTP id hr40-20020a1709073fa800b006d3477a0efemr12634642ejc.401.1649321996781;
        Thu, 07 Apr 2022 01:59:56 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.01.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 01:59:56 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:37 +0200
Message-Id: <20220407085946.744568-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: JSGEHOKTY6ILRX3JYDZORBYCPTCOEXRL
X-Message-ID-Hash: JSGEHOKTY6ILRX3JYDZORBYCPTCOEXRL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 06/15] drm/radeon: use DMA_RESV_USAGE_KERNEL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JSGEHOKTY6ILRX3JYDZORBYCPTCOEXRL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWx3YXlzIHdhaXQgZm9yIGtlcm5lbCBmZW5jZXMgYmVmb3JlIGttYXAgYW5kIG5vdCBvbmx5IGZv
ciBVVkQga21hcHMuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCkFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGZmd2xsLmNoPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fb2JqZWN0LmMg
fCAgNyArKysrKystDQogZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdXZkLmMgICAgfCAx
MiArKy0tLS0tLS0tLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTEgZGVs
ZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9v
YmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX29iamVjdC5jDQppbmRleCBj
YjVjNGFhNDVjZWYuLjZjNGE2ODAyY2E5NiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
YWRlb24vcmFkZW9uX29iamVjdC5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVv
bl9vYmplY3QuYw0KQEAgLTIxOSw3ICsyMTksMTIgQEAgaW50IHJhZGVvbl9ib19jcmVhdGUoc3Ry
dWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsDQogaW50IHJhZGVvbl9ib19rbWFwKHN0cnVjdCByYWRl
b25fYm8gKmJvLCB2b2lkICoqcHRyKQ0KIHsNCiAJYm9vbCBpc19pb21lbTsNCi0JaW50IHI7DQor
CWxvbmcgcjsNCisNCisJciA9IGRtYV9yZXN2X3dhaXRfdGltZW91dChiby0+dGJvLmJhc2UucmVz
diwgRE1BX1JFU1ZfVVNBR0VfS0VSTkVMLA0KKwkJCQkgIGZhbHNlLCBNQVhfU0NIRURVTEVfVElN
RU9VVCk7DQorCWlmIChyIDwgMCkNCisJCXJldHVybiByOw0KIA0KIAlpZiAoYm8tPmtwdHIpIHsN
CiAJCWlmIChwdHIpIHsNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVv
bl91dmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3V2ZC5jDQppbmRleCBhNTA3
NTA3NDBhYjAuLmEyY2RhMTg0YjJiMiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRl
b24vcmFkZW9uX3V2ZC5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl91dmQu
Yw0KQEAgLTQ3MCwyNCArNDcwLDE2IEBAIHN0YXRpYyBpbnQgcmFkZW9uX3V2ZF9jc19tc2coc3Ry
dWN0IHJhZGVvbl9jc19wYXJzZXIgKnAsIHN0cnVjdCByYWRlb25fYm8gKmJvLA0KIAlpbnQzMl90
ICptc2csIG1zZ190eXBlLCBoYW5kbGU7DQogCXVuc2lnbmVkIGltZ19zaXplID0gMDsNCiAJdm9p
ZCAqcHRyOw0KLQlsb25nIHI7DQotCWludCBpOw0KKwlpbnQgaSwgcjsNCiANCiAJaWYgKG9mZnNl
dCAmIDB4M0YpIHsNCiAJCURSTV9FUlJPUigiVVZEIG1lc3NhZ2VzIG11c3QgYmUgNjQgYnl0ZSBh
bGlnbmVkIVxuIik7DQogCQlyZXR1cm4gLUVJTlZBTDsNCiAJfQ0KIA0KLQlyID0gZG1hX3Jlc3Zf
d2FpdF90aW1lb3V0KGJvLT50Ym8uYmFzZS5yZXN2LCBETUFfUkVTVl9VU0FHRV9XUklURSwNCi0J
CQkJICBmYWxzZSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOw0KLQlpZiAociA8PSAwKSB7DQotCQlE
Uk1fRVJST1IoIkZhaWxlZCB3YWl0aW5nIGZvciBVVkQgbWVzc2FnZSAoJWxkKSFcbiIsIHIpOw0K
LQkJcmV0dXJuIHIgPyByIDogLUVUSU1FOw0KLQl9DQotDQogCXIgPSByYWRlb25fYm9fa21hcChi
bywgJnB0cik7DQogCWlmIChyKSB7DQotCQlEUk1fRVJST1IoIkZhaWxlZCBtYXBwaW5nIHRoZSBV
VkQgbWVzc2FnZSAoJWxkKSFcbiIsIHIpOw0KKwkJRFJNX0VSUk9SKCJGYWlsZWQgbWFwcGluZyB0
aGUgVVZEIG1lc3NhZ2UgKCVkKSFcbiIsIHIpOw0KIAkJcmV0dXJuIHI7DQogCX0NCiANCi0tIA0K
Mi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
