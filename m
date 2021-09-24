Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD434177D3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:33:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57FF662164
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:33:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2505B6242A; Fri, 24 Sep 2021 15:32:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4D556197F;
	Fri, 24 Sep 2021 15:32:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4C28F62CF7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 80E35623EB; Fri, 24 Sep 2021 15:31:33 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id F3B3462439
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:30 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id w17so28582886wrv.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w7BNkgXvEij5lrUuBoEgmNvE08Hfx+8QGysrl5h5aK0=;
 b=a4akh4ID5KuyrpALon1xoq8zr/R246FjYrieniK5ios7B0UV0Ai5dD8IlAkFIgcotS
 CQxisOr7JpNwDrc7+ebqHN1zLQNaNWVCAPOMYv1/KVTUsL+LWfZcNUiP4vOTqdcJ13F0
 51PObG/lazWsxIUOc2VafqxP2JYM5of6F1MW5smH30LNbCYYeN0jErS9IJSw81LxkRKU
 m27Vd/XtNf8ajn0sQj+YdbpPLMR2xMKH9/kshK06g/zmP6XCjfZn9DCJ1xw60903fqPb
 ehWMFECagkjPjoMx8hesovqK4Orywl/g/By7IFg/UTQ1bNGN+rpHPnyUURw5Ng69Qeeg
 EUvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w7BNkgXvEij5lrUuBoEgmNvE08Hfx+8QGysrl5h5aK0=;
 b=wlsek2y5ss8JIQ5pgVRITiV6UNVA/9Q6lJLQx2KIykPf++So85wzioSGu4VzwqWaFo
 rRf//VzILNvud+H/EpkGNHw3oXybWINJhvJqItssJSxCJTbHMDMrNhNiENGXgBfBZlva
 U+drlshU2hrkLZCwmySdMRs8DfS2IivU2v6ZUTKKabFnIrKhT197Jyl/QgBjTNAJ+sj4
 NOVWGwBKD+ia/lzk346/BBTkl9tK/hG0FlHOY5YZZY2P/6+pFb/jIJ7J5PysS5XMD+Tu
 q6hHpZVZupw8C9Sl1E/J2Q2f+oIfPQ4dIdMWS8Zhd3Ven79OqQGGUAU5sqhXEXkDytz+
 1SHw==
X-Gm-Message-State: AOAM53306jEKWqedIlrDpy5G7162fgZxOZScIOsTwTM/MiiWaycpOa68
 VUIKfWuY1zBQXwFcIjCFiPpNHYOOBlE=
X-Google-Smtp-Source: ABdhPJx7+QBhgNXmmAEUe0jGUM1umwFutgTQGiyXVPu52SHAcwWcciqMjSgrBc9YWfE+rcEQvn8NsA==
X-Received: by 2002:a1c:2289:: with SMTP id i131mr2718379wmi.179.1632497485903; 
 Fri, 24 Sep 2021 08:31:25 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:25 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:30:57 +0200
Message-Id: <20210924153113.2159-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/27] drm/amdgpu: use new iterator in
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
L2FtZGdwdV90dG0uYwppbmRleCAxMTI5ZTE3ZTlmMDkuLjQ1MTFjZDE1YzNhNiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMTMzMiwxMCArMTMzMiw5IEBAIHN0
YXRpYyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibywKIAkJCQkJICAgIGNvbnN0IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlKQog
ewogCXVuc2lnbmVkIGxvbmcgbnVtX3BhZ2VzID0gYm8tPnJlc291cmNlLT5udW1fcGFnZXM7CisJ
c3RydWN0IGRtYV9yZXN2X2l0ZXIgcmVzdl9jdXJzb3I7CiAJc3RydWN0IGFtZGdwdV9yZXNfY3Vy
c29yIGN1cnNvcjsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7CiAJc3RydWN0IGRtYV9m
ZW5jZSAqZjsKLQlpbnQgaTsKIAogCS8qIFN3YXBvdXQ/ICovCiAJaWYgKGJvLT5yZXNvdXJjZS0+
bWVtX3R5cGUgPT0gVFRNX1BMX1NZU1RFTSkKQEAgLTEzNDksMTQgKzEzNDgsOSBAQCBzdGF0aWMg
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
