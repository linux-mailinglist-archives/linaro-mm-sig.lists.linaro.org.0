Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AE35B4144E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:13:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F014561793
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:13:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C9CCC63221; Wed, 22 Sep 2021 09:12:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8EFB6048D;
	Wed, 22 Sep 2021 09:12:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BCED0617D8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 86DF2619CF; Wed, 22 Sep 2021 09:11:15 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 26552618C3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:13 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id w29so4625446wra.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yn0dGzK8VwWATbg/MRLaeJ+EViGvUvAidNc2i9iKcqg=;
 b=bAI4QNHT6vZca+VmFCOr8IcuGXzG39ykF9NW3OCQnREbvSP4HdtVYbDCDCvnpb0uwp
 kiQDOiUHYuerHcdO0clz0n8em/ntx/m9ZEoC+SPuawsAbuNU+G8VjJkshFDctQafV8b7
 kWI+27wdOqFJW/b3CKnzoMtaCfk+MJOsq9QIfLaZ3phScwnLtxV3TX0aGtVcqoGCY1Ro
 yz0ThFDp5Cfc2O28+YF/58t8Licv5AKPUWZMGap6ksAZS+Xns9oL/4DoFbvpqTKGygEo
 KoyYl25NDtQWDpwd2GG+gXQh5hE56wBf5l6O3dtZ2AMl3LiFdWRlr+mQX+cUVIzDz87Y
 tMqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yn0dGzK8VwWATbg/MRLaeJ+EViGvUvAidNc2i9iKcqg=;
 b=qeg5KpsAvDbTTt6cNQnWFX3zf2Adi7WTtSX6Ig6ovJN2nq1uNihdd6ei5W8363vNbk
 TdQa8HL1oG1dBFRMt1m/GAmgVVUe90cOyZXzGOqbTuPbaBetjw5PsUwSSgtnb7nh9fn7
 APM89Wj6IgVt+SlUj6QeeB4FZ/UcqwIwdTwTVnuq+bRX4eWj7z59UoBm6YWEsxdemP2D
 OCOwMVmMFg+rUiAFQCZ3y0BF3ga0GGr9TL0fDkUJ3fHyR3qXdF4ZRj1bjYU/eSQb6LWJ
 qV50kEV5TPRrNGDNaXQVwAEhx2YIEuYMwRLq5Y22yiO7gGL1P+GnFtUwCQeo+0zyBRhP
 PteQ==
X-Gm-Message-State: AOAM532D7jyeu5eLNY/kt43PFwVbo8gvQY1ipBIKDrKmJq0g5Idiv1eS
 Q3IQiZjqR/pijAb5ZSEJYOiKvoy8c2g=
X-Google-Smtp-Source: ABdhPJx1e4IYSS2hUCc44tdiMviIyop+wkXx3UxTQUXZN8BLtELRRtnSwV5mF7dKgP+yM4dDjp6h0Q==
X-Received: by 2002:adf:f1c4:: with SMTP id z4mr40573442wro.418.1632301871941; 
 Wed, 22 Sep 2021 02:11:11 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:11 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:44 +0200
Message-Id: <20210922091044.2612-27-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 26/26] dma-buf: nuke
 dma_resv_get_excl_unlocked
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

SGV1cmVrYSwgdGhhdCdzIGZpbmFsbHkgbm90IHVzZWQgYW55IG1vcmUuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oIHwgMjYgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKaW5kZXggNzJlN2ViYWE2NzVmLi40
MmVhNmY2NjcxMjAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAorKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKQEAgLTQzNiwzMiArNDM2LDYgQEAgZG1hX3Jlc3ZfZXhj
bF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKIAlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX2No
ZWNrKG9iai0+ZmVuY2VfZXhjbCwgZG1hX3Jlc3ZfaGVsZChvYmopKTsKIH0KIAotLyoqCi0gKiBk
bWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZCAtIGdldCB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0J3MK
LSAqIGV4Y2x1c2l2ZSBmZW5jZSwgd2l0aG91dCBsb2NrIGhlbGQuCi0gKiBAb2JqOiB0aGUgcmVz
ZXJ2YXRpb24gb2JqZWN0Ci0gKgotICogSWYgdGhlcmUgaXMgYW4gZXhjbHVzaXZlIGZlbmNlLCB0
aGlzIGF0b21pY2FsbHkgaW5jcmVtZW50cyBpdCdzCi0gKiByZWZlcmVuY2UgY291bnQgYW5kIHJl
dHVybnMgaXQuCi0gKgotICogUkVUVVJOUwotICogVGhlIGV4Y2x1c2l2ZSBmZW5jZSBvciBOVUxM
IGlmIG5vbmUKLSAqLwotc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2ZlbmNlICoKLWRtYV9yZXN2
X2dldF9leGNsX3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQotewotCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOwotCi0JaWYgKCFyY3VfYWNjZXNzX3BvaW50ZXIob2JqLT5mZW5jZV9leGNs
KSkKLQkJcmV0dXJuIE5VTEw7Ci0KLQlyY3VfcmVhZF9sb2NrKCk7Ci0JZmVuY2UgPSBkbWFfZmVu
Y2VfZ2V0X3JjdV9zYWZlKCZvYmotPmZlbmNlX2V4Y2wpOwotCXJjdV9yZWFkX3VubG9jaygpOwot
Ci0JcmV0dXJuIGZlbmNlOwotfQotCiAvKioKICAqIGRtYV9yZXN2X3NoYXJlZF9saXN0IC0gZ2V0
IHRoZSByZXNlcnZhdGlvbiBvYmplY3QncyBzaGFyZWQgZmVuY2UgbGlzdAogICogQG9iajogdGhl
IHJlc2VydmF0aW9uIG9iamVjdAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
