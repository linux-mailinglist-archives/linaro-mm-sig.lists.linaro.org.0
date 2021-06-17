Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F593AB250
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 533AF63514
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4D1816350A; Thu, 17 Jun 2021 11:17:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61BE461A29;
	Thu, 17 Jun 2021 11:16:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A2B6061451
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8459B63502; Thu, 17 Jun 2021 11:16:09 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by lists.linaro.org (Postfix) with ESMTPS id 24ED9634FB
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:07 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id t3so3451503edc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=xl1Z5pt8CfNzK8P+30y9KR+Njohg46PKrHJ0MHxGVhM=;
 b=RUZspJerSlauoLqeCHoGlNOOWVujbPNfqudZ0ORdCINHOxId84sz9H/GQYZjYx2BGm
 WPSE5JXHXhbDHpYHVHjepznWbfKU8oGcM4eSCMXaSGCkbDJPAsFErqd0pYlkq2Fe3Fzs
 Ru1OLtoRZd8MB1u9zSj05A3jh0LMWZA6fqQcqJFncYN6r1iKZXJnHqInNp0giTqKcEW3
 eqvNuoSWp1fGRTZ/3qMHf+QnM57GGXIAg9ZTKcPVKycYCw8+srNVykEIwAhndZVjExFy
 QMFdivUzyagRrLAu3Ycis+/DvfLDJVApipfIF8o9l5AYEs18rpRpzIOZuL0nkw29oIj1
 VEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xl1Z5pt8CfNzK8P+30y9KR+Njohg46PKrHJ0MHxGVhM=;
 b=aCPiiEdNpX7FkCl0NZWIPKRyKZzDvqy2CJFA9aqZxuhda4eB49naW9gkG3V9cbyzJO
 Gm0CZyID+FNi0aXLVL2X+/Ea2r1mromEP45YOb06SnvLJvwveHM1Bv+PqKKUeUiA4A35
 8VFWN5tGSrWp+28aufT1XfZmQsoTIPI8lPyUkeN43+lD69+Ar8cZI/XH8J3vwEC3lnut
 Jyjuft2Xgr5cRv+VUDVi94lSVMBCuPmxyWdKHmR4wKj9uxYix50nw7HcCFjmc/x84UM6
 sm6Yn7UiLTtPfDZFaWZ3zUKH5a4LErX6PYlsjW/nxCei9UDW4AWUOQyXa2U1C+TDWXVk
 ibaQ==
X-Gm-Message-State: AOAM5324PbY6Y4I/NcE7XQX4TXVWRcELzXdvIJpyE2lIyzIOm40tyxOl
 2r8B98MxyZr3ZzADtlTmBhQ=
X-Google-Smtp-Source: ABdhPJzeDo2Tbf1vXUedAei37ItrPOvsfX320YeV5SkZ+q9uzU8nEo9TjkFZ62EcQZbfm+g0w5OyVw==
X-Received: by 2002:aa7:d892:: with SMTP id u18mr5878105edq.196.1623928566110; 
 Thu, 17 Jun 2021 04:16:06 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:05 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:49 +0200
