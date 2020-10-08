Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8BF28734E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 13:25:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4624F664F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 11:25:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 395FE66023; Thu,  8 Oct 2020 11:25:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3BC866034;
	Thu,  8 Oct 2020 11:24:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 188B860F40
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 11:23:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0CDF766023; Thu,  8 Oct 2020 11:23:51 +0000 (UTC)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by lists.linaro.org (Postfix) with ESMTPS id 80ED060F40
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 11:23:47 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id md26so7535499ejb.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Oct 2020 04:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MkTgctKmN/+akcDLdg3dMFFDd8/FeV1m0XEzLiveir0=;
 b=C2tb8KeAPfV5q6VRwsAC/iyTIjPFWPpDKMYAve28m2HTH/aObpCLGb8saqscgOg+0h
 VIVSZ3En7wwB7zQpIAoACwURDNe9CFPUzlTX+AX1iwLJTaYYMqhxrfGTKCeceJGRI6ce
 k5m0j6/YoCfZR9Yb1xUgeb5ymPB3hHitdt2X7Nea6fx3bOcuwKA1SM/l3ypPWyn6t8TG
 EKrC9q1I0Jfw/DOuMR5rxXHGz07jKZYS0mc1zg74GCklz+tu/1eoQNUKGN/1/lVYikoX
 wBSYmLEHKkbT+qzEKvKg06DHg/t8AHdNuKf5eQLt7gafDhcrqnnS8bOQidrid3sXe7O4
 fVrQ==
X-Gm-Message-State: AOAM533Xm8bBZy4ZJyLs1LV4QXBtK1sjWvGK4QJ62888AlHa6suxoEbV
 u2U4vZUIT1PQlOccLNvttcc=
X-Google-Smtp-Source: ABdhPJydc6wMYfotM6Ls7zhjsrHFWLvCwnPy4prHIfnBFnQVlWjXOhRunGbHJon/G6KJb7Y66ZUIsg==
X-Received: by 2002:a17:906:7d7:: with SMTP id
 m23mr8424563ejc.47.1602156226681; 
 Thu, 08 Oct 2020 04:23:46 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:4c64:a9a0:5e0:905a])
 by smtp.gmail.com with ESMTPSA id i20sm3529030edv.96.2020.10.08.04.23.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 04:23:46 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk, airlied@redhat.com,
 akpm@linux-foundation.org, daniel@ffwll.ch, sumit.semwal@linaro.org
Date: Thu,  8 Oct 2020 13:23:41 +0200
Message-Id: <20201008112342.9394-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201008112342.9394-1-christian.koenig@amd.com>
References: <20201008112342.9394-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 3/4] drm/radeon: stop using pages with
	drm_prime_sg_to_page_addr_arrays
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

VGhpcyBpcyBkZXByZWNhdGVkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X3R0bS5jIHwgOSArKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
dHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYwppbmRleCA2M2UzOGIw
NWE1YmMuLjRiOTJjZGJjZDI5YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fdHRtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMKQEAg
LTQ3NCw4ICs0NzQsOCBAQCBzdGF0aWMgaW50IHJhZGVvbl90dG1fdHRfcGluX3VzZXJwdHIoc3Ry
dWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsIHN0cnVjdCB0dG1fdHQgKgogCWlmIChyKQogCQlnb3Rv
IHJlbGVhc2Vfc2c7CiAKLQlkcm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyh0dG0tPnNn
LCB0dG0tPnBhZ2VzLAotCQkJCQkgZ3R0LT50dG0uZG1hX2FkZHJlc3MsIHR0bS0+bnVtX3BhZ2Vz
KTsKKwlkcm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyh0dG0tPnNnLCBOVUxMLCBndHQt
PnR0bS5kbWFfYWRkcmVzcywKKwkJCQkJIHR0bS0+bnVtX3BhZ2VzKTsKIAogCXJldHVybiAwOwog
CkBAIC02NDIsOCArNjQyLDkgQEAgc3RhdGljIGludCByYWRlb25fdHRtX3R0X3BvcHVsYXRlKHN0
cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LAogCX0KIAogCWlmIChzbGF2ZSAmJiB0dG0tPnNnKSB7
Ci0JCWRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHR0bS0+c2csIHR0bS0+cGFnZXMs
Ci0JCQkJCQkgZ3R0LT50dG0uZG1hX2FkZHJlc3MsIHR0bS0+bnVtX3BhZ2VzKTsKKwkJZHJtX3By
aW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXModHRtLT5zZywgTlVMTCwKKwkJCQkJCSBndHQtPnR0
bS5kbWFfYWRkcmVzcywKKwkJCQkJCSB0dG0tPm51bV9wYWdlcyk7CiAJCXR0bV90dF9zZXRfcG9w
dWxhdGVkKHR0bSk7CiAJCXJldHVybiAwOwogCX0KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
