Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F254E28A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Mar 2022 14:59:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7C873EF9D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Mar 2022 13:59:07 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id C587D3EE92
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Mar 2022 13:59:01 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id r10so20848945wrp.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Mar 2022 06:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O11PH6cXQ1MKcgOLse/KKqk/aB8D36jCk5wxFLe7PFE=;
        b=BeZOzQyTxNdI4cHo3kAnjSyk+1Uoo7bWLwNubN37E4M+JEA7E4ZMt1cLl2pVfVun3Z
         lvPs2aJjVCZt60j/kQcnmDrVB3C41u9PAupknkipPeYOaPeeBgvyCvwIuDE+MzuRtG5n
         SD00rWxu4xXGHBmFeYMSSFR2Zos0hEHeAbILrmLy1iwvmo3Wk1RTu5zbq1OI/haeLGpg
         vAPFYpx3yWg6USdqSzk53Vpei1t5CSyvXjh5Woo+Xl/UFH+DO10h0h7Vii2xtZqYgzog
         sJ4AAWaJ22i9u6Wt/x9Iq8rUneYq3dsxB4oOKNgJK8ubIV6xNvv+eM98coU3tVoGfOWI
         BmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O11PH6cXQ1MKcgOLse/KKqk/aB8D36jCk5wxFLe7PFE=;
        b=7leZEM1xNzbkNRjrOORchODqTV6UTF8fCQz+1WIS71WL8LexqTTwmZ34D6Vn0HROmy
         y9HkqL8/VPKQFtBhdjJilPWpIUGEQohynRHiAWAT1/gVKR63wRRC1PrVnvV+5Ct+bYW0
         LJNnFau4aL4OQncvuI6Vja4+o9fwDlZCmyQoAPYUyqtyRLwZK8g9FxB6r3kW0PnyxsIb
         pLlAkYr0oQlLkOQBgK8WFG75PqZnjbYnWuhOwTEm/wbwSRRRudxS+Nu06WZS7ZQ3xNse
         rxTnl5ymBZUXUgsMTZrX4po5XRm1V26/OfRy8xLuqUe5DeJg/k1r5ib5sR5dHqVmkShN
         4rhQ==
X-Gm-Message-State: AOAM531jEJlCsUGTOOTrNTOuKjCumGyCFpti0+Uqp3wud2f1uc9/MhGw
	fxPTRRW2CyFW6YSyhJRtcVk=
X-Google-Smtp-Source: ABdhPJwcMuF/i5dfyY6n9V+H6t9XfrLdv1W24U8TH6lNcLfnngdykUQgOIkydPBGaI8xlQvzBEDnog==
X-Received: by 2002:a05:6000:1689:b0:204:19f5:541f with SMTP id y9-20020a056000168900b0020419f5541fmr2380469wrd.704.1647871140887;
        Mon, 21 Mar 2022 06:59:00 -0700 (PDT)
Received: from able.fritz.box (p5b0eab60.dip0.t-ipconnect.de. [91.14.171.96])
        by smtp.gmail.com with ESMTPSA id m3-20020a5d6243000000b001e33760776fsm13317640wrv.10.2022.03.21.06.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 06:59:00 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org
Date: Mon, 21 Mar 2022 14:58:37 +0100
Message-Id: <20220321135856.1331-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321135856.1331-1-christian.koenig@amd.com>
References: <20220321135856.1331-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: PHICD6UZBU3FAHHK32HWBASUTTNV4F3V
X-Message-ID-Hash: PHICD6UZBU3FAHHK32HWBASUTTNV4F3V
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Maor Gottlieb <maorg@nvidia.com>, Gal Pressman <galpress@amazon.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 04/23] RDMA: use dma_resv_wait() instead of extracting the fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PHICD6UZBU3FAHHK32HWBASUTTNV4F3V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlIGRtYV9yZXN2X3dhaXQoKSBpbnN0ZWFkIG9mIGV4dHJhY3RpbmcgdGhlIGV4Y2x1c2l2ZSBm
ZW5jZSBhbmQNCndhaXRpbmcgb24gaXQgbWFudWFsbHkuDQoNClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPg0KQ2M6IEphc29uIEd1bnRob3JwZSA8
amdnQHppZXBlLmNhPg0KQ2M6IExlb24gUm9tYW5vdnNreSA8bGVvbkBrZXJuZWwub3JnPg0KQ2M6
IE1hb3IgR290dGxpZWIgPG1hb3JnQG52aWRpYS5jb20+DQpDYzogR2FsIFByZXNzbWFuIDxnYWxw
cmVzc0BhbWF6b24uY29tPg0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KLS0tDQogZHJpdmVycy9pbmZpbmliYW5kL2Nv
cmUvdW1lbV9kbWFidWYuYyB8IDggKystLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmliYW5k
L2NvcmUvdW1lbV9kbWFidWYuYyBiL2RyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVm
LmMNCmluZGV4IGYwNzYwNzQxZjI4MS4uZDMyY2Q3NTM4ODM1IDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYw0KKysrIGIvZHJpdmVycy9pbmZpbmliYW5k
L2NvcmUvdW1lbV9kbWFidWYuYw0KQEAgLTE2LDcgKzE2LDYgQEAgaW50IGliX3VtZW1fZG1hYnVm
X21hcF9wYWdlcyhzdHJ1Y3QgaWJfdW1lbV9kbWFidWYgKnVtZW1fZG1hYnVmKQ0KIHsNCiAJc3Ry
dWN0IHNnX3RhYmxlICpzZ3Q7DQogCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7DQotCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlOw0KIAl1bnNpZ25lZCBsb25nIHN0YXJ0LCBlbmQsIGN1ciA9IDA7DQog
CXVuc2lnbmVkIGludCBubWFwID0gMDsNCiAJaW50IGk7DQpAQCAtNjgsMTEgKzY3LDggQEAgaW50
IGliX3VtZW1fZG1hYnVmX21hcF9wYWdlcyhzdHJ1Y3QgaWJfdW1lbV9kbWFidWYgKnVtZW1fZG1h
YnVmKQ0KIAkgKiBtYXkgYmUgbm90IHVwLXRvLWRhdGUuIFdhaXQgZm9yIHRoZSBleHBvcnRlciB0
byBmaW5pc2gNCiAJICogdGhlIG1pZ3JhdGlvbi4NCiAJICovDQotCWZlbmNlID0gZG1hX3Jlc3Zf
ZXhjbF9mZW5jZSh1bWVtX2RtYWJ1Zi0+YXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KLQlpZiAoZmVu
Y2UpDQotCQlyZXR1cm4gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIGZhbHNlKTsNCi0NCi0JcmV0dXJu
IDA7DQorCXJldHVybiBkbWFfcmVzdl93YWl0X3RpbWVvdXQodW1lbV9kbWFidWYtPmF0dGFjaC0+
ZG1hYnVmLT5yZXN2LCBmYWxzZSwNCisJCQkJICAgICBmYWxzZSwgTUFYX1NDSEVEVUxFX1RJTUVP
VVQpOw0KIH0NCiBFWFBPUlRfU1lNQk9MKGliX3VtZW1fZG1hYnVmX21hcF9wYWdlcyk7DQogDQot
LSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
