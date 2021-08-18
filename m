Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A94B3F020D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 12:55:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 291E561523
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 10:54:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 71F9D61236; Wed, 18 Aug 2021 10:54:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 847E0611B2;
	Wed, 18 Aug 2021 10:54:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05ECD6055D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 10:54:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F18BC6109D; Wed, 18 Aug 2021 10:54:49 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id E1B2861081
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 10:54:47 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id
 x2-20020a1c7c02000000b002e6f1f69a1eso4067701wmc.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 03:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=+kSxeYPH8CV+iqzlfochID5tK+dBNU1mNPOjXvv+41U=;
 b=RPJduCSD9q8r/Je8yCUYh7gLrcLVPGaEwhJ8PmTZI0OnLXjU5xbWA8WSkeIKMN+hL+
 ACP4+vS9QCSAWrfK9wsgw2fsEc7jfd17BQfSoFVC/TAzMu9TuDv9rW8kT91csEmMoXtl
 BLgCQtZCKGFiq94DdafvQdTbRe4RytRfgXpIyfMW1dR+KDvwNzD0stEQOnvhK0K6xjQv
 7uzRnxq+CVba+6DsrtnNmG64c1qogW4MU6nDB/pKq/D+X5Z794SgfHmJmIPqgjWmZV3N
 GcBSNHXvx4pkvsCzN2cPdm0D7d9wEem82GYnMJ3ore4H9gAOJRo8ihzAJ9/HVccpmGW+
 739w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+kSxeYPH8CV+iqzlfochID5tK+dBNU1mNPOjXvv+41U=;
 b=NC4RSoDNBzXPxD2AwR6WSwtmEFcYV54UxSiWayZNm0iwxRF5cV3it64SmPW4/+YHCN
 cgtcmoHekrU2kYjTOmUF9wMYpd8zwmZOZ+HMbxd1wAF/L6RdTYi46MRAszLRFmT4IJ2t
 XhH3vudWDp19NRBCycotjfvQv3BRZ0B/fuoXPwMq0DfgjrAX2vK5LNdYaEgM24u8blze
 K6qPOnj/EY5fOGePxMb9QEC3RXFhx7tRhcx6B+x2EWn1pyMu1CTdazNg1bahwtwz9a8d
 y1rebTAGXuOuOlM1cB1nIjTjX4RBr1W08FjH2D1TVILkWX2y2ERrxiuU0kxN23QlB3Ue
 nFnA==
X-Gm-Message-State: AOAM532AK5hdkwQFEFnwq/EMmYSJy0xWfhcB+RMS5tc/VNKDnWMZwuhs
 Bh2mnM76U4CI2MUA9qhlLPY=
X-Google-Smtp-Source: ABdhPJx6f9K9WsiJYEOOCqBwG5HtfeGGZLC6NrPvi/1y2P8nVp3YyMMHxAaZ03XqhpO3hMtXysKxog==
X-Received: by 2002:a7b:cb53:: with SMTP id v19mr7650538wmj.127.1629284086939; 
 Wed, 18 Aug 2021 03:54:46 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 y4sm4646352wmi.22.2021.08.18.03.54.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 03:54:46 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: hridya@google.com, john.stultz@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, gustavo@padovan.org,
 linux-media@vger.kernel.org, adelva@google.com, sspatil@google.com,
 daniel@ffwll.ch
