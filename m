Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F49E41EA9B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A417F66C11
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A0A746322A; Fri,  1 Oct 2021 10:07:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4449767E34;
	Fri,  1 Oct 2021 10:07:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 246B561805
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7641B62EA2; Fri,  1 Oct 2021 10:06:30 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by lists.linaro.org (Postfix) with ESMTPS id 12E8060B91
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:26 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 r11-20020a1c440b000000b0030cf0f01fbaso3282229wma.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yabWm1MzZV7BE4HotZc9CHXB10OboyyVoWyddM9btKw=;
 b=Qjc1wIHm7C7+FZ0zf0J37xwTtZPLvOO6ASxDvrf3+VcrFSzE2KmeNFyiQaE/Vl+Rlq
 Jx8kk1cYPA9lPwImZ1HbLMioQPlM2SjpvNPVxIxJBpkB8GUbwvvObtiKWmwMYipkoOub
 uT6mAfqw8T6viENClrMypA9d0xMDMZ+/yfHRCaWYevYJyI1Is/7lIqgbFJye0EzBZk+L
 8ySgBLZ2PuMN1K4kXFltYLbBP9Y4Fhi1bIWjh6eoU2jvmPteWnEA7hb2fVoO2a0Lp1eX
 RDZu6OZZm8gVpIB8h+eQqnKJI4oKdq6bepcKhAJ4cXMWNn3gAJVsXB/hmshmn+ZWnSh0
 lPPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yabWm1MzZV7BE4HotZc9CHXB10OboyyVoWyddM9btKw=;
 b=Hufauq69lMyTatywn6zf3WRr0uhE3RdWfUV+F0NaLBMKQtr1Ma7+oXO18CEHWLq37h
 WwWOJZ9ry5p8mVAE/qC4MsXIs4DC8NKfxOiiTe/1Vc6mtwcOOQ7YbTCNbhswEkofqknb
 SGTkxbU2u607szI7+tdvT6Ypodmc/WsW4E3RgKjUni4GM6cNHe4C/jj+qbujxRbctJuo
 Fh4z2lkF0s3EJFBb2gorR3xBEe65SU43neGgipgZj8VP/5G1I3rWc1v9L5NAjHxN464Y
 jKDwyAkq6Vz/KBZ3w3Yl2sbpS1zkSgeeYIPiOEKaxJ0CGcqZU+TSACnI/T5aOTG2l6JT
 bP4g==
X-Gm-Message-State: AOAM530GA1/39z7zRxlXS78F8h93YH8M3Jhna+zbWYeLtwvio1u5A52l
 GwDBrVRPfJX40rk751AwSPj7wvTR1oY=
X-Google-Smtp-Source: ABdhPJxdwp7ya/4uzZlQK5Pj4CHR/r3oHjNKAdXCi+hVDyDFWhNfKd+r+tsruJgQprqOmZaeu4PP9Q==
X-Received: by 2002:a05:600c:190c:: with SMTP id
 j12mr3706058wmq.122.1633082784009; 
 Fri, 01 Oct 2021 03:06:24 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:23 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:54 +0200
Message-Id: <20211001100610.2899-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
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
