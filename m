Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E26CE40F7E2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF483667A6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B3EE663524; Fri, 17 Sep 2021 12:36:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A3A369CDE;
	Fri, 17 Sep 2021 12:36:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6088569CD4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 59554665EE; Fri, 17 Sep 2021 12:35:33 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id E61B269CEB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:29 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 j134-20020a1c238c000000b0030b32367649so3472106wmj.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lPdZK7BIOkQEWY2TG92V49o75qXMdIlfGURkWq4Gvi0=;
 b=PxG28CRq7SfLj/CUTWydHmk4006k5rR2IcS9TrqiJsXEYfqf0xRqgYbOeW61NOovrv
 TT+d2LzxSF+ISst7yiR14Ik1DX+RUFzk4hPUgnow2ooP8xHIGy9oZi+r0N3wCnfi9Z0u
 eiddWPTKbHGqQJ29/9ocVpZI/qq/0Xg+ZaYRJjLfjUwfY2IeRb9gbQQat6SKPVfph3m7
 jXqA/NmXccNQ98ql6Aqjpi8JrfqtJle+nhYoo7/m/eIX1t4jfTr+/Xo0pOt4wW82SSvp
 xbpVhyDrY5kZzBIgOJfaSLP/EJncnSc0KGjo/CQnWtDK32674h6MrGnN0Fi/vaa6FvDT
 fk3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lPdZK7BIOkQEWY2TG92V49o75qXMdIlfGURkWq4Gvi0=;
 b=ANOI/9087LBuYxSoZxry/6r4UJZguSJ7HSaB+6+Z2D/ui5OXPU0Gz7WH+HwlBovMg/
 xFAM6AcjtXSqW6Z9SGWc4OjDxq3osV1QnoEpl+xbz3Qk6DZWfH7f+oDaxsNMuEyuUqYz
 SP5Oq8ZPWzEtmRMrUZnnO5mrwp1X3oAluPr+0kjWZan0pGLo4bvYYTcpaE2L0SVlYBQj
 0MAOqKUSmc4VxiI0mjSj9/BXrVYbis+ODhjR+n+s6FkvJyhoqRZS/mZVV06WH2uIY9ht
 yPQu2J/YFtjKRVWZhy/86KXZFWro4JT0I0Bgw5yjdfEEfOM9mDMRLw1zDky5GZgLPHQh
 olQQ==
X-Gm-Message-State: AOAM531aqQTPsjXAwe5ojOY/BsTZYflZCZ5zGdMGv6hAziW8crp4DryF
 TjaCUhAz3xVepmJbdpR6lf0WVS49RDU=
X-Google-Smtp-Source: ABdhPJysDKC6VyP5ngCiTm1WvJqQsy1dzDim5DxuE39e6K262Xtj1qJmz5tuTO2Pa0VzjGCm33oxGg==
X-Received: by 2002:a1c:2289:: with SMTP id
 i131mr14845111wmi.113.1631882128987; 
 Fri, 17 Sep 2021 05:35:28 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:28 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:02 +0200
Message-Id: <20210917123513.1106-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/26] drm/i915: use the new iterator in
 i915_request_await_object v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3JjdV9yZWFkX3VubG9jaygpCnYzOiB1c2UgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UgaW5z
dGVhZAoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgMzQgKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDI5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKaW5kZXgg
Y2U0NDY3MTZkMDkyLi4zODM5NzEyZWJkMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jCkBAIC0xNTA5LDM4ICsxNTA5LDE0IEBAIGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3Qoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqdG8sCiAJCQkgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCiAJCQkgIGJvb2wgd3JpdGUpCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKKwlzdHJ1
Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJaW50
IHJldCA9IDA7CiAKLQlpZiAod3JpdGUpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqKnNoYXJlZDsK
LQkJdW5zaWduZWQgaW50IGNvdW50LCBpOwotCi0JCXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMo
b2JqLT5iYXNlLnJlc3YsICZleGNsLCAmY291bnQsCi0JCQkJCSAgJnNoYXJlZCk7CisJZG1hX3Jl
c3ZfZm9yX2VhY2hfZmVuY2UoJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIHdyaXRlLCBmZW5jZSkg
eworCQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBmZW5jZSk7CiAJCWlm
IChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7
Ci0JCQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBzaGFyZWRbaV0pOwot
CQkJaWYgKHJldCkKLQkJCQlicmVhazsKLQotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwot
CQl9Ci0KLQkJZm9yICg7IGkgPCBjb3VudDsgaSsrKQotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRb
aV0pOwotCQlrZnJlZShzaGFyZWQpOwotCX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRf
ZXhjbF91bmxvY2tlZChvYmotPmJhc2UucmVzdik7Ci0JfQotCi0JaWYgKGV4Y2wpIHsKLQkJaWYg
KHJldCA9PSAwKQotCQkJcmV0ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZSh0bywgZXhj
bCk7Ci0KLQkJZG1hX2ZlbmNlX3B1dChleGNsKTsKKwkJCWJyZWFrOwogCX0KIAogCXJldHVybiBy
ZXQ7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
