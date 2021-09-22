Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A297B4144DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5133C61976
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DA44667E2A; Wed, 22 Sep 2021 09:11:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 505BA619C1;
	Wed, 22 Sep 2021 09:11:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F3670619D4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E607061754; Wed, 22 Sep 2021 09:11:05 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id D1C8C62EA6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:02 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id w29so4624196wra.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lPdZK7BIOkQEWY2TG92V49o75qXMdIlfGURkWq4Gvi0=;
 b=pBrLo2ylFHnmgwC9Fv66FBGPDQvt0AVgsUNeIjzsju8Mir0zM4NILqjJFDk1sFN38q
 SPm76dym7XGK0ATzGVAsOPUYs1h5LgGxsuPmxX3uxA8gNqM1b5IhiRkfmgOYWArv0qJJ
 Z8XBguoc6rgyEY5mYq5B44bR21z4Fk4REE+Mjx7VGZXRxDuUeHGMH909Crq3ISebnASv
 ZN/HDeWVczA+5w5FVAjdb4J+Dy+Q/a2G3rQGMrVctnaj9KLrwRUF1ahJTN+iJUudQuAB
 Mk3fxtusbMfFmO+sn21XH0JdEjssw7xP5IEfsvoeQQs3P9ATsnMHy1pmHKH/gfnQt0vs
 t4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lPdZK7BIOkQEWY2TG92V49o75qXMdIlfGURkWq4Gvi0=;
 b=NVdFH5EFpbe7k1yIP7hBDPImezommUTeJcf/e/kyCQQHI8AnNAqseiVV+cYkFkSLLg
 Pb0SWTmcZyaZB+FDnVhgdOnNWHs4MXjzLFJXNdpfhsYotUMiqKFN+y6aU4acPw/vNMJ5
 zifjTF9hbDj/rviejPY5P1tNrmm0zKR9oYX4PtY2lkiKkxntViagKMFlPUSnnGIsP8Vz
 aDu9KwzFrvNoIwpKbwBX/RgH4fxHdAYly7r5EXM/y81xVVWuYcd3pKi0yE6XgLE9ntUT
 BRjPVG2RzLnZJGHevkGt/hJAlxQ+Fl3a/wJBzBjhVfnKUlrbAJ/e0wOOYlkS3Vi1/mrG
 6ZMw==
X-Gm-Message-State: AOAM531UgY5jXI1UfP++sqc+L9ShLFQDHYjh+YsNZtakfoJvdFN1fuiS
 r2zgbjY1mg4OoiFPdvwllHe8tuOsDuI=
X-Google-Smtp-Source: ABdhPJxnBNxiNE8nNtZqI258Uzz8x6CGbJOiAaLC1lAoINYI5ojiHVW3S8gxEOHPpOK52+GCRqmrDg==
X-Received: by 2002:adf:e408:: with SMTP id g8mr40698543wrm.138.1632301861906; 
 Wed, 22 Sep 2021 02:11:01 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:33 +0200
Message-Id: <20210922091044.2612-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
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
