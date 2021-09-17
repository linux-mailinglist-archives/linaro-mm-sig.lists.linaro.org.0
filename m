Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B149140F7C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48D3064AE2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9008463549; Fri, 17 Sep 2021 12:35:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAB5C69CE7;
	Fri, 17 Sep 2021 12:35:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4DDC866BEE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 822876362B; Fri, 17 Sep 2021 12:35:27 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id D7B3E6362B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:24 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id d21so14898684wra.12
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RSipxlf8Rt1aqHkUOElk7qKJcjfTHCxexIhn6lnwGw0=;
 b=H+xduvAwk0tvPlIz4R7BPPhKlSH4Dd6FCZuuyCcoDfZ1PJKqAqjQU5QrSxkNzlqOSQ
 8Pj9zBBcyObfKfKzOIRE++aGIbZCUL1GjuL/YbGZT6cZEnWRq7Cq2i/NfrGPSTYqPtDz
 QRnRqiH8WMWIk0EdkmuKL9Fp21P8PYXNxNalhnT8PNJfio7fWWBM6icmCcHBSYlaL070
 UidpS/l7dlQI1ZLhsqsSRex9za9ebt04HaI6Eq8g6QkpBvW+6sryAhmKcHuGHdSd65hj
 hTpY3DXhThLxd1eemaZsgN64+kO+ePO3SKxKl8c3Ipiw+vm2RqoCucf+FJR9nfdp1uiG
 Cemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RSipxlf8Rt1aqHkUOElk7qKJcjfTHCxexIhn6lnwGw0=;
 b=24KoPz9Et59NMsMfUmEPXGwerbg8vcztRi6cqRJbkF7u0tE5waLZ1ILQfLE3vpbyUX
 9pO+ELCjgjkyNwcMJWl0Q6zyilfTsWCE8JSjHZ3yOUlY5pfqNSsLAAS5g4ARyHKloZTl
 XkiKQ4C01/V3xOFUDmwU/btlXJAuKdPGmLghu2U1XuWMVcf13Xk1aIKnbFin0QaSeZAG
 4ouPczQ1KcgIN2rWCxwCrCsKbPyLr1P+1sosIWuRPARJ0v4Hy74BB7uRKq6Qe0JJsRwt
 XqwEwQH2gmxwSZ9ezkZXWUK6IfL3qvSsUW65KvKyQuoyZo7nDXme23dz0K3wuOes9R8W
 uf8A==
X-Gm-Message-State: AOAM530XUiaiy8QqbX7V4KEumc7hhRm3+6N0kbnqDHris+Z/Uy5MZDuj
 X0bfp0JTgbpMU3VpjC/t++gy0+VmBio=
X-Google-Smtp-Source: ABdhPJxuQxhRcJcS8mN1wjn/sh65dvXJvqvjiWb+kwA4oOJfMAluglm+7xiaJRdFYnbZ1ZUHOHC/Vg==
X-Received: by 2002:a5d:6cc2:: with SMTP id c2mr11396765wrc.53.1631882122963; 
 Fri, 17 Sep 2021 05:35:22 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:22 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:55 +0200
Message-Id: <20210917123513.1106-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/26] drm/amdgpu: use the new iterator in
 amdgpu_sync_resv
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3N5bmMuYyB8IDQ0ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCmluZGV4IDg2MmViM2MxYzRjNS4uZjdkODQ4Nzc5
OWIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMKQEAgLTI1Miw0
MSArMjUyLDI1IEBAIGludCBhbWRncHVfc3luY19yZXN2KHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LCBzdHJ1Y3QgYW1kZ3B1X3N5bmMgKnN5bmMsCiAJCSAgICAgc3RydWN0IGRtYV9yZXN2ICpy
ZXN2LCBlbnVtIGFtZGdwdV9zeW5jX21vZGUgbW9kZSwKIAkJICAgICB2b2lkICpvd25lcikKIHsK
LQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vy
c29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmY7Ci0JdW5zaWduZWQgaTsKLQlpbnQgciA9IDA7CisJ
aW50IHI7CiAKIAlpZiAocmVzdiA9PSBOVUxMKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCS8qIGFs
d2F5cyBzeW5jIHRvIHRoZSBleGNsdXNpdmUgZmVuY2UgKi8KLQlmID0gZG1hX3Jlc3ZfZXhjbF9m
ZW5jZShyZXN2KTsKLQlkbWFfZmVuY2VfY2hhaW5fZm9yX2VhY2goZiwgZikgewotCQlzdHJ1Y3Qg
ZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IHRvX2RtYV9mZW5jZV9jaGFpbihmKTsKLQotCQlpZiAo
YW1kZ3B1X3N5bmNfdGVzdF9mZW5jZShhZGV2LCBtb2RlLCBvd25lciwgY2hhaW4gPwotCQkJCQkg
ICBjaGFpbi0+ZmVuY2UgOiBmKSkgewotCQkJciA9IGFtZGdwdV9zeW5jX2ZlbmNlKHN5bmMsIGYp
OwotCQkJZG1hX2ZlbmNlX3B1dChmKTsKLQkJCWlmIChyKQotCQkJCXJldHVybiByOwotCQkJYnJl
YWs7Ci0JCX0KLQl9Ci0KLQlmbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJlc3YpOwotCWlm
ICghZmxpc3QpCi0JCXJldHVybiAwOwotCi0JZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRf
Y291bnQ7ICsraSkgewotCQlmID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmbGlzdC0+c2hh
cmVkW2ldLAotCQkJCQkgICAgICBkbWFfcmVzdl9oZWxkKHJlc3YpKTsKLQotCQlpZiAoYW1kZ3B1
X3N5bmNfdGVzdF9mZW5jZShhZGV2LCBtb2RlLCBvd25lciwgZikpIHsKLQkJCXIgPSBhbWRncHVf
c3luY19mZW5jZShzeW5jLCBmKTsKLQkJCWlmIChyKQotCQkJCXJldHVybiByOworCWRtYV9yZXN2
X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIHJlc3YsIHRydWUsIGYpIHsKKwkJZG1hX2ZlbmNlX2No
YWluX2Zvcl9lYWNoKGYsIGYpIHsKKwkJCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0g
dG9fZG1hX2ZlbmNlX2NoYWluKGYpOworCisJCQlpZiAoYW1kZ3B1X3N5bmNfdGVzdF9mZW5jZShh
ZGV2LCBtb2RlLCBvd25lciwgY2hhaW4gPworCQkJCQkJICAgY2hhaW4tPmZlbmNlIDogZikpIHsK
KwkJCQlyID0gYW1kZ3B1X3N5bmNfZmVuY2Uoc3luYywgZik7CisJCQkJZG1hX2ZlbmNlX3B1dChm
KTsKKwkJCQlpZiAocikKKwkJCQkJcmV0dXJuIHI7CisJCQkJYnJlYWs7CisJCQl9CiAJCX0KIAl9
CiAJcmV0dXJuIDA7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
