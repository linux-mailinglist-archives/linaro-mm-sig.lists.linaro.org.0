Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9F141EAAC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:09:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 589BA6314C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:09:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3C2B561805; Fri,  1 Oct 2021 10:08:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9C5467E36;
	Fri,  1 Oct 2021 10:08:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 019B760EFF
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EA97262EA0; Fri,  1 Oct 2021 10:06:47 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id C7DFD62D35
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:37 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id b192so6812812wmb.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jIUir/k9ok0mhA9lZLcDk0nsv9skwzmV2ts7X5dBo9o=;
 b=WN6qInpAsn24+ftDpOyCYIkBgofW7UaWxMslwRXjLU3tyhh3Ca31+rUNhj+m9LztjU
 sWlGZD0XwTpt2tvUoPdlCD0YI/kuc5NjlzJM3AL8v//Od+x+O5S9Bx1fg2QpUDF5QPk1
 v2zv0mPo3/0J6rlyBUFGwQq3jLBGRNgXXFRDhJPUW+rSLH4e0pbxLaEWoRTavpYUXAu+
 w5Y1FWlBaSQL+7OURv5Er1N3tlBspNHHn8g2E23BT+BrottgnGEiJ8e6Km0kCfPFI4Az
 LjBlXpnYh0LjQHfhVPTCWNRFHPAoBtx2ZxOYXYlMEyBzq1Sf4TBz1KqRD1vafSvHIXhQ
 2KdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jIUir/k9ok0mhA9lZLcDk0nsv9skwzmV2ts7X5dBo9o=;
 b=2TseNQzV4E+MoBs4MEPbb+YuBS4pIMWA8NdKiZv7F+4yIvHuFsRjzoCR7xCZLS5T6r
 bII5rZ1DYYpNYZRTRxR7Wj1TMiyVy0HSamlyh2V2lPO+5D/JelLaXBIUc/+oybw5ZtQK
 kzLoStswGOwMmPUl8LXXuUYk2zr+NGG71NDsiQpQVKScydh4U2er2KgnUG+EwkHGtxX3
 rPy0O1GyC2YISsJZ60WEZpVwmTzzKZYi8EKiPxOpIli+aVIlBmbg5iPqZKpvRNDeAKv9
 poqUGBbI0bpFiAI5RUyoUgNL4KTXw/LKRjrmQvq1V3svClGEt0mYMvomjArTx65Bvshw
 wXzw==
X-Gm-Message-State: AOAM532G4Wi1BcIfzr7YTNXRAmKZvOLi8wkjeM97vIv5Ol9c22Sqb5L8
 Efu+NW4Ku8LWg9sFrUJhK/uDogsGovQ=
X-Google-Smtp-Source: ABdhPJymDfL7NFE48Y02DYUiKpeGEfG6vmQwsVgnGjDCH8Rsk9Komv7T3/TkF1ZwvPureSAXTL/EgQ==
X-Received: by 2002:a1c:44d7:: with SMTP id r206mr3584007wma.150.1633082796860; 
 Fri, 01 Oct 2021 03:06:36 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:36 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:09 +0200
Message-Id: <20211001100610.2899-28-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 27/28] drm/etnaviv: use new iterator in
 etnaviv_gem_describe
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgdGhlIGxvZ2ljLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgfCAzMSArKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwppbmRleCA4ZjFiNWFmNDdkZDYuLjBlZWIzM2Rl
MmZmNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCkBAIC00MjgsMTkgKzQy
OCwxNyBAQCBpbnQgZXRuYXZpdl9nZW1fd2FpdF9ibyhzdHJ1Y3QgZXRuYXZpdl9ncHUgKmdwdSwg
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCiBzdGF0aWMgdm9pZCBldG5hdml2X2dlbV9kZXNj
cmliZV9mZW5jZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKIAljb25zdCBjaGFyICp0eXBlLCBz
dHJ1Y3Qgc2VxX2ZpbGUgKm0pCiB7Ci0JaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdO
QUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQotCQlzZXFfcHJpbnRmKG0sICJcdCU5czogJXMgJXMg
c2VxICVsbHVcbiIsCi0JCQkgICB0eXBlLAotCQkJICAgZmVuY2UtPm9wcy0+Z2V0X2RyaXZlcl9u
YW1lKGZlbmNlKSwKLQkJCSAgIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKSwK
LQkJCSAgIGZlbmNlLT5zZXFubyk7CisJc2VxX3ByaW50ZihtLCAiXHQlOXM6ICVzICVzIHNlcSAl
bGx1XG4iLCB0eXBlLAorCQkgICBmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpLAor
CQkgICBmZW5jZS0+b3BzLT5nZXRfdGltZWxpbmVfbmFtZShmZW5jZSksCisJCSAgIGZlbmNlLT5z
ZXFubyk7CiB9CiAKIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX2Rlc2NyaWJlKHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCiB7CiAJc3RydWN0IGV0bmF2aXZf
Z2VtX29iamVjdCAqZXRuYXZpdl9vYmogPSB0b19ldG5hdml2X2JvKG9iaik7CiAJc3RydWN0IGRt
YV9yZXN2ICpyb2JqID0gb2JqLT5yZXN2OwotCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqOwor
CXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsK
IAl1bnNpZ25lZCBsb25nIG9mZiA9IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7
CiAKQEAgLTQ0OSwyMSArNDQ3LDE0IEBAIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX2Rlc2NyaWJl
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCiAJCQlvYmot
Pm5hbWUsIGtyZWZfcmVhZCgmb2JqLT5yZWZjb3VudCksCiAJCQlvZmYsIGV0bmF2aXZfb2JqLT52
YWRkciwgb2JqLT5zaXplKTsKIAotCXJjdV9yZWFkX2xvY2soKTsKLQlmb2JqID0gZG1hX3Jlc3Zf
c2hhcmVkX2xpc3Qocm9iaik7Ci0JaWYgKGZvYmopIHsKLQkJdW5zaWduZWQgaW50IGksIHNoYXJl
ZF9jb3VudCA9IGZvYmotPnNoYXJlZF9jb3VudDsKLQotCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVk
X2NvdW50OyBpKyspIHsKLQkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKGZvYmotPnNoYXJlZFtp
XSk7CisJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCByb2JqLCB0cnVlKTsKKwlkbWFfcmVz
dl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQlpZiAoZG1hX3Jl
c3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlldG5hdml2X2dlbV9kZXNjcmliZV9m
ZW5jZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlldG5hdml2X2dlbV9kZXNj
cmliZV9mZW5jZShmZW5jZSwgIlNoYXJlZCIsIG0pOwotCQl9CiAJfQotCi0JZmVuY2UgPSBkbWFf
cmVzdl9leGNsX2ZlbmNlKHJvYmopOwotCWlmIChmZW5jZSkKLQkJZXRuYXZpdl9nZW1fZGVzY3Jp
YmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUiLCBtKTsKLQlyY3VfcmVhZF91bmxvY2soKTsKKwlk
bWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKIH0KIAogdm9pZCBldG5hdml2X2dlbV9kZXNjcmli
ZV9vYmplY3RzKHN0cnVjdCBldG5hdml2X2RybV9wcml2YXRlICpwcml2LAotLSAKMi4yNS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
