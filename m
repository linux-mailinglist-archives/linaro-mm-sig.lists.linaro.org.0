Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E20E519F33
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 14:23:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 877D64655D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 12:23:14 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by lists.linaro.org (Postfix) with ESMTPS id E7472402B7
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 May 2022 12:23:00 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id b19so1766176wrh.11
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 May 2022 05:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=smZ0gPWNwgVHNUbqNV9nPBAq01gHQFd4S8+q2+TY58s=;
        b=JTj8tgy5CRpWboVU8mK1T6TSdxlr429iQ+B9CpuHuCPZqBUbqsZ2g6eoZA1M8cFXvc
         oLCffs8PAbcSyFPI7WsWoSmkpFJu3oBVW/nS7VofEoKthNl1iYlYEny/FPNQObHo3Km5
         mnZfC/mtDll7+9QWuZ370zTxHOrfaJiTfb4WDlx1WDfwA8PSJs1l/+7zkA6GKfxvEYH4
         iOdHPMdFYrYrdFOazj5TgXJ+cmVjKm3GdIAnqYycX44iQYacKFqc+WYJM6ZJw8s+x6lw
         FoQwFrvHSMXWmh/VwbnJbzz8aRsRrkQ7nq0fWl8CPHuUE9rmpDp7SovVzojnSe8mFgCc
         uZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=smZ0gPWNwgVHNUbqNV9nPBAq01gHQFd4S8+q2+TY58s=;
        b=16uRm+g+R7YkjgxdE+V+2rbfSemkgIg5P77fGZLMogUhfSrzXKrdhOL9XzLAXXAZki
         C7z6FFbmC4I66d6RwQyZFQ7N1EeGNmlGAWyZTGK9C0iHcq5t/vBfKEMtngO58DzAbA6+
         zC3xfIEvJCfTZfu8IyFuS8CSdX0+0nnMOwm70Y17SpD9w6jmjIxgUhVhN7OXCGoeNH4K
         GBQWppNyTbHAj4gRCLpjaY9wo8kxR+DPzktArjS+jFXYB3r5FuZWvuEHd9IRXp3lXcTs
         LxRADJybz+LAxZDS8Xz0RyTapZ60np6lBpDWaBzwrTTWXfoV0cnFYCji7Qa37eKYr5tI
         UhEg==
X-Gm-Message-State: AOAM5304SFKmz+b46VgUn7iRTz/2qQ2e/mREo5qZLpf0He0r6TTSfyjI
	D5sZU2O/DNXBj3iyCB1Zt4g=
X-Google-Smtp-Source: ABdhPJzLsQZjFJcpUbgh8ffoMhaIOj98eLnhdS9WN3QPlPkOAOLEcagEhhOLkhmNl9emK5oICD4jlQ==
X-Received: by 2002:a5d:6e90:0:b0:20a:ce36:48fb with SMTP id k16-20020a5d6e90000000b0020ace3648fbmr16160339wrz.628.1651666980017;
        Wed, 04 May 2022 05:23:00 -0700 (PDT)
Received: from able.fritz.box (p57b0b7c9.dip0.t-ipconnect.de. [87.176.183.201])
        by smtp.gmail.com with ESMTPSA id l28-20020a05600c1d1c00b003942a244ed1sm1462119wms.22.2022.05.04.05.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 05:22:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org
