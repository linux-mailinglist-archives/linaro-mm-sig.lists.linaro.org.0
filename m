Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 375B351DA18
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 16:10:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A249480A9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 14:10:27 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id C370947FBB
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 May 2022 14:10:13 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id be20so8826443edb.12
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 May 2022 07:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QNt760DjFBo7HAT2HJsEWq9kQPdH1wnsqRHak7OGdbE=;
        b=C2w/6N6kbyW7wVnzjHEOL+TPmgmnkRUjE4m7nOD0xETPp8focvjo6CypBlsChAFjdH
         rIYi5xu4cR7HFotKDwR/oi2wvpCLJyQ/Iqq07iNVjrJbN8ISFmXogi0dAO3Jxx7SkmU4
         MOyoIiT75Gh7/1zH//eMuwRZ5WI7NtDLtFwZ9R5qgDyQk9k2x27IR79vVvc7qetLDs9F
         mB4d0A7Of9GBAJR7GLYDVjHG6ftXGFXhlUKgr1JuV7gaCebYbNBSBkXunxic38FXLmrh
         TTkQjQOmES6doapjyvA0yToi+JAZXUG1ezejkLs28vHTZy8sX7P3ZtU32v9yjGenzF9V
         wWWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QNt760DjFBo7HAT2HJsEWq9kQPdH1wnsqRHak7OGdbE=;
        b=NcOr/U0BE88rIYgoY0V7ljkqLCkBuSg+jQdFY9acQtpzSXaFygSDFLJ0LrspaVkDN8
         +XahkVXpcrsZ+oGHKhynYLwkC1TCcsFelQPIIHfcy0TtSOv7mH/VGIJuLhy0VHSrlWZL
         6uE4jiUATK+G8BffTienaL7kUQUQSATCar74zha9r9ukyKouGBXJhzASIYtL+2Idrd3Z
         BubXumc4kh22Qo87UeFEmAf06ZZ4zDPuC3A48B5IrvzKP5dhfOzO0Uai+xRoLD7i/wxV
         8GjoMfk0Cdns3jSBajjR0Bk3dH141nwIEcamjdefiI66zouNp3CCypaMVZVRAu5nG9yY
         fneA==
X-Gm-Message-State: AOAM5337wT00e4lmHZxnArmsuAYbrB9ObF8P2KF60WO6jx19OZ7gRzst
	ZjDhLwQ/dZIjE0+hgEcrhDY=
X-Google-Smtp-Source: ABdhPJxuGXiCo/++b2braxDlEZUUiIW9zHboM3NzkydRtAsGo5ltD8AOTRLv4lnCa/0vWeRSaQqT8w==
X-Received: by 2002:a05:6402:3490:b0:427:b471:9e1e with SMTP id v16-20020a056402349000b00427b4719e1emr3624011edc.36.1651846213529;
        Fri, 06 May 2022 07:10:13 -0700 (PDT)
Received: from able.fritz.box (p57b0b3fd.dip0.t-ipconnect.de. [87.176.179.253])
        by smtp.gmail.com with ESMTPSA id jx3-20020a170907760300b006f3ef214e22sm1915415ejc.136.2022.05.06.07.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:10:13 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	linaro-mm-sig@lists.linaro.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org
Date: Fri,  6 May 2022 16:10:07 +0200
Message-Id: <20220506141009.18047-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506141009.18047-1-christian.koenig@amd.com>
References: <20220506141009.18047-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: HTVGUALD4XWXDPE6HWY4WBA3LA2VSKOY
X-Message-ID-Hash: HTVGUALD4XWXDPE6HWY4WBA3LA2VSKOY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HTVGUALD4XWXDPE6HWY4WBA3LA2VSKOY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZG1hX2ZlbmNlX2NoYWluIGNvbnRhaW5lcnMgY2xlYW51cCBzaWduYWxlZCBmZW5jZXMgYXV0b21h
dGljYWxseSwgc28NCmZpbHRlciB0aG9zZSBvdXQgZnJvbSBhcnJheXMgYXMgd2VsbC4NCg0KdjI6
IGZpeCBtaXNzaW5nIHdhbGsgb3ZlciB0aGUgYXJyYXkNCnYzOiBtYXNzaXZlbHkgc2ltcGxpZnkg
dGhlIHBhdGNoIGFuZCBhY3R1YWxseSB1cGRhdGUgdGhlIGRlc2NyaXB0aW9uLg0KDQpTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0N
CiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCB8IDYgKysrKystDQogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11
bndyYXAuaA0KaW5kZXggZTdjMjE5ZGE0ZWQ3Li5hNGQzNDJmZWY4ZTAgMTAwNjQ0DQotLS0gYS9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UtdW53cmFwLmgNCkBAIC00Myw5ICs0MywxMyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFf
ZmVuY2VfdW53cmFwX25leHQoc3RydWN0IGRtYV9mZW5jZV91bndyYXAgKmN1cnNvcik7DQogICog
VW53cmFwIGRtYV9mZW5jZV9jaGFpbiBhbmQgZG1hX2ZlbmNlX2FycmF5IGNvbnRhaW5lcnMgYW5k
IGRlZXAgZGl2ZSBpbnRvIGFsbA0KICAqIHBvdGVudGlhbCBmZW5jZXMgaW4gdGhlbS4gSWYgQGhl
YWQgaXMganVzdCBhIG5vcm1hbCBmZW5jZSBvbmx5IHRoYXQgb25lIGlzDQogICogcmV0dXJuZWQu
DQorICoNCisgKiBOb3RlIHRoYXQgc2lnbmFsbGVkIGZlbmNlcyBhcmUgb3Bwb3J0dW5pc3RpY2Fs
bHkgZmlsdGVyZWQgb3V0LCB3aGljaA0KKyAqIG1lYW5zIHRoZSBpdGVyYXRpb24gaXMgcG90ZW50
aWFsbHkgb3ZlciBubyBmZW5jZSBhdCBhbGwuDQogICovDQogI2RlZmluZSBkbWFfZmVuY2VfdW53
cmFwX2Zvcl9lYWNoKGZlbmNlLCBjdXJzb3IsIGhlYWQpCQkJXA0KIAlmb3IgKGZlbmNlID0gZG1h
X2ZlbmNlX3Vud3JhcF9maXJzdChoZWFkLCBjdXJzb3IpOyBmZW5jZTsJXA0KLQkgICAgIGZlbmNl
ID0gZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KGN1cnNvcikpDQorCSAgICAgZmVuY2UgPSBkbWFfZmVu
Y2VfdW53cmFwX25leHQoY3Vyc29yKSkJCQlcDQorCQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxl
ZChmZW5jZSkpDQogDQogI2VuZGlmDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