Message-Id: <20210617111558.28486-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 07/16] dma-buf: use new iterator in
 dma_buf_poll
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIHwgNDkgKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYwppbmRleCBiNjdmYmY0ZTM3MDUuLjQxNzNmMWY3MGFjMSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCkBAIC0y
MDcsMTUgKzIwNywxMyBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3BvbGxfY2Ioc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQogCiBzdGF0aWMgX19wb2xsX3Qg
ZG1hX2J1Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICpwb2xsKQogeworCXN0
cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vyc29yOwogCXN0cnVjdCBkbWFfYnVmX3BvbGxfY2JfdCAq
ZGNiOwogCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7CiAJc3RydWN0IGRtYV9yZXN2ICpyZXN2Owot
CXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqOwotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlX2V4
Y2w7Ci0JdW5zaWduZWQgc2hhcmVkX2NvdW50LCBzZXE7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2U7CiAJX19wb2xsX3QgZXZlbnRzOwotCWludCByLCBpOworCWludCByOwogCiAJZG1hYnVmID0g
ZmlsZS0+cHJpdmF0ZV9kYXRhOwogCWlmICghZG1hYnVmIHx8ICFkbWFidWYtPnJlc3YpCkBAIC0y
NDEsNTMgKzIzOSwxNCBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVjdCBmaWxl
ICpmaWxlLCBwb2xsX3RhYmxlICpwb2xsKQogCWlmICghZXZlbnRzKQogCQlyZXR1cm4gMDsKIAot
cmV0cnk6Ci0Jc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmcmVzdi0+c2VxKTsKLQlyY3VfcmVh
ZF9sb2NrKCk7Ci0KLQlmb2JqID0gcmN1X2RlcmVmZXJlbmNlKHJlc3YtPmZlbmNlKTsKLQlpZiAo
Zm9iaiAmJiBldmVudHMgJiBFUE9MTE9VVCkKLQkJc2hhcmVkX2NvdW50ID0gZm9iai0+c2hhcmVk
X2NvdW50OwotCWVsc2UKLQkJc2hhcmVkX2NvdW50ID0gMDsKLQotCWZvciAoaSA9IDA7IGkgPCBz
aGFyZWRfY291bnQ7ICsraSkgewotCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShmb2JqLT5zaGFy
ZWRbaV0pOwotCQlmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKTsKLQkJaWYgKCFmZW5j
ZSB8fCByZWFkX3NlcWNvdW50X3JldHJ5KCZyZXN2LT5zZXEsIHNlcSkpIHsKLQkJCS8qIENvbmN1
cnJlbnQgbW9kaWZ5IGRldGVjdGVkLCBmb3JjZSByZS1jaGVjayAqLwotCQkJZG1hX2ZlbmNlX3B1
dChmZW5jZSk7Ci0JCQlyY3VfcmVhZF91bmxvY2soKTsKLQkJCWdvdG8gcmV0cnk7Ci0JCX0KLQot
CQlyID0gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhmZW5jZSwgJmRjYi0+Y2IsIGRtYV9idWZfcG9s
bF9jYik7Ci0JCWlmICghcikgewotCQkJLyogQ2FsbGJhY2sgcXVldWVkICovCi0JCQlldmVudHMg
PSAwOwotCQkJZ290byBvdXQ7Ci0JCX0KLQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Ci0JfQotCi0J
ZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKHJlc3YpOwotCWlmIChmZW5jZSkgewotCQlmZW5j
ZSA9IGRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKTsKLQkJaWYgKCFmZW5jZSB8fCByZWFkX3NlcWNv
dW50X3JldHJ5KCZyZXN2LT5zZXEsIHNlcSkpIHsKLQkJCS8qIENvbmN1cnJlbnQgbW9kaWZ5IGRl
dGVjdGVkLCBmb3JjZSByZS1jaGVjayAqLwotCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Ci0JCQly
Y3VfcmVhZF91bmxvY2soKTsKLQkJCWdvdG8gcmV0cnk7Ci0KLQkJfQotCisJZG1hX3Jlc3ZfZm9y
X2VhY2hfZmVuY2VfdW5sb2NrZWQocmVzdiwgJmN1cnNvciwgZXZlbnRzICYgRVBPTExPVVQsCisJ
CQkJCSBmZW5jZSkgewogCQlyID0gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhmZW5jZSwgJmRjYi0+
Y2IsIGRtYV9idWZfcG9sbF9jYik7CiAJCWlmICghcikgewogCQkJLyogQ2FsbGJhY2sgcXVldWVk
ICovCiAJCQlldmVudHMgPSAwOwogCQkJZ290byBvdXQ7CiAJCX0KLQkJZG1hX2ZlbmNlX3B1dChm
ZW5jZV9leGNsKTsKIAl9CiAKIAkvKiBObyBjYWxsYmFjayBxdWV1ZWQsIHdha2UgdXAgYW55IGFk
ZGl0aW9uYWwgd2FpdGVycy4gKi8KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