Date: Wed, 18 Aug 2021 12:54:43 +0200
Message-Id: <20210818105443.1578-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210818105443.1578-1-christian.koenig@amd.com>
References: <20210818105443.1578-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-buf: taint the kernel on sw_sync use
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXMgd2Ugbm93IGtuZXcgYWxsb3dpbmcgdXNlcnNwYWNlIGNvbnRyb2wgb3ZlciBkbWFfZmVuY2Ug
c3luY2hyb25pemF0aW9uCmlzIGZ1bmRhbWVudGFsbHkgYnJva2VuIGFuZCBjYW4gY2F1c2UgZGVh
ZGxvY2tzIGluc2lkZSB0aGUga2VybmVsIG1lbW9yeQptYW5hZ2VtZW50LgoKQmVjYXVzZSBvZiB0
aGlzIGhhcmRlbiB0aGUgd29yZGluZyBmb3IgQ09ORklHX1NXX1NZTkMgYW5kIHRhaW50IHRoZSBr
ZXJuZWwKYXMgc29vbiBhcyBpdCBpcyB1c2VkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9LY29u
ZmlnICAgfCA1ICsrKy0tCiBkcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIHwgNSArKysrLQogMiBm
aWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcgYi9kcml2ZXJzL2RtYS1idWYvS2NvbmZpZwppbmRl
eCA5NTYxZTNkMmQ0MjguLjYxZTBmM2M1YmE4YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVm
L0tjb25maWcKKysrIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcKQEAgLTI3LDggKzI3LDkgQEAg
Y29uZmlnIFNXX1NZTkMKIAkgIHN5bmNocm9uaXphdGlvbi4gIFVzZWZ1bCB3aGVuIHRoZXJlIGlz
IG5vIGhhcmR3YXJlIHByaW1pdGl2ZSBiYWNraW5nCiAJICB0aGUgc3luY2hyb25pemF0aW9uLgog
Ci0JICBXQVJOSU5HOiBpbXByb3BlciB1c2Ugb2YgdGhpcyBjYW4gcmVzdWx0IGluIGRlYWRsb2Nr
aW5nIGtlcm5lbAotCSAgZHJpdmVycyBmcm9tIHVzZXJzcGFjZS4gSW50ZW5kZWQgZm9yIHRlc3Qg
YW5kIGRlYnVnIG9ubHkuCisJICBXQVJOSU5HOiBpbXByb3BlciB1c2Ugb2YgdGhpcyBjYW4gcmVz
dWx0IGluIGRlYWRsb2NraW5nIHRoZSBrZXJuZWwKKwkgIG1lbW9yeSBtYW5hZ2VtZW50IGZyb20g
dXNlcnNwYWNlLiBJbnRlbmRlZCBmb3IgdGVzdCBhbmQgZGVidWcgb25seS4KKwkgIFVzZSBhdCB5
b3VyIG93biByaXNrLgogCiBjb25maWcgVURNQUJVRgogCWJvb2wgInVzZXJzcGFjZSBkbWFidWYg
bWlzYyBkcml2ZXIiCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIGIvZHJp
dmVycy9kbWEtYnVmL3N3X3N5bmMuYwppbmRleCAzNDhiM2E5MTcwZmEuLmMyYmNiOTA2MmY1MSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYworKysgYi9kcml2ZXJzL2RtYS1i
dWYvc3dfc3luYy5jCkBAIC0yODYsNyArMjg2LDggQEAgc3RhdGljIHN0cnVjdCBzeW5jX3B0ICpz
eW5jX3B0X2NyZWF0ZShzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLAogLyoKICAqICpXQVJOSU5H
KgogICoKLSAqIGltcHJvcGVyIHVzZSBvZiB0aGlzIGNhbiByZXN1bHQgaW4gZGVhZGxvY2tpbmcg
a2VybmVsIGRyaXZlcnMgZnJvbSB1c2Vyc3BhY2UuCisgKiBpbXByb3BlciB1c2Ugb2YgdGhpcyBj
YW4gcmVzdWx0IGluIGRlYWRsb2NraW5nIGtlcm5lbCBtZW1vcnkgbWFuYWdlbWVudAorICogZnJv
bSB1c2Vyc3BhY2UuCiAgKi8KIAogLyogb3BlbmluZyBzd19zeW5jIGNyZWF0ZSBhIG5ldyBzeW5j
IG9iaiAqLwpAQCAtMjk1LDYgKzI5Niw4IEBAIHN0YXRpYyBpbnQgc3dfc3luY19kZWJ1Z2ZzX29w
ZW4oc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpCiAJc3RydWN0IHN5bmNf
dGltZWxpbmUgKm9iajsKIAljaGFyIHRhc2tfY29tbVtUQVNLX0NPTU1fTEVOXTsKIAorCWFkZF90
YWludChUQUlOVF9TT0ZUTE9DS1VQLCBMT0NLREVQX1NUSUxMX09LKTsKKwogCWdldF90YXNrX2Nv
bW0odGFza19jb21tLCBjdXJyZW50KTsKIAogCW9iaiA9IHN5bmNfdGltZWxpbmVfY3JlYXRlKHRh
c2tfY29tbSk7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
