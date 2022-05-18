Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF6F52B529
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 May 2022 10:54:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF14B404B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 May 2022 08:54:53 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 3EF82404AE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 May 2022 08:54:49 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id n23so2155569edy.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 May 2022 01:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NmakBTu/yOyy+SXgm2S0IBtesj4DDqTwypdR4z2zMUA=;
        b=KEz4Bfyh0z1RizjUSsJ/8CTRYSpajI+zNYxQ01gkSHN/0/3A+AfdT3/4ghmoOnHgvk
         9rIaBHU16WWuEpAjx6IMmBKtkD8+VLM59YIrx8m1UzK9HVyM4dPZ8nDOfxUrIRI8wyFj
         AyaEit+RDj2uSN1DzdGcuKR5zRmdtdEkcyhpVtgUaWfagBiINDG7WXmJxLrVbnCFChqA
         SG+J0yRnkL/jGE4i6dba2XRZ+t/IP8f6Zp5w8BTAoyHampntK0UGTEMl49rWIKtPCNC7
         /X21EGM594pLwxJ8TJn1AB9rk7DNP4E0hw8ad73ftcNWl4meyDyroyt0RMN9VTJ0I1bH
         Jy9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NmakBTu/yOyy+SXgm2S0IBtesj4DDqTwypdR4z2zMUA=;
        b=QppIHYMPni9SKy3zdbR6sSQkSyCBMXN3uQpimX8f3HFBAw9ULfwF9778c1hRlora7F
         t/0FoMlizyG7jpLNwIrlVsEuNk8Hc5U5CvLYjb+NQlfZwgdcAWDuNt7QKevZvrL3f5lM
         oC9uWNWvLK8ZlpseV4ImqLbpk1D+zFAFZF+a03Or/7jU/EqgIkuD5buOT1p+Iq5FYoMS
         t5FASH612wWrss43o3cHhM/2sTmj87Zt5hMiu4K1znie3/l+rlvro5fUZlSbKdgFqXf9
         /OJrH6t0HEPAAksyJQL6QV8cV1KmHwu7c9VDdgW3LCjaf9qB4qW577RgjiSVrxgXoTFE
         KBgA==
X-Gm-Message-State: AOAM531EmpUVvZQAESVoDXpr/M/qvmLQLA6L+sNCPYYe+hFsuLTbVIjk
	To4AU7Z7oX4UOdN59MYFv5E=
X-Google-Smtp-Source: ABdhPJxDonz8lzrvTV+KHVl0KiPlKtNFlPmtROdCUy+WJuAexza7caYRXnzxmG8UipUDKo4MqaZrIQ==
X-Received: by 2002:a05:6402:354d:b0:428:19be:2447 with SMTP id f13-20020a056402354d00b0042819be2447mr23188331edd.308.1652864088372;
        Wed, 18 May 2022 01:54:48 -0700 (PDT)
Received: from able.fritz.box (p57b0bdaa.dip0.t-ipconnect.de. [87.176.189.170])
        by smtp.gmail.com with ESMTPSA id jl26-20020a17090775da00b006f3ef214df0sm699275ejc.86.2022.05.18.01.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 May 2022 01:54:47 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 18 May 2022 10:54:46 +0200
Message-Id: <20220518085446.31338-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: XUZ4FT2WP4W55HFECWQQFRCEW4G6VZRQ
X-Message-ID-Hash: XUZ4FT2WP4W55HFECWQQFRCEW4G6VZRQ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: cleanup dma_fence_chain_walk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XUZ4FT2WP4W55HFECWQQFRCEW4G6VZRQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlIHVucmN1X3BvaW50ZXIoKSBpbnN0ZWFkIG9mIHRoZSBtYW51YWwgY2FzdC4NCg0KU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0t
DQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jIHwgNCArKy0tDQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UtY2hhaW4uYw0KaW5kZXggMDZmOGVmOTdjNmU4Li5hMGQ5MjA1NzZiYTYgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UtY2hhaW4uYw0KQEAgLTYyLDggKzYyLDggQEAgc3RydWN0IGRtYV9mZW5jZSAq
ZG1hX2ZlbmNlX2NoYWluX3dhbGsoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQogCQkJcmVwbGFj
ZW1lbnQgPSBOVUxMOw0KIAkJfQ0KIA0KLQkJdG1wID0gY21weGNoZygoc3RydWN0IGRtYV9mZW5j
ZSBfX2ZvcmNlICoqKSZjaGFpbi0+cHJldiwNCi0JCQkgICAgICBwcmV2LCByZXBsYWNlbWVudCk7
DQorCQl0bXAgPSB1bnJjdV9wb2ludGVyKGNtcHhjaGcoJmNoYWluLT5wcmV2LCBSQ1VfSU5JVElB
TElaRVIocHJldiksDQorCQkJCQkgICAgIFJDVV9JTklUSUFMSVpFUihyZXBsYWNlbWVudCkpKTsN
CiAJCWlmICh0bXAgPT0gcHJldikNCiAJCQlkbWFfZmVuY2VfcHV0KHRtcCk7DQogCQllbHNlDQot
LSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
