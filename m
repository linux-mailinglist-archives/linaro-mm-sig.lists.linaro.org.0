Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A6141EAA0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83EE160F2B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E2B9663280; Fri,  1 Oct 2021 10:08:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06ECA63524;
	Fri,  1 Oct 2021 10:08:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9108362432
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A2C9E61036; Fri,  1 Oct 2021 10:06:37 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 1AD25631A2
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:31 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id k7so14492428wrd.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s+B96AdxRkADIO5Sz7pGY2LZZPwHDe6rOqsFSHpv8M0=;
 b=AzKiJlwT3VxO44dRR9XUeDPKxjRN3IWI2nv20mvSeTTXH4RstYBlN4dN50+WShjt13
 fLz4+VVBKSv/KrO6M3pX63u+/9u+Ctu4DKJRMkTBMEfq1E5ZMinrOVvpnl6fxWtMC2LG
 ZeRqoQQ5bN5nXzkVrJTcWHSnhGtGOYrl9UDbN18jxzJxew/l1ZaWTi+hnVl+GxOsMWHZ
 QcUJecwJSuCF6815sP/fNKt9yL9mEthSWDrkCUEyTscCd2PSwvq8KalGHjz3Hko8ypli
 706GmZTT14mR3KyVQCAB4xnYQ86Fz32DPqEVlk/eSNNKXoQJnR+N823QVg17+8xgzxmF
 hBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s+B96AdxRkADIO5Sz7pGY2LZZPwHDe6rOqsFSHpv8M0=;
 b=E/pWq4Q7w9j16ea3hlJbB34TZWn7qRnoCgwkervhKxaypILTRDP4fHbM+hkyF74OHV
 Uw7V5JXsJe67M97ljTmfASGxgpWKAO4WPFVIZhZjD/Me86yDjrOieUUeaToiGCrex/+P
 moC+azoZNn73022dmf1E+5U5WIt9oDtoWlxolqG2m7Ei/uDkDUzFFbbdmf30AGHqE8hY
 bLTQsTUX5zMNG2QwtrYPsr0OycJySC4eeEklnCnHLiVPS9YZpA02YItzYFQRajWvUgDK
 Y0FZ0XjZnWeYVlT1+esrx6A7fVGWmi1jDWwUfTge17iuQ7WR0iB8HiiWpCJgfhhJHG7Q
 5QYQ==
X-Gm-Message-State: AOAM531QPMttLnk/0NuYoOn/js6UpozC15ioNlTUlu68oP/vrHdL8dfO
 zoba8wspCjo3PmXnjStNdTix+gWXag0=
X-Google-Smtp-Source: ABdhPJyStwefq0t9iGN9OcfJ/7fDO+KwhT1qseTmxxqq08hFNrxxVRmAQiqqNgPam0/3z7wBw1f1lA==
X-Received: by 2002:a05:6000:1569:: with SMTP id
 9mr11473987wrz.337.1633082789101; 
 Fri, 01 Oct 2021 03:06:29 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:28 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:00 +0200
Message-Id: <20211001100610.2899-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
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
