Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F404F7ABF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:00:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 367BF402D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:00:42 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id A7C3E401DD
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 08:59:58 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id r10so5615692eda.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 01:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rfjanQgvhLSomqp2Kk/d3ivSsETYStFsbFD7urvi9ag=;
        b=lBNEaytd0NftSUtsbodZTdCkPUN0fJidaDYSDIU7wlBSbnycDWD4ZJfpyDYcoh5P68
         VZnNNWqkdfMpqZwMyCK0fJTiyqKD6lpCUks+brrYe7GhREaBAMyp5dOJ9rswZuias7BP
         sclBMLrn1V0+NDM4jGcQl5lF2uHQqQNTYKAsNB4AGQQYs8oznj+V72oSQpd+Q0xCcce6
         pjDC7ip5LUJueJNCVBJ5694Ynowl8m+JINS6F+tSGKodZEjGD1qHV8PmcXIZFogAKU14
         eApb0xu3IOdgo50bbUA+oejNFdVwjZ/6aCqX5SPrfJND7syFeG/GJOi0cw2si0m6uHWb
         /Nsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rfjanQgvhLSomqp2Kk/d3ivSsETYStFsbFD7urvi9ag=;
        b=NJAoTsibv2lKRbFR1FhRI7WDBZDJYHxJI3fpoNur/SkwTio8nBJP3pKgua9OvFBGeQ
         UPTSKurHXH9orN1usVAGQ/OoEnkGz+C07cpZIHvaaeyArSxHxeHwg6eVfJ3bOTR5JBKL
         4Gza5mcGiop1KkYhuUfGron+227XdhnO4hwliolGDnZT0D9AG76QwYb+XbhwxPz2DqHM
         SdQ1MrqR6/wDoYh79sXOf9+4TzKMM5dbI0Vyd5hceHbPgVQTlPcuzlRLiDj8gKAPGEBA
         NrBHSJk+Pr8x7yaRwztihqueJL6zfALkt0V/JbH1g5QhlfTRIe+68ed4IO8vBaL4KYiX
         7rJw==
X-Gm-Message-State: AOAM530B937KyZNiiJfRt7az5Ql/DZHnEiL/g8I8T6JgVlFd/yp9g2Ne
	DK/STfAePSW8cl4pj3pMcEo=
X-Google-Smtp-Source: ABdhPJwAA4GW/7bCD+NJa2Rf7+dfYkks4/cwOVV/PXe754GBZwyLuEH5NsnlvI4dzV6afABiYYLXYA==
X-Received: by 2002:a50:c3c6:0:b0:416:293f:1f42 with SMTP id i6-20020a50c3c6000000b00416293f1f42mr13006479edf.187.1649321997805;
        Thu, 07 Apr 2022 01:59:57 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.01.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 01:59:57 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:38 +0200
Message-Id: <20220407085946.744568-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: WCA5POZYGE5U43GL5SFX2KH5NNTGQD5K
X-Message-ID-Hash: WCA5POZYGE5U43GL5SFX2KH5NNTGQD5K
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 07/15] drm/nouveau: only wait for kernel fences in nouveau_bo_vm_cleanup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WCA5POZYGE5U43GL5SFX2KH5NNTGQD5K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RG9uJ3Qgd2FpdCBmb3IgdXNlciBzcGFjZSBzdWJtaXNzaW9ucy4gSSdtIG5vdCAxMDAlIHN1cmUg
aWYgdGhhdCBpcw0KY29ycmVjdCwgYnV0IGl0IHNlZW1zIHRvIG1hdGNoIHdoYXQgdGhlIGNvZGUg
aW5pdGlhbGx5IGludGVuZGVkLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9u
b3V2ZWF1X2JvLmMgfCA0ICsrLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9iby5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9iby5jDQppbmRleCAw
NTA3NmU1MzBlN2QuLjEzZGViNmM3MGJhNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L25vdXZlYXVfYm8uYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVh
dV9iby5jDQpAQCAtOTYyLDEwICs5NjIsMTAgQEAgbm91dmVhdV9ib192bV9jbGVhbnVwKHN0cnVj
dCB0dG1fYnVmZmVyX29iamVjdCAqYm8sDQogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KIAlp
bnQgcmV0Ow0KIA0KLQlyZXQgPSBkbWFfcmVzdl9nZXRfc2luZ2xldG9uKGJvLT5iYXNlLnJlc3Ys
IERNQV9SRVNWX1VTQUdFX1dSSVRFLA0KKwlyZXQgPSBkbWFfcmVzdl9nZXRfc2luZ2xldG9uKGJv
LT5iYXNlLnJlc3YsIERNQV9SRVNWX1VTQUdFX0tFUk5FTCwNCiAJCQkJICAgICAmZmVuY2UpOw0K
IAlpZiAocmV0KQ0KLQkJZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KGJvLT5iYXNlLnJlc3YsIERNQV9S
RVNWX1VTQUdFX1dSSVRFLA0KKwkJZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KGJvLT5iYXNlLnJlc3Ys
IERNQV9SRVNWX1VTQUdFX0tFUk5FTCwNCiAJCQkJICAgICAgZmFsc2UsIE1BWF9TQ0hFRFVMRV9U
SU1FT1VUKTsNCiANCiAJbnYxMF9ib19wdXRfdGlsZV9yZWdpb24oZGV2LCAqb2xkX3RpbGUsIGZl
bmNlKTsNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
