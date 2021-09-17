Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E7F40F7E0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B68886682C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B18F863421; Fri, 17 Sep 2021 12:36:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28E116341D;
	Fri, 17 Sep 2021 12:36:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF98269CD9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6DD9F69CD4; Fri, 17 Sep 2021 12:35:33 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 3ABC4667BF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:29 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id u15so14933262wru.6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fnU59rAAZAZupB1agRScvsRy8FcaokBV3fXPNRfJmuM=;
 b=NZ//04R2oA7Ofi5J5H9RYrX45fRztLC6ng7eE/q30lidghN+eTwjRXi3eo0pqp9kzU
 jiToExYNvC0YZ4dCb5/1H8M9v+PSKKiEQM35cmsEXHcqFzJNFoqyZccU1bUeDY3VJNVt
 VRWu0rHHMU8kPTfZhz15x+SOfsbnVmmwejweeDiyJJms/DoBS8hUzsO3i0f/T01kXVS4
 zEBYwfw532UGxfMqh6JMYGhbP+/tlJ04RS0YWUv8zSj00wVYsIDKaoMhfkUhFOtJGaiX
 SEyhKBQECkFaIhI5ZyXYV/HCXFLPncsAJt53y0tzdLvcC9UAyKAxfrPF2orWgob9r8Uw
 +ewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fnU59rAAZAZupB1agRScvsRy8FcaokBV3fXPNRfJmuM=;
 b=H7bPkBcW0X8bSUtC/mNUk1W4fSQi1S8ma6ZvH60DFjjR8wnEqh1IUkYtHntUS8TzDM
 vTaHo6TkHELlFiuVh+w+fUR8v8+NiodAqbqIA2Wzp/XPKYszblMZNkU/GtdBi8o2p7dT
 1am3LQ45pmIN1AOe4VJxKuU6jtCruYvB4ihQp5IHVufzGa+LWFq6C8Cw4tg9KGhF3kuc
 4llYOTQtQ2pGRVYWcDcAtjjW+F2vRM2JOoEIgFAUJ8enxmKJSqW/ZUkU2PWaUZjsC01X
 m9MCuXNeaapyJ53j4LL2iu4TJONOSdlRfMmgbTi9UvOFTJcC7t9zBDwNNLI1xIUxBrr5
 qzgA==
X-Gm-Message-State: AOAM531yaI/LxLYf9h2dmYJjk+4iCpqbf4Mm5lTCLTa/O+BZ7dPmWkmk
 I2tqXkIcJkL2WQrJDst+Xw2YD6JOQwU=
X-Google-Smtp-Source: ABdhPJzfu4I1UPKXKEbsuR5FDbWn0p6UMTBQKmzpVOnvlDOvS1QnIwGdIoATAJR2bte/LnKCgf+aJA==
X-Received: by 2002:a5d:54cf:: with SMTP id x15mr12200396wrv.27.1631882128177; 
 Fri, 17 Sep 2021 05:35:28 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:27 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:01 +0200
Message-Id: <20210917123513.1106-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 14/26] drm/i915: use the new iterator in
 i915_sw_fence_await_reservation v3
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogdXNlIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlIGluc3RlYWQsIGFjY29yZGluZyB0byBUdnJ0a28gdGhlIGxvY2sgaXMKICAgIGhlbGQgaGVy
ZSBhbnl3YXkuCnYzOiBiYWNrIHRvIHVzaW5nIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9j
a2VkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyB8IDU3ICsr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspLCA0MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3N3X2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKaW5k
ZXggYzU4OWE2ODFkYTc3Li43NjM1YjA0NzhlYTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfc3dfZmVuY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3
X2ZlbmNlLmMKQEAgLTU3Miw1NiArNTcyLDI5IEBAIGludCBpOTE1X3N3X2ZlbmNlX2F3YWl0X3Jl
c2VydmF0aW9uKHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5jZSwKIAkJCQkgICAgdW5zaWduZWQg
bG9uZyB0aW1lb3V0LAogCQkJCSAgICBnZnBfdCBnZnApCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAq
ZXhjbDsKKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAq
ZjsKIAlpbnQgcmV0ID0gMCwgcGVuZGluZzsKIAogCWRlYnVnX2ZlbmNlX2Fzc2VydChmZW5jZSk7
CiAJbWlnaHRfc2xlZXBfaWYoZ2ZwZmxhZ3NfYWxsb3dfYmxvY2tpbmcoZ2ZwKSk7CiAKLQlpZiAo
d3JpdGUpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqKnNoYXJlZDsKLQkJdW5zaWduZWQgaW50IGNv
dW50LCBpOwotCi0JCXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMocmVzdiwgJmV4Y2wsICZjb3Vu
dCwgJnNoYXJlZCk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAoaSA9IDA7
IGkgPCBjb3VudDsgaSsrKSB7Ci0JCQlpZiAoc2hhcmVkW2ldLT5vcHMgPT0gZXhjbHVkZSkKLQkJ
CQljb250aW51ZTsKLQotCQkJcGVuZGluZyA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfZG1hX2ZlbmNl
KGZlbmNlLAotCQkJCQkJCQlzaGFyZWRbaV0sCi0JCQkJCQkJCXRpbWVvdXQsCi0JCQkJCQkJCWdm
cCk7Ci0JCQlpZiAocGVuZGluZyA8IDApIHsKLQkJCQlyZXQgPSBwZW5kaW5nOwotCQkJCWJyZWFr
OwotCQkJfQotCi0JCQlyZXQgfD0gcGVuZGluZzsKLQkJfQotCi0JCWZvciAoaSA9IDA7IGkgPCBj
b3VudDsgaSsrKQotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwotCQlrZnJlZShzaGFyZWQp
OwotCX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChyZXN2KTsK
LQl9Ci0KLQlpZiAocmV0ID49IDAgJiYgZXhjbCAmJiBleGNsLT5vcHMgIT0gZXhjbHVkZSkgewot
CQlwZW5kaW5nID0gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoZmVuY2UsCi0JCQkJCQkJ
ZXhjbCwKLQkJCQkJCQl0aW1lb3V0LAorCXJjdV9yZWFkX2xvY2soKTsKKwlkbWFfcmVzdl9pdGVy
X2JlZ2luKCZjdXJzb3IsIHJlc3YsIHdyaXRlKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91
bmxvY2tlZCgmY3Vyc29yLCBmKSB7CisJCXJjdV9yZWFkX3VubG9jaygpOworCQlwZW5kaW5nID0g
aTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoZmVuY2UsIGYsIHRpbWVvdXQsCiAJCQkJCQkJ
Z2ZwKTsKLQkJaWYgKHBlbmRpbmcgPCAwKQorCQlyY3VfcmVhZF9sb2NrKCk7CisJCWlmIChwZW5k
aW5nIDwgMCkgewogCQkJcmV0ID0gcGVuZGluZzsKLQkJZWxzZQotCQkJcmV0IHw9IHBlbmRpbmc7
Ci0JfQotCi0JZG1hX2ZlbmNlX3B1dChleGNsKTsKKwkJCWJyZWFrOworCQl9CiAKKwkJcmV0IHw9
IHBlbmRpbmc7CisJfQorCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOworCXJjdV9yZWFkX3Vu
bG9jaygpOwogCXJldHVybiByZXQ7CiB9CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
