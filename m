Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D60746BB64
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF3EF62D38
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 95B6C61C40; Tue,  7 Dec 2021 12:35:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BACAF62C93;
	Tue,  7 Dec 2021 12:35:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 00B8460BF8
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A41D6216B; Tue,  7 Dec 2021 12:34:39 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 909ED62167
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:35 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id i5so29205522wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ZA3eVOgXYF/5OpQnArz1+ZTX63Lsh0HMT2Me6ubTWAg=;
 b=kydhL9kRH5vu7h/8SuwNuxNb0VqKSz7uKb1zPPvh2kJ6g9nVe1zj4lx7ztLlYJKr89
 H86vkTQSxflXTmvj83lXKqw7epO5ETn8PguNsrYGJoMOnTXAScgr8v3nwoKgqE9oxrhr
 HDTAH4YJD+4fUJ5DuhKb67sg2PmjLRwXw+SaBPwAjbiMtDU5YNskJMIUybwtRlUIi4x6
 zRQRTk1pI1vki0ymof0Ggd9/9bGUkbUgXPvCJ7o8n66/At7smu0N9HDMtp3Gqq3F/V/R
 Sglt5ABKyB5j7EBeAsjd7eBuDhktJIZIbXERavXnP9krzVyZuoBPusMJWEccbKWHFGTE
 Ummw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZA3eVOgXYF/5OpQnArz1+ZTX63Lsh0HMT2Me6ubTWAg=;
 b=Hfw7CCTv2VTa9nnYwWmlkk2BjxeL2sxqzXbOncLdglJw/7/IjiNfeTu5tx64ZFotPX
 4nNJrVuLUqVkkRNneFsesgfKxVIHn6x9MNW/y+g7FleFA3wepQgNubfveKh/A5KJVdZe
 JdXRuDhGMNFK+oUgyYmL7ULopmAZlyIODyJhjPrVp34i1uqGG1AP7jV/0NxnOeJ8cxih
 C4NxPzSjDRM+eTMBoSdMwPHQMT5ozHPwzTareHAPSWnTyZ+7bczEIfVEsVBqDVmccFtt
 YLy6kkAIm+/4Lwdr2kb6fMukpWYA1ZzV5sCg8xOP+qRlZCZFkdzFP4IP5RG06KfgK/SB
 m1rQ==
X-Gm-Message-State: AOAM5301DTMxI+GuTc//QmNw//ApAY6p3aaWFi0AuZS5d5aR2YxvBVAA
 feTSLSXajK8B3tLIFjnxe/o=
X-Google-Smtp-Source: ABdhPJwLumJKHj2aIvDP+/sFNcmmCRKSI8CwCjsKgq0rIIr6CWEaG1f8o87TdObZfawb0yckZGBQDQ==
X-Received: by 2002:a5d:6ac7:: with SMTP id u7mr50576890wrw.57.1638880474682; 
 Tue, 07 Dec 2021 04:34:34 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:34 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:34:04 +0100
Message-Id: <20211207123411.167006-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 17/24] drm/amdgpu: use
 dma_resv_get_singleton in amdgpu_pasid_free_cb
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

TWFrZXMgdGhlIGNvZGUgYSBiaXQgbW9yZSBzaW1wbGVyLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKaW5kZXggYmU0ODQ4N2UyY2E3Li44ODhkOTcx
NDMxNzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKQEAgLTEwNywz
NiArMTA3LDE5IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9wYXNpZF9mcmVlX2NiKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLAogdm9pZCBhbWRncHVfcGFzaWRfZnJlZV9kZWxheWVkKHN0cnVjdCBkbWFf
cmVzdiAqcmVzdiwKIAkJCSAgICAgICB1MzIgcGFzaWQpCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsICoqZmVuY2VzOwogCXN0cnVjdCBhbWRncHVfcGFzaWRfY2IgKmNiOwotCXVuc2lnbmVk
IGNvdW50OworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWludCByOwogCi0JciA9IGRtYV9y
ZXN2X2dldF9mZW5jZXMocmVzdiwgdHJ1ZSwgJmNvdW50LCAmZmVuY2VzKTsKKwlyID0gZG1hX3Jl
c3ZfZ2V0X3NpbmdsZXRvbihyZXN2LCB0cnVlLCAmZmVuY2UpOwogCWlmIChyKQogCQlnb3RvIGZh
bGxiYWNrOwogCi0JaWYgKGNvdW50ID09IDApIHsKKwlpZiAoIWZlbmNlKSB7CiAJCWFtZGdwdV9w
YXNpZF9mcmVlKHBhc2lkKTsKIAkJcmV0dXJuOwogCX0KIAotCWlmIChjb3VudCA9PSAxKSB7Ci0J
CWZlbmNlID0gZmVuY2VzWzBdOwotCQlrZnJlZShmZW5jZXMpOwotCX0gZWxzZSB7Ci0JCXVpbnQ2
NF90IGNvbnRleHQgPSBkbWFfZmVuY2VfY29udGV4dF9hbGxvYygxKTsKLQkJc3RydWN0IGRtYV9m
ZW5jZV9hcnJheSAqYXJyYXk7Ci0KLQkJYXJyYXkgPSBkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGNv
dW50LCBmZW5jZXMsIGNvbnRleHQsCi0JCQkJCSAgICAgICAxLCBmYWxzZSk7Ci0JCWlmICghYXJy
YXkpIHsKLQkJCWtmcmVlKGZlbmNlcyk7Ci0JCQlnb3RvIGZhbGxiYWNrOwotCQl9Ci0JCWZlbmNl
ID0gJmFycmF5LT5iYXNlOwotCX0KLQogCWNiID0ga21hbGxvYyhzaXplb2YoKmNiKSwgR0ZQX0tF
Uk5FTCk7CiAJaWYgKCFjYikgewogCQkvKiBMYXN0IHJlc29ydCB3aGVuIHdlIGFyZSBPT00gKi8K
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
