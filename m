Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 10385493B53
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 14:44:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33F833EE83
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 13:44:11 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 59B123EE88
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 13:43:45 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id j23so6661513edp.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 05:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B/RyGnK1GOVV7mP2i6NUyL8dXTOp5mSU0ausD8jObPM=;
        b=pVinbeY9LHg95yEKahv8g20gbCh1BdN4nWVUNdHsg+Pi7vXMs7N2GB4+sLUsB4rsUg
         y/+M947KC1OlC3mGcqiIs8LRAHHVwr98JEqW6NRQw2F6Vy/1KJi07x/DFBPsb2QC+n/V
         V3FdSFUIqBfQNiY6aoimqXHksG39jj/AvaMF7Xt6hyubaqlKmNxlcVEvx3W2O6fT2q4X
         QT5eoUkU/xpo21Wveo2E3YK2AWcVVWrEdXeSDL62ggUKkKSB+tpmWyRDIbdpwptp8mhP
         NRrA0ef94fYDJRJgN5CHcL0SnLD/aNcyKCZFjdfLT2jkO146+Ty80EATuNp2RuHR81yF
         sQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B/RyGnK1GOVV7mP2i6NUyL8dXTOp5mSU0ausD8jObPM=;
        b=yMBbhpk+gQ51fgCv1TUemQoyLOygCyLJPa0virQ62sTaSIIAdtzDrNxM8nIVXIlxmm
         ClJyAAKPA7qmoF8BNTQegAhIKHywc8DFcMXfsRXJ+hrw3gu7+EsXW7/4t7BKFUqji5AF
         6T1h8jBDeFrjCZR+lwoMswrCY+XPMvrBxPJIrUrVZNd/ThYxmL41SQ4/9S86zyiYWWTn
         9js/IaDttQ4CVlUvG9g8WdeFowYE/RbHMtAg2CJVbTJMgWbOwbl820XgUlOzNY4CByGl
         v6Kwhr1HG7YMIaC69aLviWuueOPnM919Z8Mfo0/BRcNKAhiRa4ueuX6C2AsYWPjHNGjT
         YJeg==
X-Gm-Message-State: AOAM531vGVJg6DeB8ZU+7mRFefqJ6T23JqGK4B//u82M/tXXxGmAr1+F
	wEgfEwCiCP7S1Pc5KrAVn+E=
X-Google-Smtp-Source: ABdhPJyRkjh8/psx0CRmEPXxOUN/B1pOuBL36LxzwXxNBKNTIJUgRDrIKqquQcrZosFF3bO3uS8Y/A==
X-Received: by 2002:a5d:64aa:: with SMTP id m10mr17658023wrp.295.1642599824450;
        Wed, 19 Jan 2022 05:43:44 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id g15sm19733583wrm.2.2022.01.19.05.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 05:43:43 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch
Date: Wed, 19 Jan 2022 14:43:39 +0100
Message-Id: <20220119134339.3102-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220119134339.3102-1-christian.koenig@amd.com>
References: <20220119134339.3102-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: DFMJJMKXDPWSEE3E5QSG4NZ6J6DWGQZE
X-Message-ID-Hash: DFMJJMKXDPWSEE3E5QSG4NZ6J6DWGQZE
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/4] dma-buf: warn about containers in dma_resv object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DFMJJMKXDPWSEE3E5QSG4NZ6J6DWGQZE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHJpdmVycyBzaG91bGQgbm90IGFkZCBjb250YWluZXJzIGFzIHNoYXJlZCBmZW5jZXMgdG8gdGhl
IGRtYV9yZXN2DQpvYmplY3QsIGluc3RlYWQgZWFjaCBmZW5jZSBzaG91bGQgYmUgYWRkZWQgaW5k
aXZpZHVhbGx5Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDUgKysr
KysNCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQppbmRl
eCA2ZGQ5YTQwYjU1ZDQuLmU4YTBjMWQ1MWRhMiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KQEAgLTI1Niw2
ICsyNTYsMTEgQEAgdm9pZCBkbWFfcmVzdl9hZGRfc2hhcmVkX2ZlbmNlKHN0cnVjdCBkbWFfcmVz
diAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiANCiAJZG1hX3Jlc3ZfYXNzZXJ0X2hl
bGQob2JqKTsNCiANCisJLyogRHJpdmVycyBzaG91bGQgbm90IGFkZCBjb250YWluZXJzIGhlcmUs
IGluc3RlYWQgYWRkIGVhY2ggZmVuY2UNCisJICogaW5kaXZpZHVhbGx5Lg0KKwkgKi8NCisJV0FS
Tl9PTihkbWFfZmVuY2VfaXNfY29udGFpbmVyKGZlbmNlKSk7DQorDQogCWZvYmogPSBkbWFfcmVz
dl9zaGFyZWRfbGlzdChvYmopOw0KIAljb3VudCA9IGZvYmotPnNoYXJlZF9jb3VudDsNCiANCi0t
IA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
