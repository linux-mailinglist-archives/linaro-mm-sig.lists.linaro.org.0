Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE13422568
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:40:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC98563527
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:40:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C217F60DC1; Tue,  5 Oct 2021 11:39:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F41F86A8FA;
	Tue,  5 Oct 2021 11:39:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 385EA60A5F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0E42161900; Tue,  5 Oct 2021 11:38:04 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by lists.linaro.org (Postfix) with ESMTPS id 219236056F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:57 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id p21so6370680wmq.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yabWm1MzZV7BE4HotZc9CHXB10OboyyVoWyddM9btKw=;
 b=TSeRJ+qkpA1eghV4lfrllybunGX8WejkpRoxqq543rLTeKa7DZHVn2wR1tASvGcF+2
 YSnfrhiqlKVwwq3BwbMQ8DZBMrrqtJVajopWt5DmbRT2UhlzHcEPKYiydW11gfVTNyU6
 8itx/NTbG2pZpcn4uY+lOPwXhQohZpgaiKl5R1mKTyzcEUjPhQJOUF69bLIlyWrHZY3c
 ITPm+xuWN/jJ/Prvdb4ygpwtdCHFOHsrYXNV5DDV7gR42jBubLvvLN3bk+cSkpQsDZhD
 HqnnQjO/NQ7RIre8RhRO/fCRaTpelP0GJ5hg1J0rEHuydghCZvFou7sMwLraORdyoo45
 0J9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yabWm1MzZV7BE4HotZc9CHXB10OboyyVoWyddM9btKw=;
 b=1yTEHYrwAIY06DzVfAlcKpysNAlSTIOAsJNKvCm5fv9f6SOVyjUhPN/xygq6wUr1A5
 +bjTVATQb55kKZHg4HIeAJVBFVjz8vvgX3r6nTD7QnCuzyRHXK/zoTvx0m3us0SHhGlU
 2MRybiHuwXlA3bEgi3at+UZ8a8W0CF5eVhw2EoGxbv8pmKvkWhuz88CqLgk1vO2GEDlg
 p4Lp1CXPwaurY++3VaekCnAyG+lwgNInW543JY4q7QSMZBsSZDM5TLKiRRoiH1cyQJeW
 WAh4hqjScNjGH4nvwEZ8lCMo9CiiyNNm6VYn2kGw1SbAqQAUWahiF6LaDi88rn9yW3xx
 50Ow==
X-Gm-Message-State: AOAM530fLCvjF2zJXnupTgL4z7nNtYNJLAzdN05hNsYf2FGs6fWzW2OL
 c1CJjSRJMJwdNX7gsQQQsTdUH18aItE=
X-Google-Smtp-Source: ABdhPJxEKoCjAGY0f/BN1VErxnsB/ujyvHpiYNyMr6i4pPYMxemcnlX3MniDy/X3LY0S+x/nRkMabQ==
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr2887218wmk.51.1633433875811; 
 Tue, 05 Oct 2021 04:37:55 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:55 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:26 +0200
Message-Id: <20211005113742.1101-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/28] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
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
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5jIHwgMTQgKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYwppbmRleCBlOGQ3MGI2ZTY3MzcuLjcyMmUzYzllODg4MiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMTM0NSwxMCArMTM0NSw5IEBAIHN0
YXRpYyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibywKIAkJCQkJICAgIGNvbnN0IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlKQog
ewogCXVuc2lnbmVkIGxvbmcgbnVtX3BhZ2VzID0gYm8tPnJlc291cmNlLT5udW1fcGFnZXM7CisJ
c3RydWN0IGRtYV9yZXN2X2l0ZXIgcmVzdl9jdXJzb3I7CiAJc3RydWN0IGFtZGdwdV9yZXNfY3Vy
c29yIGN1cnNvcjsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7CiAJc3RydWN0IGRtYV9m
ZW5jZSAqZjsKLQlpbnQgaTsKIAogCS8qIFN3YXBvdXQ/ICovCiAJaWYgKGJvLT5yZXNvdXJjZS0+
bWVtX3R5cGUgPT0gVFRNX1BMX1NZU1RFTSkKQEAgLTEzNjIsMTQgKzEzNjEsOSBAQCBzdGF0aWMg
Ym9vbCBhbWRncHVfdHRtX2JvX2V2aWN0aW9uX3ZhbHVhYmxlKHN0cnVjdCB0dG1fYnVmZmVyX29i
amVjdCAqYm8sCiAJICogSWYgdHJ1ZSwgdGhlbiByZXR1cm4gZmFsc2UgYXMgYW55IEtGRCBwcm9j
ZXNzIG5lZWRzIGFsbCBpdHMgQk9zIHRvCiAJICogYmUgcmVzaWRlbnQgdG8gcnVuIHN1Y2Nlc3Nm
dWxseQogCSAqLwotCWZsaXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QoYm8tPmJhc2UucmVzdik7
Ci0JaWYgKGZsaXN0KSB7Ci0JCWZvciAoaSA9IDA7IGkgPCBmbGlzdC0+c2hhcmVkX2NvdW50OyAr
K2kpIHsKLQkJCWYgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZsaXN0LT5zaGFyZWRbaV0s
Ci0JCQkJZG1hX3Jlc3ZfaGVsZChiby0+YmFzZS5yZXN2KSk7Ci0JCQlpZiAoYW1ka2ZkX2ZlbmNl
X2NoZWNrX21tKGYsIGN1cnJlbnQtPm1tKSkKLQkJCQlyZXR1cm4gZmFsc2U7Ci0JCX0KKwlkbWFf
cmVzdl9mb3JfZWFjaF9mZW5jZSgmcmVzdl9jdXJzb3IsIGJvLT5iYXNlLnJlc3YsIHRydWUsIGYp
IHsKKwkJaWYgKGFtZGtmZF9mZW5jZV9jaGVja19tbShmLCBjdXJyZW50LT5tbSkpCisJCQlyZXR1
cm4gZmFsc2U7CiAJfQogCiAJc3dpdGNoIChiby0+cmVzb3VyY2UtPm1lbV90eXBlKSB7Ci0tIAoy
LjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
