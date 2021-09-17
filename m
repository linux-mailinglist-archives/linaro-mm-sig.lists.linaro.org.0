Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D99DF40F7CE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D39DF6362B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 820AA667A6; Fri, 17 Sep 2021 12:36:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D46D669CEF;
	Fri, 17 Sep 2021 12:35:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 28DCD6362B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A52EA667A6; Fri, 17 Sep 2021 12:35:27 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id D774864ADC
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:24 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id t18so15000648wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w7BNkgXvEij5lrUuBoEgmNvE08Hfx+8QGysrl5h5aK0=;
 b=SO70r9SPYDkl1XMyj0huOLAPFmdIU/7ZO4zWgU5Dpzy/bzQ61KlGNo+7xBceV6FSYt
 WD85kj6Xps1VCNe86OkoRhxHupXCOMn7cHcN0DhQxvTonVh6UDNa57vqXq3qX3DSz1C0
 f/6dyrUP2wNRzXywrxwrPvLNBcm06YANoVsLplyOwFjI9j9k0eac4xfrq2dRwb96RPGS
 h/MiUpKGX/oXEGmw0a14vepokZKAGGPUrljQaRA6i6K7CQxp4A5wMWuXSd+pITu9LMh0
 Klcskx3eZ2JCYh9HjIfjMjRWAzsScG1CgngpNL6EKl8AnKuvQS+JZhixWztoI7IUb4Ce
 yNoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w7BNkgXvEij5lrUuBoEgmNvE08Hfx+8QGysrl5h5aK0=;
 b=m3JFQk5YLVVsVsFZQxfwWgijYz7qEoeqHLDU5zBJOY62M2DdkW1o9pfH4jco3nZbnR
 e/z3f4sxEbFzEGmwVzE9+PvUvWmJ9BeWuG3QAq5yU7bPraksxtNPPzcmU8ewZOsyaNP8
 53NkzEfhnEfRDzY92Iuwl2faEx52ORyWNqIf6fc/erGRpU1fQaS5mySg1V+bES33K8tp
 xLhh7C2IjmGcBSJRr7v60/YTmPRGmylo9sHrqZbGx+FveEl7ekO27KNIu32D7pTRPol3
 Y8LewQ1bYNErqyqVjYFzjydwFvfdZMgT4HQpr6yzfh0Fdm9/j071dHEs0MrkIYS+P2px
 FJig==
X-Gm-Message-State: AOAM533nicVyEbbUecTKCYPOk/CmhyJLZCv2rug+fovskoLUgXYlfqYZ
 aQy3O5H3lAHppnBRT/xZyMIswv3oC7Y=
X-Google-Smtp-Source: ABdhPJwOJvxsaerqCyTR6Vw7gWrPLu9hZ8OXjaUvsKD7Ysuf/lHgKybjHvCLAxaiBnBfnGjpX897ug==
X-Received: by 2002:adf:9bdb:: with SMTP id e27mr11699354wrc.162.1631882123948; 
 Fri, 17 Sep 2021 05:35:23 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:23 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:56 +0200
Message-Id: <20210917123513.1106-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/26] drm/amdgpu: use new iterator in
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
Cc: daniel@ffwll.ch
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
