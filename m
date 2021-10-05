Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A848422562
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:39:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C185A60591
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:39:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9F2FD67E2D; Tue,  5 Oct 2021 11:39:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69B28618D1;
	Tue,  5 Oct 2021 11:39:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 27E456076D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D5BE60B37; Tue,  5 Oct 2021 11:38:09 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 7101461189
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:02 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id e12so16508532wra.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s+B96AdxRkADIO5Sz7pGY2LZZPwHDe6rOqsFSHpv8M0=;
 b=UIPXW+MTchbtoJ2xeQX9Jumz2jRoJ+ZZisMmJyBf98g+r4pJJHLgy0XYWi1+vrfHbx
 RyB34tkcLcGpxzMatSHdZoBL1jcOqHIhPI7W6QdqFpDLDiFAOV17qWS6T8MgAg/VMCvE
 YoG4HpUtYNDch7hUQWNShMiHZV59R+5EY0axUPiJUvG/lLBhphONFUdC1JHs5tpg+LOI
 Ya8jDPPy3x2c0pbptAmfLsnRPbe5CktIxLhOr2iMuOUCAre0DJPGwfh/YqzkC/ERn8KU
 Drg8SdLgLCDL1+WE8qX844gGU4dZTkGPsdxMth1n2yHtp/IbHAXXtkEqedyfjx9h95oO
 Ti4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s+B96AdxRkADIO5Sz7pGY2LZZPwHDe6rOqsFSHpv8M0=;
 b=S6YO3596eOnrXSG1w6PCCG1CbNyNzQhwGrk9dxkgKDeWhZkRI0OjTcc1ivqMEknfa2
 omYvTVJ1Gk7CUTzcJeapT+Y1umPqdxE1lR6HUkkA2+cPyfV6w6+TTUshd/brFGMx6i+m
 ofTvEWDPMUFPv/yldfcBYC8NKv8s8f3BSwplvg+xPCM22l7j1OcY96NCJhDhekUPlFoS
 xB1JvXVbjFMjEfJ9QQJGr1SuK6nzlmNLaCJWwuOWS6E18e2H3WI+ZLCBH6nxrb5+3p0m
 kAhg4YQZ2NUbQDBvqd0sIsveqvFDQFz71h8c4N7yw0ZeWs9lYZwB1d7EBURDPWj58ZnT
 pCyQ==
X-Gm-Message-State: AOAM5310NU4DWR8/bFT+ODVPsFXKJZFD+SQMOMFM8zvUs67TcC3ZKR3g
 MmTfMq/B/2Eaw3NAPbVqvM2mVXnUGY8=
X-Google-Smtp-Source: ABdhPJz/GxB+AkBgjIJxBlVBJJ43v4DXj8xhDk4JW5tfXfEI+JBMQXLs2m/7kM2t89e3D3pOxTDZ/w==
X-Received: by 2002:a5d:6d8e:: with SMTP id l14mr20722865wrs.270.1633433881286; 
 Tue, 05 Oct 2021 04:38:01 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.38.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:38:00 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:32 +0200
Message-Id: <20211005113742.1101-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 18/28] drm/i915: use the new iterator in
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