Date: Wed,  4 May 2022 14:22:54 +0200
Message-Id: <20220504122256.1654-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220504122256.1654-1-christian.koenig@amd.com>
References: <20220504122256.1654-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: CGMBVKSFLN5PM5G6NG2U3KWMY6R7XYZC
X-Message-ID-Hash: CGMBVKSFLN5PM5G6NG2U3KWMY6R7XYZC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CGMBVKSFLN5PM5G6NG2U3KWMY6R7XYZC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZG1hX2ZlbmNlX2NoYWluIGNvbnRhaW5lcnMgY2xlYW51cCBzaWduYWxlZCBmZW5jZXMgYXV0b21h
dGljYWxseSwgc28NCmZpbHRlciB0aG9zZSBvdXQgZnJvbSBhcnJheXMgYXMgd2VsbC4NCg0KU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
LS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyB8IDIzICsrKysrKysrKysr
KysrKystLS0tLS0tDQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmggICB8ICA0ICsr
LS0NCiAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQoN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KaW5kZXggNzExYmUxMjU0MjhjLi43YjBiOTEw
ODZkZWQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQpAQCAtMzIsOCArMzIsMTMg
QEAgX19kbWFfZmVuY2VfdW53cmFwX2FycmF5KHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpjdXJz
b3IpDQogc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX3Vud3JhcF9maXJzdChzdHJ1Y3QgZG1h
X2ZlbmNlICpoZWFkLA0KIAkJCQkJIHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpjdXJzb3IpDQog
ew0KKwlzdHJ1Y3QgZG1hX2ZlbmNlICp0bXA7DQorDQogCWN1cnNvci0+Y2hhaW4gPSBkbWFfZmVu
Y2VfZ2V0KGhlYWQpOw0KLQlyZXR1cm4gX19kbWFfZmVuY2VfdW53cmFwX2FycmF5KGN1cnNvcik7
DQorCXRtcCA9IF9fZG1hX2ZlbmNlX3Vud3JhcF9hcnJheShjdXJzb3IpOw0KKwlpZiAodG1wICYm
IGRtYV9mZW5jZV9pc19zaWduYWxlZCh0bXApKQ0KKwkJdG1wID0gZG1hX2ZlbmNlX3Vud3JhcF9u
ZXh0KGN1cnNvcik7DQorCXJldHVybiB0bXA7DQogfQ0KIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9m
ZW5jZV91bndyYXBfZmlyc3QpOw0KIA0KQEAgLTQ4LDEyICs1MywxNiBAQCBzdHJ1Y3QgZG1hX2Zl
bmNlICpkbWFfZmVuY2VfdW53cmFwX25leHQoc3RydWN0IGRtYV9mZW5jZV91bndyYXAgKmN1cnNv
cikNCiB7DQogCXN0cnVjdCBkbWFfZmVuY2UgKnRtcDsNCiANCi0JKytjdXJzb3ItPmluZGV4Ow0K
LQl0bXAgPSBkbWFfZmVuY2VfYXJyYXlfbmV4dChjdXJzb3ItPmFycmF5LCBjdXJzb3ItPmluZGV4
KTsNCi0JaWYgKHRtcCkNCi0JCXJldHVybiB0bXA7DQorCWRvIHsNCisJCSsrY3Vyc29yLT5pbmRl
eDsNCisJCXRtcCA9IGRtYV9mZW5jZV9hcnJheV9uZXh0KGN1cnNvci0+YXJyYXksIGN1cnNvci0+
aW5kZXgpOw0KKwkJaWYgKHRtcCAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHRtcCkpDQorCQkJ
cmV0dXJuIHRtcDsNCisNCisJCWN1cnNvci0+Y2hhaW4gPSBkbWFfZmVuY2VfY2hhaW5fd2Fsayhj
dXJzb3ItPmNoYWluKTsNCisJCXRtcCA9IF9fZG1hX2ZlbmNlX3Vud3JhcF9hcnJheShjdXJzb3Ip
Ow0KKwl9IHdoaWxlICh0bXAgJiYgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHRtcCkpOw0KIA0KLQlj
dXJzb3ItPmNoYWluID0gZG1hX2ZlbmNlX2NoYWluX3dhbGsoY3Vyc29yLT5jaGFpbik7DQotCXJl
dHVybiBfX2RtYV9mZW5jZV91bndyYXBfYXJyYXkoY3Vyc29yKTsNCisJcmV0dXJuIHRtcDsNCiB9
DQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KTsNCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLXVud3JhcC5oDQppbmRleCBlN2MyMTlkYTRlZDcuLmU5ZDExNDYzNzI5NCAxMDA2NDQNCi0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQorKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS11bndyYXAuaA0KQEAgLTQxLDggKzQxLDggQEAgc3RydWN0IGRtYV9mZW5jZSAq
ZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpjdXJzb3IpOw0K
ICAqIEBoZWFkOiBzdGFydGluZyBwb2ludCBmb3IgdGhlIGl0ZXJhdG9yDQogICoNCiAgKiBVbndy
YXAgZG1hX2ZlbmNlX2NoYWluIGFuZCBkbWFfZmVuY2VfYXJyYXkgY29udGFpbmVycyBhbmQgZGVl
cCBkaXZlIGludG8gYWxsDQotICogcG90ZW50aWFsIGZlbmNlcyBpbiB0aGVtLiBJZiBAaGVhZCBp
cyBqdXN0IGEgbm9ybWFsIGZlbmNlIG9ubHkgdGhhdCBvbmUgaXMNCi0gKiByZXR1cm5lZC4NCisg
KiBwb3RlbnRpYWwgbm9uZSBzaWduYWxlZCBmZW5jZXMgaW4gdGhlbS4gSWYgQGhlYWQgaXMganVz
dCBhIG5vcm1hbCBmZW5jZSBvbmx5DQorICogdGhhdCBvbmUgaXMgcmV0dXJuZWQuDQogICovDQog
I2RlZmluZSBkbWFfZmVuY2VfdW53cmFwX2Zvcl9lYWNoKGZlbmNlLCBjdXJzb3IsIGhlYWQpCQkJ
XA0KIAlmb3IgKGZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9maXJzdChoZWFkLCBjdXJzb3IpOyBm
ZW5jZTsJXA0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
