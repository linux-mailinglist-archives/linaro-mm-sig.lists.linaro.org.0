Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE19493B4E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 14:43:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 985693EE93
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 13:43:54 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id 5720E3EE7C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 13:43:43 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id cx27so11921321edb.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 05:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZBnr8W3NhjErF+08iBcJ135fidhwJh6suv4msEwXqUY=;
        b=Xm6IWY1PeF5288tssLFaZn1by7Vu5JTy0T4ztY6KDjbHZC0M47grNGiEe/yIkQ3hob
         XsAw9Ag+Yj7/z8JbC0TJQ6TmTebV/YyVTwM3TQ0SIINgm7ZkXYNCSsOlyi/ov5NxQmf1
         HLDO27OQb7OG4PgEQIxvqkmB/JDPgw/FzbXH2rUDzTbhIsfxN/GY10slrnxNTamYdIJN
         9N1DvBxsOMBQZl3pKCSgSeqiz+d2NbMAP/IIKOwTmAQ6/HC4ra4egPhweB1qwiNteR4I
         8CNhz/L/qDyqK1lP2g9y0QeAkEjCZNQnOrF8ninP8l95Ghxx6ZRO52Aac4IaHrEBCU/6
         YQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZBnr8W3NhjErF+08iBcJ135fidhwJh6suv4msEwXqUY=;
        b=pwtR6uoquPHny3mMiOds3z4jFiSjjA94Vzpc2IkKxNVX5+ef9jyuS8e/licm+dJMb8
         IcFY6F3zjBNqFiQso8BN1AWk9lDUfGiLBSFPIOkzXizzNpULT+6fbZJPZqZYeEOArr6h
         /xZDxiFkMklmuxxs5T9PvrHjTGu9lekv9SJrEAcskDgNDnMN2OBsKcQtCj91/Prjzx+L
         2SnDEH1vG+LlsaabguyjEuXOexM5a4oZYksv2Uz1xY/FZehGu35J4s2i1LmgKw3Xz00n
         0MaOS58k+r3ghKaZ7VDjs1Aw2qqZp37Iu1aEmWQLHEJE+oA/cClr3sSTymzidREj04f2
         Mlwg==
X-Gm-Message-State: AOAM530/74/lcAqsrPf3om8bThDmk694Ky/1mzvvyevadJR8Y8baNnIV
	ETJD14pypdKVqUXeaii3ouA=
X-Google-Smtp-Source: ABdhPJwRKHZmp53LX3TFftfhKR37HscsIXg23NmT8Lxx/R9T/LsqBsK1KO902EToCEEBzlGRYFkCow==
X-Received: by 2002:a5d:5745:: with SMTP id q5mr7199118wrw.160.1642599822463;
        Wed, 19 Jan 2022 05:43:42 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id g15sm19733583wrm.2.2022.01.19.05.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 05:43:42 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch
Date: Wed, 19 Jan 2022 14:43:37 +0100
Message-Id: <20220119134339.3102-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220119134339.3102-1-christian.koenig@amd.com>
References: <20220119134339.3102-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: SGDVGTOLNWPHCFPCRRMVKDBD4KUFUASL
X-Message-ID-Hash: SGDVGTOLNWPHCFPCRRMVKDBD4KUFUASL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/4] dma-buf: warn about dma_fence_array container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SGDVGTOLNWPHCFPCRRMVKDBD4KUFUASL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQncyBub3QgYWxsb3dlZCB0byBuZXN0IGFub3RoZXIgZG1hX2ZlbmNlIGNvbnRhaW5lciBpbnRv
IGEgZG1hX2ZlbmNlX2FycmF5DQpvciBvdGhlcndpc2Ugd2UgY2FuIHJ1biBpbnRvIHJlY3Vyc2lv
bi4NCg0KV2FybiBhYm91dCB0aGF0IHdoZW4gd2UgY3JlYXRlIGEgZG1hX2ZlbmNlX2FycmF5Lg0K
DQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgfCAxMyArKysrKysr
KysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UtYXJyYXkuYw0KaW5kZXggM2UwN2Y5NjFlMmYzLi40YmZiY2I4ODViYmMgMTAwNjQ0DQot
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCisrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KQEAgLTE3Niw2ICsxNzYsMTkgQEAgc3RydWN0IGRtYV9m
ZW5jZV9hcnJheSAqZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShpbnQgbnVtX2ZlbmNlcywNCiANCiAJ
YXJyYXktPmJhc2UuZXJyb3IgPSBQRU5ESU5HX0VSUk9SOw0KIA0KKwkvKiBkbWFfZmVuY2VfYXJy
YXkgb2JqZWN0cyBzaG91bGQgbmV2ZXIgY29udGFpbiBhbnkgb3RoZXIgZmVuY2UNCisJICogY29u
dGFpbmVycyBvciBvdGhlcndpc2Ugd2UgcnVuIGludG8gcmVjdXJzaW9uIGFuZCBwb3RlbnRpYWwg
a2VybmVsDQorCSAqIHN0YWNrIG92ZXJmbG93IG9uIG9wZXJhdGlvbnMgb24gdGhlIGRtYV9mZW5j
ZV9hcnJheS4NCisJICoNCisJICogVGhlIGNvcnJlY3Qgd2F5IG9mIGhhbmRsaW5nIHRoaXMgaXMg
dG8gZmxhdHRlbiBvdXQgdGhlIGFycmF5IGJ5IHRoZQ0KKwkgKiBjYWxsZXIgaW5zdGVhZC4NCisJ
ICoNCisJICogRW5mb3JjZSB0aGlzIGhlcmUgYnkgY2hlY2tpbmcgdGhhdCB3ZSBkb24ndCBjcmVh
dGUgYSBkbWFfZmVuY2VfYXJyYXkNCisJICogd2l0aCBhbnkgY29udGFpbmVyIGluc2lkZS4NCisJ
ICovDQorCXdoaWxlIChzZXFuby0tKQ0KKwkJV0FSTl9PTihkbWFfZmVuY2VfaXNfY29udGFpbmVy
KGZlbmNlc1tzZXFub10pKTsNCisNCiAJcmV0dXJuIGFycmF5Ow0KIH0NCiBFWFBPUlRfU1lNQk9M
KGRtYV9mZW5jZV9hcnJheV9jcmVhdGUpOw0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
