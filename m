Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BCC493B52
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 14:44:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8F573EE8A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 13:44:02 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 458643EE81
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 13:43:44 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id c71so11850096edf.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 05:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/sKthdsDAA9J7PKlzAOm6qYQuF+X5868CR5aPtjU9kw=;
        b=XtIEVlQhs8lCmBJhE0TkSAEKWXXHiFKAemZcdZlrk99rAYDkimPaqJUEpH/2Bk9MXb
         oQEDnlNveR24SS7bogutR+ZOlMG+a0rg0FDPw1AcBPWDuBDsl5ssKfnPMlolawXpaoZW
         nhLUSPy1lFNN7XQjXGmbTBTiwm+qMvVP0k9QWXqNIMo567U6nlnmZCcuHgDHdLBfOxpA
         hud/t/u2syPq9nl00mw/J7+KBayrcL2WN2upWms1cdrnu2LJNofFPSec7mgVLhHConb/
         GKpTfXfKCWUQu4mQWrEsRvfd6cgEpPhHJ4IopWZP556QMVm/inGedLKBlFEWk2DNPtEg
         AGBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/sKthdsDAA9J7PKlzAOm6qYQuF+X5868CR5aPtjU9kw=;
        b=fPTadTwQ0YM2LZB2GBzBC3GUUk2d6DmmZhvIT4lh/YKPCKifFJ9pDh7Dq1UtLyTM2e
         XajJ56jiwP15bCsg+6netUzHLBwebdgtTCQp1FDW5qzfOaEX3sj/8Srn86fRsi/eHpdQ
         hxhWwu6W6lmdqj6AuPsUjbhav9fOXERJEG8ZqOm05PYOwdDifIxlLkvZADJDrgkxlQPB
         Q02Jqi7EyWoyyGQp/umWlv8KWUdjvhUKBLziRDZrO26WItfB/gmb40Nn0OQ/i5rJTWib
         4vYsryrnBvDSzppXGHZmNvH3V26oLhHea+bFl2Rg7VmKu3I+6EdOlliFPdWB0DH9qW5/
         XHLA==
X-Gm-Message-State: AOAM533SM8lH5i52j1uiXQLk4gtzAvSyORyeoHapiT6jV3js2BpejiRN
	SMcExpcCIb8ApB23NLAbjdE=
X-Google-Smtp-Source: ABdhPJxLWMBIZT9uDp2E3FK1c4oEa/VtCv9jlY4Il0pA960zoj9MMVqts0dH61KGyu5t40ib1yO/Ew==
X-Received: by 2002:adf:dcc3:: with SMTP id x3mr3040459wrm.417.1642599823344;
        Wed, 19 Jan 2022 05:43:43 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id g15sm19733583wrm.2.2022.01.19.05.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 05:43:42 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch
Date: Wed, 19 Jan 2022 14:43:38 +0100
Message-Id: <20220119134339.3102-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220119134339.3102-1-christian.koenig@amd.com>
References: <20220119134339.3102-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 5H36HK3CSTNQB4RNK5OVHYQWMUM2YPJV
X-Message-ID-Hash: 5H36HK3CSTNQB4RNK5OVHYQWMUM2YPJV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/4] dma-buf: Warn about dma_fence_chain container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5H36HK3CSTNQB4RNK5OVHYQWMUM2YPJV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hhaW5pbmcgb2YgZG1hX2ZlbmNlX2NoYWluIG9iamVjdHMgaXMgb25seSBhbGxvd2VkIHRocm91
Z2ggdGhlIHByZXYNCmZlbmNlIGFuZCBub3QgdGhyb3VnaCB0aGUgY29udGFpbmVkIGZlbmNlLg0K
DQpXYXJuIGFib3V0IHRoYXQgd2hlbiB3ZSBjcmVhdGUgYSBkbWFfZmVuY2VfY2hhaW4uDQoNClNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
Ci0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDggKysrKysrKysNCiAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWlu
LmMNCmluZGV4IDFiNGNiM2U1Y2VjOS4uZmEzM2Y2YjdmNzdiIDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLWNoYWluLmMNCkBAIC0yNTQsNSArMjU0LDEzIEBAIHZvaWQgZG1hX2ZlbmNlX2NoYWluX2lu
aXQoc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4sDQogDQogCWRtYV9mZW5jZV9pbml0KCZj
aGFpbi0+YmFzZSwgJmRtYV9mZW5jZV9jaGFpbl9vcHMsDQogCQkgICAgICAgJmNoYWluLT5sb2Nr
LCBjb250ZXh0LCBzZXFubyk7DQorDQorCS8qIENoYWluaW5nIGRtYV9mZW5jZV9jaGFpbiBjb250
YWluZXIgdG9nZXRoZXIgaXMgb25seSBhbGxvd2VkIHRocm91Z2gNCisJICogdGhlIHByZXYgZmVu
Y2UgYW5kIG5vdCB0aHJvdWdoIHRoZSBjb250YWluZWQgZmVuY2UuDQorCSAqDQorCSAqIFRoZSBj
b3JyZWN0IHdheSBvZiBoYW5kbGluZyB0aGlzIGlzIHRvIGZsYXR0ZW4gb3V0IHRoZSBmZW5jZQ0K
KwkgKiBzdHJ1Y3R1cmUgaW50byBhIGRtYV9mZW5jZV9hcnJheSBieSB0aGUgY2FsbGVyIGluc3Rl
YWQuDQorCSAqLw0KKwlXQVJOX09OKGRtYV9mZW5jZV9pc19jaGFpbihmZW5jZSkpOw0KIH0NCiBF
WFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9jaGFpbl9pbml0KTsNCi0tIA0KMi4yNS4xDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
