Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8784177E1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:34:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E51CE6242C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:34:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 97572623EB; Fri, 24 Sep 2021 15:34:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3DB561ECD;
	Fri, 24 Sep 2021 15:34:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 07ADD61B00
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6FCA1629CD; Fri, 24 Sep 2021 15:31:48 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 43D35603BB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:37 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id g16so28699868wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=DPqiK0QGMir4AEcKBE/0nJK0LmfPdYfiAUEmkA8qHxsVVv4LHPBhMaUJcZ/9gZjTdQ
 t6x7gI9t20wuBPVwNG3Fxep4a0efbXOXwcjjcqvS0ozmwcvmRw1JAcScYGuMBElbKzTv
 970VEWqKQtlqmQ3gljOAP+h2G1t/MnAZABZoExQGXuV/BrWljEYsfNWRsalMTEEmlxM0
 nLme9UJU5PEsk0IPB481MpiNIGjKP6sKSVQqRJ2GjrVyMSGNIL3rvpWAyDSqtHKIGsRT
 2fcVAYIRoOkcbn+lW7wN/Asidz25tHjtcpoxS6QnUr+8eofclLZhmGD7AyWsgp5Atwys
 dLSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sR69q70gSeg6sG3/QgjbBFqvIqYfytfoA0SgvZr7HAU=;
 b=iuZoqxNACQ97Wzsz5x4wUXcLM3AzN38z3N1mgZMYALrt763bv3XWFRKuLVkoWKiFUI
 Y4fHTt0Pma0qAwgDCYRpT14+MHlqcBnVuKyJ9TQlOwxsLqRji1xPqE8Sa0Dzm+iE78o6
 S9hrD+LK44SRTPXb41p+U/JqNmlZ351D3Uzz9Nu6Fwi89Wy7qxaLjjWXkkppM3PXOIgE
 yU+abxIBdBow4q4apK0PdZuZzE0z7GjgrujoI746ldFZP/9l4XHrSIczr5BaZQN8SaYK
 zvjBRuFvnBXARq0PvRD+ZGVQ2bh8Gwcc7E0XwOpOCCyUjJmdJT2tUjMI2GhUTDxY10rS
 r3Pg==
X-Gm-Message-State: AOAM531HorWcOz4RmhhSgob9M2CafNOUIWPhkf7yrl3uap1dcppJeBtX
 cDgnUytdGC0+fKTSWcfgcAJPGlMulO4=
X-Google-Smtp-Source: ABdhPJxlt6d85SaAGgSvsRODSO3oHYmCGLPQqiQ540iLtKWHx5U8VK/yjhJbPFlndLeFvwsgGPUDFw==
X-Received: by 2002:a5d:56c4:: with SMTP id m4mr12256993wrw.225.1632497497105; 
 Fri, 24 Sep 2021 08:31:37 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:36 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:06 +0200
Message-Id: <20210924153113.2159-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 20/27] drm/i915: use new iterator in
 i915_gem_object_wait_priority
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
Z2VtL2k5MTVfZ2VtX3dhaXQuYyB8IDMxICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggYTEzMTkzZGIxZGJhLi41Njk2NThjNzg1
OWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAtMTE4LDMy
ICsxMTgsMTMgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgICAgIHVuc2lnbmVkIGludCBmbGFncywKIAkJCSAgICAg
IGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIpCiB7Ci0Jc3RydWN0IGRtYV9mZW5j
ZSAqZXhjbDsKLQotCWlmIChmbGFncyAmIEk5MTVfV0FJVF9BTEwpIHsKLQkJc3RydWN0IGRtYV9m
ZW5jZSAqKnNoYXJlZDsKLQkJdW5zaWduZWQgaW50IGNvdW50LCBpOwotCQlpbnQgcmV0OwotCi0J
CXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMob2JqLT5iYXNlLnJlc3YsICZleGNsLCAmY291bnQs
Ci0JCQkJCSAgJnNoYXJlZCk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAo
aSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Ci0JCQlpOTE1X2dlbV9mZW5jZV93YWl0X3ByaW9yaXR5
KHNoYXJlZFtpXSwgYXR0cik7Ci0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Ci0JCX0KLQot
CQlrZnJlZShzaGFyZWQpOwotCX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91
bmxvY2tlZChvYmotPmJhc2UucmVzdik7Ci0JfQorCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNv
cjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAotCWlmIChleGNsKSB7Ci0JCWk5MTVfZ2Vt
X2ZlbmNlX3dhaXRfcHJpb3JpdHkoZXhjbCwgYXR0cik7Ci0JCWRtYV9mZW5jZV9wdXQoZXhjbCk7
Ci0JfQorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIGZsYWdz
ICYgSTkxNV9XQUlUX0FMTCk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1
cnNvciwgZmVuY2UpCisJCWk5MTVfZ2VtX2ZlbmNlX3dhaXRfcHJpb3JpdHkoZmVuY2UsIGF0dHIp
OworCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwogCXJldHVybiAwOwogfQogCi0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
