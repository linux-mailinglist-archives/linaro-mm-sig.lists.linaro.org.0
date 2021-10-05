Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA94422567
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9A0363261
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9DA2F6A8BA; Tue,  5 Oct 2021 11:39:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4017B6197F;
	Tue,  5 Oct 2021 11:39:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8AB796073E
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C148661A3C; Tue,  5 Oct 2021 11:38:10 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 30BF161754
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:04 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id o20so18738040wro.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QNte/ZxHyZbzH1TCe5eQqnVIdZH6R4S8//YNPJMBVTc=;
 b=fXkIv4LYqrWSj/haf82FkIbG6x6ikZnDIM995pFTL1k4+UacTss2LOSPgElEKQKXiI
 FT7EAlF4VVCVijHUScp/eiDMpIncorlu0WwQznEqMk4DCm1Mr5/r94r/9GND6rnQARdk
 NC2VUrJI+yc83iJqVRFvg/nznN/AlszipTv0fG27zaza8M6BmVg0njhxVCIH7FMtmxix
 +8vRjogRN2M980b3VDplDAgakPyIeRqEKAw5YRqbcaWlZnhcFf4tGdGvA2lnKQyTCgFP
 Ar6Vh8VcOJXrPwclK6M2vy/PiwbMsv0vVwjEm+US11mTH7Cgyx8QsqfhFttIrKjIzow9
 F1ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QNte/ZxHyZbzH1TCe5eQqnVIdZH6R4S8//YNPJMBVTc=;
 b=0dyxRejDyN/UfzYiQfCxfsUnEsLPFySfzhfOvGAYdO6ovfIfrtO0wAKaK0mR5/VsHp
 RPxHQQknl6M+GpR6l4QU2P5qgX33xRkEVN9U8jEVc93A0oSBRthoYHO0bioUL95hj98o
 JNooV/nTWGy1ypb+uxfNfSHBPslQp5FRYIKSMrhZ+j2LMoR5A8foLkndSb5iODER7X0B
 vW3IxJPtDyPCXE8x/XS+EAsjp0TDgsYCNiHbjSzw7zjl/dC3+8Os+rEsVIKG4hCtVfBB
 fWsO66CBGd3qfk43sZqDuyk7R7QRCbBW8+EL1LJeQStCj/XadgUs+j26MXS/OoRJIRl2
 2Bpg==
X-Gm-Message-State: AOAM533bDMD+zfR/lM9Jo8R5BmPy7Gh/USPF3umPUQBUb4jX3+xsiYlj
 CGXo59cqnxW5pWRI+TGgTAH8AvBCWqM=
X-Google-Smtp-Source: ABdhPJyUXOVHSAR/7XsB9uLEj1OfENOt7PpZDbN1ST092ZoFuq9VfvDJtA4MPcogNmIXBIDiz+orQA==
X-Received: by 2002:a5d:5986:: with SMTP id n6mr20764288wri.75.1633433883061; 
 Tue, 05 Oct 2021 04:38:03 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:34 +0200
Message-Id: <20211005113742.1101-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 20/28] drm/i915: use new iterator in
 i915_gem_object_wait_reservation
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3dhaXQuYyB8IDUxICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggZjkwOWFhYTA5ZDljLi5hMTMxOTNkYjFk
YmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtMzcsNTUg
KzM3LDIyIEBAIGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCBkbWFfcmVz
diAqcmVzdiwKIAkJCQkgdW5zaWduZWQgaW50IGZsYWdzLAogCQkJCSBsb25nIHRpbWVvdXQpCiB7
Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKLQlib29sIHBydW5lX2ZlbmNlcyA9IGZhbHNlOwot
Ci0JaWYgKGZsYWdzICYgSTkxNV9XQUlUX0FMTCkgewotCQlzdHJ1Y3QgZG1hX2ZlbmNlICoqc2hh
cmVkOwotCQl1bnNpZ25lZCBpbnQgY291bnQsIGk7Ci0JCWludCByZXQ7CisJc3RydWN0IGRtYV9y
ZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCi0JCXJldCA9IGRt
YV9yZXN2X2dldF9mZW5jZXMocmVzdiwgJmV4Y2wsICZjb3VudCwgJnNoYXJlZCk7Ci0JCWlmIChy
ZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Ci0J
CQl0aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2Uoc2hhcmVkW2ldLAotCQkJCQkJ
CSAgICAgZmxhZ3MsIHRpbWVvdXQpOwotCQkJaWYgKHRpbWVvdXQgPCAwKQotCQkJCWJyZWFrOwot
Ci0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Ci0JCX0KLQotCQlmb3IgKDsgaSA8IGNvdW50
OyBpKyspCi0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Ci0JCWtmcmVlKHNoYXJlZCk7Ci0K
LQkJLyoKLQkJICogSWYgYm90aCBzaGFyZWQgZmVuY2VzIGFuZCBhbiBleGNsdXNpdmUgZmVuY2Ug
ZXhpc3QsCi0JCSAqIHRoZW4gYnkgY29uc3RydWN0aW9uIHRoZSBzaGFyZWQgZmVuY2VzIG11c3Qg
YmUgbGF0ZXIKLQkJICogdGhhbiB0aGUgZXhjbHVzaXZlIGZlbmNlLiBJZiB3ZSBzdWNjZXNzZnVs
bHkgd2FpdCBmb3IKLQkJICogYWxsIHRoZSBzaGFyZWQgZmVuY2VzLCB3ZSBrbm93IHRoYXQgdGhl
IGV4Y2x1c2l2ZSBmZW5jZQotCQkgKiBtdXN0IGFsbCBiZSBzaWduYWxlZC4gSWYgYWxsIHRoZSBz
aGFyZWQgZmVuY2VzIGFyZQotCQkgKiBzaWduYWxlZCwgd2UgY2FuIHBydW5lIHRoZSBhcnJheSBh
bmQgcmVjb3ZlciB0aGUKLQkJICogZmxvYXRpbmcgcmVmZXJlbmNlcyBvbiB0aGUgZmVuY2VzL3Jl
cXVlc3RzLgotCQkgKi8KLQkJcHJ1bmVfZmVuY2VzID0gY291bnQgJiYgdGltZW91dCA+PSAwOwot
CX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChyZXN2KTsKKwlk
bWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIHJlc3YsIGZsYWdzICYgSTkxNV9XQUlUX0FMTCk7
CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKKwkJ
dGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNlKGZlbmNlLCBmbGFncywgdGltZW91
dCk7CisJCWlmICh0aW1lb3V0IDwgMCkKKwkJCWJyZWFrOwogCX0KLQotCWlmIChleGNsICYmIHRp
bWVvdXQgPj0gMCkKLQkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNlKGV4Y2ws
IGZsYWdzLCB0aW1lb3V0KTsKLQotCWRtYV9mZW5jZV9wdXQoZXhjbCk7CisJZG1hX3Jlc3ZfaXRl
cl9lbmQoJmN1cnNvcik7CiAKIAkvKgogCSAqIE9wcG9ydHVuaXN0aWNhbGx5IHBydW5lIHRoZSBm
ZW5jZXMgaWZmIHdlIGtub3cgdGhleSBoYXZlICphbGwqIGJlZW4KIAkgKiBzaWduYWxlZC4KIAkg
Ki8KLQlpZiAocHJ1bmVfZmVuY2VzKQorCWlmICh0aW1lb3V0ID4gMCkKIAkJZG1hX3Jlc3ZfcHJ1
bmUocmVzdik7CiAKIAlyZXR1cm4gdGltZW91dDsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
