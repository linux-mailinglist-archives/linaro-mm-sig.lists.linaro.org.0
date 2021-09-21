Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1A24138B4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97A9961725
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D12E761A47; Tue, 21 Sep 2021 17:38:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 246436129E;
	Tue, 21 Sep 2021 17:38:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 73DFF6197A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1C74461951; Tue, 21 Sep 2021 17:37:21 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 6C1BA631AE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:17 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id t18so41547013wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s+B96AdxRkADIO5Sz7pGY2LZZPwHDe6rOqsFSHpv8M0=;
 b=o0c5sLphEjpIBKOSaXz5/fHrqrt2IVkgr4hU24XlAYU+cJn1rlTPVFMpMV9PZMrr59
 YxGpKauocLOGbH9BMqAgJLgx7Nnt7J3CDCBZrXFYS283UM4SmTjzlhNy+5Lkrl8SHMUG
 pbdXUFXD3Y+so3/GzAr/IPyGAwwQ8mvwmEXFfaG2qje4PTfxJI2xkqFg+Gg2lW3a8htx
 SSjVQ2CnY/LzXP+nzPKfJIb2IYoHw49dU3RzXsny0D4nMJ3VepBtB/yj9Le+uChGfjpz
 Jq/ZqZwg8d7dEsaBbRPBDFroQpr3NTH2gM1ervLAeJV2opj8QsYlrp5puq5TfHTMVHPj
 K+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s+B96AdxRkADIO5Sz7pGY2LZZPwHDe6rOqsFSHpv8M0=;
 b=m1ma8M18kn9QvmFJv1Mi9dNopL8+p/9WNbVC5SCwHK4+JHdq3hcoMZE90eDyZFhDwC
 iabfXlTgG3Pd5+vYt8dUEdmtEkKOfjk1aCvgKMB6TwQ+8tXghClyFVKTR32bgyG0MskH
 knOl3BvS6JlCQsIpWqtDMxntx01NhLU1I3HF49q3EvQTjcX+/V9wxY04Z1wf7igPstjs
 aaBN7cpNwWvcBL8gkLvTLxeGyXzpyhHAcXIyqALXWDz3zUJYXhriaMPx78+F1m5ZRGtQ
 5uvQfBo/jwe5WUABm+yxomHTlFgDhRSvTb1maBYkJUCTUTIZBOzhojgaLbE8ZxYrAgkI
 d2RQ==
X-Gm-Message-State: AOAM530RBCdDXWDIMzjXmmrc+8YDpIsGtx6K+SJQk9DuXhVJJebT9akU
 CCENfx4wTPY3UvU00+kvT1E=
X-Google-Smtp-Source: ABdhPJwMhsbn+SQN7/l3vKaNbjoCRSrcF4KCBqzFjyHJHxwrJ6QRt566viqlaxP8rbXtCqAr7Xbm7g==
X-Received: by 2002:adf:fb50:: with SMTP id c16mr16649214wrs.120.1632245835526; 
 Tue, 21 Sep 2021 10:37:15 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:15 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:47 +0200
Message-Id: <20210921173659.246165-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogdXNlIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlIGluc3RlYWQsIGFjY29yZGluZyB0byBUdnJ0a28gdGhlIGxvY2sgaXMKICAgIGhlbGQgaGVy
ZSBhbnl3YXkuCnYzOiBiYWNrIHRvIHVzaW5nIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9j
a2VkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyB8IDUzICsr
KysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25z
KCspLCA0MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3N3X2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKaW5k
ZXggYzU4OWE2ODFkYTc3Li43ZWEwZGJmODE1MzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfc3dfZmVuY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3
X2ZlbmNlLmMKQEAgLTU3Miw1NiArNTcyLDI1IEBAIGludCBpOTE1X3N3X2ZlbmNlX2F3YWl0X3Jl
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
ZXhjbCwKLQkJCQkJCQl0aW1lb3V0LAorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgcmVz
diwgd3JpdGUpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGYp
IHsKKwkJcGVuZGluZyA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfZG1hX2ZlbmNlKGZlbmNlLCBmLCB0
aW1lb3V0LAogCQkJCQkJCWdmcCk7Ci0JCWlmIChwZW5kaW5nIDwgMCkKKwkJaWYgKHBlbmRpbmcg
PCAwKSB7CiAJCQlyZXQgPSBwZW5kaW5nOwotCQllbHNlCi0JCQlyZXQgfD0gcGVuZGluZzsKLQl9
Ci0KLQlkbWFfZmVuY2VfcHV0KGV4Y2wpOworCQkJYnJlYWs7CisJCX0KIAorCQlyZXQgfD0gcGVu
ZGluZzsKKwl9CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAJcmV0dXJuIHJldDsKIH0K
IAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
