Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2240D494F01
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 14:28:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A5E73EE9A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 13:28:48 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id C007A3EE9D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 13:27:52 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id q141-20020a1ca793000000b00347b48dfb53so13857317wme.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 05:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=iAcYclpd/6FIhZinrEfjwuNasmRfUX8EQW8kMKH7eHI=;
        b=JZCYu9MsvVyyMkLSyd+lJilG330m4+DBrbl/Un7UaoLCZybFsPg8RHuPti4apVUnwh
         /xyufUo1OjFZa9yPHIrIz/XFQuTW1MspVVqfpYeUdI1ueeRG/x3h1NIAb43KxsKTTSwi
         pNyNXbyLzQNeCtMLOcwJIUIp2QpATFlFyrCqh0sjt7NyGoeez0OiwhywbAdHr+TSWrFO
         Pt7pxxgr0DCwY/zHyTF+vKVuxhp/J0KWm3GYtqvelUW2FBxj4hPWck9WvbPooPjHzG8H
         e46Gzn7oFUoxokisfqGo0KtPkG6M1czzHmrtcCYZvQQ7FuCkjQDIq/7i0XYUlrb49VYS
         qu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iAcYclpd/6FIhZinrEfjwuNasmRfUX8EQW8kMKH7eHI=;
        b=W0rBF1Q8IC4bUmUQ3nCRfLl57zrLC3lGBnh+Uk6tpMKwtxq8BbUBzcycbLYxbDbDzX
         nALWZn3RoEKVFs4rLxhq4iG8w1gxx7Emp+bRoHcoMbCKO22MDMQoYU4J2Q0+eY/JJpbr
         PwFJ9VlEygRgZi44OTqYgdjm0zbsBphGtVGDMSc3nHsgEE/Fgt6HNjPLzzYAea4jaUiC
         40ObnI0SjSgw+uRghN7pRv2jGxReqFU4i7PxpsleMvR/cmqsvYuU7/oAefipXVUFJbpW
         UsRXq2a40OLUGAxQ3+jwH8i6rUCWWSmOFSBuo25vXeF+SQC+PLyI+MBf8dJLeZGjIDsc
         ilRg==
X-Gm-Message-State: AOAM532X0nBpURkZEPyMgdWNYdBeCIXbRyBQtsSd+98yZyZqNZjE+XeC
	PcNYqfVT1tIYbKrPWwbuXrA=
X-Google-Smtp-Source: ABdhPJzNuFHgN0BH3Hh5XR2ychKDo4juRHkyCqcEGSf0zzAoftBbFsYbzE5wAQTbkiN7XxAuvJAGyA==
X-Received: by 2002:a5d:6042:: with SMTP id j2mr1881746wrt.105.1642685271909;
        Thu, 20 Jan 2022 05:27:51 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id a9sm2658454wmm.32.2022.01.20.05.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 05:27:51 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 20 Jan 2022 14:27:41 +0100
Message-Id: <20220120132747.2348-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220120132747.2348-1-christian.koenig@amd.com>
References: <20220120132747.2348-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 3KN4T4PHLNVU54CNK66AKBBSJLTTU2UJ
X-Message-ID-Hash: 3KN4T4PHLNVU54CNK66AKBBSJLTTU2UJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/9] dma-buf: Warn about dma_fence_chain container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3KN4T4PHLNVU54CNK66AKBBSJLTTU2UJ/>
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
ClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPg0KLS0t
DQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jIHwgOCArKysrKysrKw0KIDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UtY2hhaW4uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0K
aW5kZXggMWI0Y2IzZTVjZWM5Li5mYTMzZjZiN2Y3N2IgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Ut
Y2hhaW4uYw0KQEAgLTI1NCw1ICsyNTQsMTMgQEAgdm9pZCBkbWFfZmVuY2VfY2hhaW5faW5pdChz
dHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiwNCiANCiAJZG1hX2ZlbmNlX2luaXQoJmNoYWlu
LT5iYXNlLCAmZG1hX2ZlbmNlX2NoYWluX29wcywNCiAJCSAgICAgICAmY2hhaW4tPmxvY2ssIGNv
bnRleHQsIHNlcW5vKTsNCisNCisJLyogQ2hhaW5pbmcgZG1hX2ZlbmNlX2NoYWluIGNvbnRhaW5l
ciB0b2dldGhlciBpcyBvbmx5IGFsbG93ZWQgdGhyb3VnaA0KKwkgKiB0aGUgcHJldiBmZW5jZSBh
bmQgbm90IHRocm91Z2ggdGhlIGNvbnRhaW5lZCBmZW5jZS4NCisJICoNCisJICogVGhlIGNvcnJl
Y3Qgd2F5IG9mIGhhbmRsaW5nIHRoaXMgaXMgdG8gZmxhdHRlbiBvdXQgdGhlIGZlbmNlDQorCSAq
IHN0cnVjdHVyZSBpbnRvIGEgZG1hX2ZlbmNlX2FycmF5IGJ5IHRoZSBjYWxsZXIgaW5zdGVhZC4N
CisJICovDQorCVdBUk5fT04oZG1hX2ZlbmNlX2lzX2NoYWluKGZlbmNlKSk7DQogfQ0KIEVYUE9S
VF9TWU1CT0woZG1hX2ZlbmNlX2NoYWluX2luaXQpOw0KLS0gDQoyLjI1LjENCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
