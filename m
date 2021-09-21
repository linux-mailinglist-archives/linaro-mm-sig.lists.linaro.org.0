Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0634138A0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:37:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCD0661523
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:37:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6709A61655; Tue, 21 Sep 2021 17:37:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB6BB6140D;
	Tue, 21 Sep 2021 17:37:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 72C7F619D7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B42BE61418; Tue, 21 Sep 2021 17:37:16 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 213CE631B3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:12 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id i23so41643982wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=H0Rsek8xSUZLyWEKZe4XKreStzYy2VNPFqSEyNoTUFaSPUyX4R3P9PRQPy1X7gQ4c3
 wbd/A+N25CV6YM2siHkR09nzeQhC40hggZbs44OYcmKETMyMhpzBrrl6za/doIjpcPDO
 cuOSrZAnHbR91RLNN1awE6zFZNAD+Q+goSD+1+FKkDcjcnD/BDvM1kRyKHIL4DtjGN79
 fC7ks1bHMeQt+TmQJAP4UQoJIpPFUfki8G/LIlmm6M9okevMEoBW7ceyZpH0vms8/SHm
 cBbo/kk2cuw+Nb0c+JfYCdSv0lpY3MWxHrCTd7O3c2qc9vWlyXKq1p0yaFDZHHeQscAD
 x+qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=qkfy40aTQWCJkzsKx0ABxlDpex3NVX0vpJ9lXLGIochkYv4ha0ABLCYapjUF/Imj8D
 mCbWJ5e9ObQGOWkO0yt1ET/04/v7MaFHkpWyYEnGY6HAXcRUdTeN+wfpLZfne3yNXnFN
 n3jR9NFRD93miP/Oy/uQ6jJ1SDCfzraUnEZMSPFbyhhYHp93lyzk3XiTUM92g8mgzR4U
 3lZwVZtiJAzLKN2dOo/dHGI9kykvfI4mfbcpyxsuMar8asuH/0mDhL2IX8hlhleCbEyt
 GTwaSoJ3e3k7QsxEDNcJJwsbuUOlQ7mGar7oFyhQTHCUp76uarcW6YEpQGGOQDmLpbqc
 2LFg==
X-Gm-Message-State: AOAM532Ds6TS4zNuR/p5rjFay7xFobHLNizGQzAVK1R/zHWUj47Tx6gi
 CxwNV8wwfdtnHTBzaR414vI=
X-Google-Smtp-Source: ABdhPJwich8Zl0t7zBwPVpsRu7yBppehopcoUXMfKa4OOLk2jjioFZ1v3ZxiRnjyippNt8C/aGgXzw==
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr36153785wrs.271.1632245831727; 
 Tue, 21 Sep 2021 10:37:11 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:10 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:43 +0200
Message-Id: <20210921173659.246165-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/26] drm/msm: use new iterator in
 msm_gem_describe
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuIEFsc28gZHJvcCB0aGUgUkNVIHJlYWQgc2lkZSBs
b2NrIHNpbmNlIHRoZQpvYmplY3QgaXMgbG9ja2VkIGFueXdheS4KClVudGVzdGVkIHNpbmNlIEkg
Y2FuJ3QgZ2V0IHRoZSBkcml2ZXIgdG8gY29tcGlsZSBvbiAhQVJNLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5jIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0u
YwppbmRleCAyMjMwOGExYjY2ZmMuLjE0OTA3NjIyNzY5ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
QEAgLTg4MCw3ICs4ODAsNyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIHsKIAlzdHJ1Y3QgbXNtX2dlbV9vYmpl
Y3QgKm1zbV9vYmogPSB0b19tc21fYm8ob2JqKTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJvYmogPSBv
YmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2
X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCXN0cnVjdCBtc21fZ2Vt
X3ZtYSAqdm1hOwogCXVpbnQ2NF90IG9mZiA9IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFf
bm9kZSk7CkBAIC05NTUsMjIgKzk1NSwxMyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIAkJc2VxX3B1dHMobSwg
IlxuIik7CiAJfQogCi0JcmN1X3JlYWRfbG9jaygpOwotCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRf
bGlzdChyb2JqKTsKLQlpZiAoZm9iaikgewotCQl1bnNpZ25lZCBpbnQgaSwgc2hhcmVkX2NvdW50
ID0gZm9iai0+c2hhcmVkX2NvdW50OwotCi0JCWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7
IGkrKykgewotCQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKKwlk
bWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCByb2JqLCB0cnVlLCBmZW5jZSkgeworCQlp
ZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlkZXNjcmliZV9mZW5j
ZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlkZXNjcmliZV9mZW5jZShmZW5j
ZSwgIlNoYXJlZCIsIG0pOwotCQl9CiAJfQogCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNl
KHJvYmopOwotCWlmIChmZW5jZSkKLQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUi
LCBtKTsKLQlyY3VfcmVhZF91bmxvY2soKTsKLQogCW1zbV9nZW1fdW5sb2NrKG9iaik7CiB9CiAK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
