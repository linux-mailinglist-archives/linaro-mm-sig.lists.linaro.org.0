Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AB19E40D8D5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9A2C6314A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8B3B564AD8; Thu, 16 Sep 2021 11:32:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45D2E69CD3;
	Thu, 16 Sep 2021 11:31:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5ADCF63425
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DBA4A69CD9; Thu, 16 Sep 2021 11:31:07 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 8535669CE7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:03 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id t18so8999329wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L+JeWSkenc3rnv6OEgzQ/+sXft+O1bz+b+dQLLQQnPs=;
 b=cIbU1aj2FqXDYlTj1UpiY66k2myFtYTJnkKcsfTobpH58cczpQR0i1cTKyaK/yUsxV
 +0oE3avjOWpdGIQmJVhqM5+7wAR2FBz18U34WMWL7Tquyiq9snfcv/C/DQqUzb1DioLp
 sT2zxpfj2XyAFOLsqcP+90nf2dC7vSEEY1CqnZ5AwItQ0rmcceKohAgOPLYKm0PS8wxQ
 B+HdgYZfjDZhnqw5epDETuK6x3v3eBDKfrIjlEQh8UiWtXWAOJH+rhFA/tZD5ivSCWx4
 8gjCZnCZp+gp7m1Akga9O4uFvGxhJF1hJ0ij2XrurjkIl2wcGNNAHeRxwm0LdAr5LpDs
 FzeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L+JeWSkenc3rnv6OEgzQ/+sXft+O1bz+b+dQLLQQnPs=;
 b=71TPlKWIv1I/6wSWV1TIGK35YxS8p/ia597HdTXTUFCc/5e0kK2gJYs7MHuxUZmCJg
 n5LQPt2bD/SrAbOmLUElOxfDmIr/chEZrtbGS7WDCGriMddIe6S80lb5Vrc4TY6uwCbd
 olRuNq8TKq2MlkCQH4la6eZUjqzk6yuMEk4O4UB6dTPcqeyRi3vGSVgV0y0T4OaIGgKn
 xLdfqcfjlBdr/1d0ivcs7wMj6QCeHamiYCcgWbk66GRToAsrgDsMdtoI5NtPAfd6HQY+
 Wx2yLPiq8ZdwGntUcgujk4uCaufqR7gRJCdELGoYA0s22i5Uc0Q5cbLM7zc6XdrmIeFz
 yhIQ==
X-Gm-Message-State: AOAM531gD+THYc4Wsol/W/JrPhLIpbbqbpXho8kO/1Tm4I40Xp0kditg
 5ieEMuaQWRMZS3cuISElwMGJUcoPlqL40YBM
X-Google-Smtp-Source: ABdhPJy5pNIvHOlHKg+/Q1+JQDe68gKs41mN6XAxrKyNoVbf9sezyMD6dzKzNFWhYUEe09lnxnZgNA==
X-Received: by 2002:adf:e6c9:: with SMTP id y9mr5582537wrm.430.1631791861162; 
 Thu, 16 Sep 2021 04:31:01 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:00 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:33 +0200
Message-Id: <20210916113042.3631-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 17/26] drm/i915: use new iterator in
 i915_gem_object_wait_priority v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3VubG9jaygpCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dh
aXQuYyB8IDMzICsrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV93YWl0LmMKaW5kZXggYTc1ZGVlOWQ3NzkwLi5kYjhhNzI1NTYzMzggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtMTI0LDMyICsxMjQsMTcgQEAgaTkx
NV9nZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiwKIAkJCSAgICAgIHVuc2lnbmVkIGludCBmbGFncywKIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBp
OTE1X3NjaGVkX2F0dHIgKmF0dHIpCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKLQotCWlm
IChmbGFncyAmIEk5MTVfV0FJVF9BTEwpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqKnNoYXJlZDsK
LQkJdW5zaWduZWQgaW50IGNvdW50LCBpOwotCQlpbnQgcmV0OwotCi0JCXJldCA9IGRtYV9yZXN2
X2dldF9mZW5jZXMob2JqLT5iYXNlLnJlc3YsICZleGNsLCAmY291bnQsCi0JCQkJCSAgJnNoYXJl
ZCk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAoaSA9IDA7IGkgPCBjb3Vu
dDsgaSsrKSB7Ci0JCQlpOTE1X2dlbV9mZW5jZV93YWl0X3ByaW9yaXR5KHNoYXJlZFtpXSwgYXR0
cik7Ci0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Ci0JCX0KLQotCQlrZnJlZShzaGFyZWQp
OwotCX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPmJh
c2UucmVzdik7Ci0JfQorCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKKwlzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZTsKIAotCWlmIChleGNsKSB7Ci0JCWk5MTVfZ2VtX2ZlbmNlX3dhaXRfcHJp
b3JpdHkoZXhjbCwgYXR0cik7Ci0JCWRtYV9mZW5jZV9wdXQoZXhjbCk7CisJcmN1X3JlYWRfbG9j
aygpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9iai0+YmFzZS5yZXN2LCAm
Y3Vyc29yLAorCQkJCQkgZmxhZ3MgJiBJOTE1X1dBSVRfQUxMLCBmZW5jZSkgeworCQlyY3VfcmVh
ZF91bmxvY2soKTsKKwkJaTkxNV9nZW1fZmVuY2Vfd2FpdF9wcmlvcml0eShmZW5jZSwgYXR0cik7
CisJCXJjdV9yZWFkX2xvY2soKTsKIAl9CisJcmN1X3JlYWRfdW5sb2NrKCk7CiAJcmV0dXJuIDA7
CiB9CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
