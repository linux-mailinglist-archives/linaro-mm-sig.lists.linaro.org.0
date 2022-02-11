Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C31214B2651
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:50:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06846401CC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:50:50 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 336CB3EEA8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:13 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id p24so22744046ejo.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7WCa5qA1/nLtCEHZ/PpDjh5N7A1IJbEHHrC/YoiEV28=;
        b=SSgZgljVNjvx1oqnD//TN6+IssxV32Y0AlvHMXWHnH8JVzNIo/uCvIx8rMLXi0YVzr
         6HTAvCA8UTTkOMEjgA398IVWxT/EnXFMmvlxl3SSAaAQFr4pESj1klnheSui/ZybbPjc
         zoE0n33plybqGTR/TEvOB8OMEo6/LML2OvcLKZmvMLdLa5r4ldyTMYfFuBBUzMrN0vJz
         kW1Xw8On1xdCrFqMjKcuU2gTUGEjcpxz9tw93G6U0Rv+EUJ9gqE0L92NwVAaK+wJr26A
         NvWuOg9rJuQU6ahArADh9rbDQELPTWlXjMjGK7LCF6p9omQjEZQ727d3Ea8URPd0nRN9
         3Ehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7WCa5qA1/nLtCEHZ/PpDjh5N7A1IJbEHHrC/YoiEV28=;
        b=bXxbzRjNjbx0eioKrGgI7v8CKvr2i6s4Ywd4/ENdE9+154G7BE3xSPGph2HwmGdtuW
         zfPflmUw/4v1Tr1yOPpsTl2QhnmAbI2ygRA7Qejffk6cglIVSNSJR6eVxqhUxLEnSuVp
         CmowwM74xzLnBRJyH5VHsw7qWH0Qq2Z3ar9I9Jpl+fj0IAGDnh6d0bNBWSaX7KpcQUtG
         St5j+bLgHwe+7FeluTvfZkvgVH07Od+/ffVriDNbs9kLCV+LJu4qwRXaKwQtEyFyq7Z4
         5TFeTPmlDurRb8T6J/R2AQQDl7ehCXTZ+Gv3skhyH4HSeTMoAdYVXhCeC0H8z1XYKupn
         bpuQ==
X-Gm-Message-State: AOAM533nQuDxZuB/uXIMayOuzo8zg013g0Y5QFhi2RBddia8zwRx76R3
	WSZruM9EnDo2ykKMeddeZEM=
X-Google-Smtp-Source: ABdhPJzQyaglDPGwQ6W1hx6Sc/G4ING4kQYcZ1GiaVimGtdC3TOZIJTw4eMUcQ/iJWTDeJ/4ILVnOg==
X-Received: by 2002:a17:907:168b:: with SMTP id hc11mr1255839ejc.676.1644583812340;
        Fri, 11 Feb 2022 04:50:12 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:11 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:46 +0100
Message-Id: <20220211125003.918447-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: BW46XPRLXIA2PWXBUEGYWRB2OSLVG7B2
X-Message-ID-Hash: BW46XPRLXIA2PWXBUEGYWRB2OSLVG7B2
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 06/23] drm/nouveau: stop using dma_resv_excl_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BW46XPRLXIA2PWXBUEGYWRB2OSLVG7B2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW5zdGVhZCB1c2UgdGhlIG5ldyBkbWFfcmVzdl9nZXRfc2luZ2xldG9uIGZ1bmN0aW9uLg0KDQpT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCkNj
OiBCZW4gU2tlZ2dzIDxic2tlZ2dzQHJlZGhhdC5jb20+DQpDYzogS2Fyb2wgSGVyYnN0IDxraGVy
YnN0QHJlZGhhdC5jb20+DQpDYzogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4NCkNjOiBu
b3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KLS0tDQogZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9iby5jIHwgOSArKysrKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbm91
dmVhdS9ub3V2ZWF1X2JvLmMgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2JvLmMN
CmluZGV4IGZhNzNmZTU3Zjk3Yi4uNzRmODY1MmQyYmQzIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9n
cHUvZHJtL25vdXZlYXUvbm91dmVhdV9iby5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVh
dS9ub3V2ZWF1X2JvLmMNCkBAIC05NTksNyArOTU5LDE0IEBAIG5vdXZlYXVfYm9fdm1fY2xlYW51
cChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLA0KIHsNCiAJc3RydWN0IG5vdXZlYXVfZHJt
ICpkcm0gPSBub3V2ZWF1X2JkZXYoYm8tPmJkZXYpOw0KIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
ID0gZHJtLT5kZXY7DQotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9m
ZW5jZShiby0+YmFzZS5yZXN2KTsNCisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQorCWludCBy
ZXQ7DQorDQorCS8qIFRPRE86IFRoaXMgaXMgYWN0dWFsbHkgYSBtZW1vcnkgbWFuYWdlbWVudCBk
ZXBlbmRlbmN5ICovDQorCXJldCA9IGRtYV9yZXN2X2dldF9zaW5nbGV0b24oYm8tPmJhc2UucmVz
diwgZmFsc2UsICZmZW5jZSk7DQorCWlmIChyZXQpDQorCQlkbWFfcmVzdl93YWl0X3RpbWVvdXQo
Ym8tPmJhc2UucmVzdiwgZmFsc2UsIGZhbHNlLA0KKwkJCQkgICAgICBNQVhfU0NIRURVTEVfVElN
RU9VVCk7DQogDQogCW52MTBfYm9fcHV0X3RpbGVfcmVnaW9uKGRldiwgKm9sZF90aWxlLCBmZW5j
ZSk7DQogCSpvbGRfdGlsZSA9IG5ld190aWxlOw0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
