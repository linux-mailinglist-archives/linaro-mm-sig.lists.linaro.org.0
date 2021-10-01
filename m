Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 425EA41EA96
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:07:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BEDEA6242F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:07:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C41F661A3D; Fri,  1 Oct 2021 10:07:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 906FD62079;
	Fri,  1 Oct 2021 10:07:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C2C1D6242F
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F224F60E9C; Fri,  1 Oct 2021 10:06:29 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 7B6DA60EFF
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:22 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 a131-20020a1c7f89000000b0030d4c90fa87so1135861wmd.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eXOyf2Axg9vbweqRF85gRFPRys7FD2K3wIzrdoghDjE=;
 b=f3SJa+yl39fdzfr+eQ3qogubPh4JXxTayU7uod7iR/pYu8GMn/ZDCtQh9mfnfghJLT
 x7A7wAf9WUq4lnrJqXfADeXcPC4YFI++CJH0O5Syf8nalDmKqztxZdeATm5d8V+FrgNp
 RMedTVN5vO47M1WzPxnccfphC7k7kG9EZ1ut90fsv0Lee9Vs1kkJLqUqoV//wA7CUQjz
 WW/jMrXIL7Si7LKXiYVgfgwFNvd7lMGZr9mQYHKcwvxsGdWBBSeT6BPZ/hc/j2bgb6Gd
 w1pX1v4UEiV04Ooy966Dq5pZNFVEEU9/SzYowqnmQH4mRE4F6J0Nl3Q22pQzhm2jAehL
 F/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eXOyf2Axg9vbweqRF85gRFPRys7FD2K3wIzrdoghDjE=;
 b=L3Lyy3JjPvQzThYQX2/WfNKBv4LV7UPWASdnEkMUuWkTdYkCFBFL9kUL/OK9k9qch5
 r2SDYdtjyFWK+V4a82oviykXYHFCxjecd7uqCTLtR8V3P0fMaJavZb33Sh2+KRBeHXWO
 4ySZ2wbvWivpHrWIruewULazU6177gFz4xT63zOf0XQhNZCQao6gT7oQhqgO9jMLtwm6
 EaToolcGezlnn59Oj34X3aLsyv9PJWu3lFl21qHLa0UbXXQoscFJ9tF60Mk9Rs7whz5b
 +0umX4MnXdwyhi6iPVxwIVZrMlaSczIcvqG4sR7cbInQEVUjYvuvcOEZWmiMRQQKhgUD
 QtGA==
X-Gm-Message-State: AOAM532W5eGQ6NZLZMsTmVlFZmiAuLCM873P45pW1hSzTk65v3Tup8hH
 jEjW+5r7Ub5uSmjRMJ1IEmP9g4u3rPQ=
X-Google-Smtp-Source: ABdhPJyyQVfysNmOcePFx27bxTFG1UOPzy4hO6DgLiIYp5NUkPq9miqXDk1ukzvUPvbwPA0/Rp3xvg==
X-Received: by 2002:a1c:48c:: with SMTP id 134mr3536403wme.137.1633082780703; 
 Fri, 01 Oct 2021 03:06:20 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:20 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:50 +0200
Message-Id: <20211001100610.2899-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/28] dma-buf: use the new iterator in
 dma_buf_debug_show
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
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyB8IDI0ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggNjFlMjBhZTdiMDhi
Li44MjQyYjVkOWJhZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtMTM1NiwxMCArMTM1Niw5IEBAIHN0YXRp
YyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2Vk
KQogewogCXN0cnVjdCBkbWFfYnVmICpidWZfb2JqOwogCXN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaF9vYmo7Ci0Jc3RydWN0IGRtYV9yZXN2ICpyb2JqOwotCXN0cnVjdCBkbWFfcmVz
dl9saXN0ICpmb2JqOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZTsKLQlpbnQgY291bnQgPSAwLCBhdHRhY2hfY291bnQsIHNoYXJlZF9jb3Vu
dCwgaTsKKwlpbnQgY291bnQgPSAwLCBhdHRhY2hfY291bnQ7CiAJc2l6ZV90IHNpemUgPSAwOwog
CWludCByZXQ7CiAKQEAgLTEzODYsMjEgKzEzODUsMTAgQEAgc3RhdGljIGludCBkbWFfYnVmX2Rl
YnVnX3Nob3coc3RydWN0IHNlcV9maWxlICpzLCB2b2lkICp1bnVzZWQpCiAJCQkJZmlsZV9pbm9k
ZShidWZfb2JqLT5maWxlKS0+aV9pbm8sCiAJCQkJYnVmX29iai0+bmFtZSA/OiAiIik7CiAKLQkJ
cm9iaiA9IGJ1Zl9vYmotPnJlc3Y7Ci0JCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShyb2Jq
KTsKLQkJaWYgKGZlbmNlKQotCQkJc2VxX3ByaW50ZihzLCAiXHRFeGNsdXNpdmUgZmVuY2U6ICVz
ICVzICVzc2lnbmFsbGVkXG4iLAotCQkJCSAgIGZlbmNlLT5vcHMtPmdldF9kcml2ZXJfbmFtZShm
ZW5jZSksCi0JCQkJICAgZmVuY2UtPm9wcy0+Z2V0X3RpbWVsaW5lX25hbWUoZmVuY2UpLAotCQkJ
CSAgIGRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkgPyAiIiA6ICJ1biIpOwotCi0JCWZvYmog
PSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKHJvYmotPmZlbmNlLAotCQkJCQkJIGRtYV9yZXN2
X2hlbGQocm9iaikpOwotCQlzaGFyZWRfY291bnQgPSBmb2JqID8gZm9iai0+c2hhcmVkX2NvdW50
IDogMDsKLQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgaSsrKSB7Ci0JCQlmZW5jZSA9
IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZm9iai0+c2hhcmVkW2ldLAotCQkJCQkJCSAgZG1h
X3Jlc3ZfaGVsZChyb2JqKSk7Ci0JCQlzZXFfcHJpbnRmKHMsICJcdFNoYXJlZCBmZW5jZTogJXMg
JXMgJXNzaWduYWxsZWRcbiIsCisJCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIGJ1
Zl9vYmotPnJlc3YsIHRydWUsIGZlbmNlKSB7CisJCQlzZXFfcHJpbnRmKHMsICJcdCVzIGZlbmNl
OiAlcyAlcyAlc3NpZ25hbGxlZFxuIiwKKwkJCQkgICBkbWFfcmVzdl9pdGVyX2lzX2V4Y2x1c2l2
ZSgmY3Vyc29yKSA/CisJCQkJCSJFeGNsdXNpdmUiIDogIlNoYXJlZCIsCiAJCQkJICAgZmVuY2Ut
Pm9wcy0+Z2V0X2RyaXZlcl9uYW1lKGZlbmNlKSwKIAkJCQkgICBmZW5jZS0+b3BzLT5nZXRfdGlt
ZWxpbmVfbmFtZShmZW5jZSksCiAJCQkJICAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSA/
ICIiIDogInVuIik7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
