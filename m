Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 135154B264B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:50:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A1493EEA2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:50:39 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 9E68E3EE59
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:11 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id p15so22679264ejc.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=O11PH6cXQ1MKcgOLse/KKqk/aB8D36jCk5wxFLe7PFE=;
        b=oauqku5IdpBm58qIim7aQuJ2BgR0oiXNUVRBx2uRK3AkU43BHx4uLKvIOuA/NV6kH5
         +zN8zjC9CMOr6GdrjGFU5O0AAQe/ORJ/Bf0zVnYrDEV1fTR9JCbkcz2fIqAv+07DqUdj
         pzrnSJjQyKK0ubmiukqPSX+xpcETQgwW2BNshch8HVYIE4JZfcyORxf5oIMo34+ywNnm
         jUq2nPv4WF5aTGLMtKnHIItrr6BcVHzDrAphM7FpabDPcMWXTcUfJOV0rC2/ssZ0olsu
         CgoF5HCxJJ4PhetnpkFvXs91thDDEkGkhbcO6Eg60IuAl8TVr402RH9O1oVgL2ezbEYY
         jCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O11PH6cXQ1MKcgOLse/KKqk/aB8D36jCk5wxFLe7PFE=;
        b=d+mtLAw+rwTtaJV923JpK9luD8F6PVzrpT77G44jIhfMNELkb7SSzqvn5GadJ9GW04
         eXq6d2YRVKLJPlLSJFMFcqHEEk0t5DdQe2juu+DPO3TrudLk1+kIN+eIlimNREVktHAX
         0bcuLtdZDFpPlc1ifZXrTLeEIsCxbj61NG6eZqXjew7/1kYA7icSJbY3Vg6/kLZurjgX
         giOVGIMlsmZ0ENyd1Te7PFHd+7x80j4cOEM0N1CkQBqoP7KbIryw8xHQdPl1nTpJzObT
         QmvqpGjeUNhfBTYuY+tusQ4u/bMdhytxqOEldgFg5QRfEvdnuJUw22eUOArtD9gA1go2
         z4cw==
X-Gm-Message-State: AOAM530QSkiORS3Sz1f/sr++wLsJhuLjO/BWB7hlyOktqqvd0TrKq7YD
	++pdr9F1lxau3xgLOnWrhsE=
X-Google-Smtp-Source: ABdhPJxzLcM38PwBEuuKRgjrM2xM6VqP4aLqGyIkzANt6eYO9mvt8osJ9I2eYyXlzDdUOB09h112MQ==
X-Received: by 2002:a17:906:6495:: with SMTP id e21mr1247086ejm.117.1644583810779;
        Fri, 11 Feb 2022 04:50:10 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:10 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:44 +0100
Message-Id: <20220211125003.918447-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: XLX6CPNFTHKE647DTZUCZEWR4E7R5EFR
X-Message-ID-Hash: XLX6CPNFTHKE647DTZUCZEWR4E7R5EFR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 04/23] RDMA: use dma_resv_wait() instead of extracting the fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XLX6CPNFTHKE647DTZUCZEWR4E7R5EFR/>
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
