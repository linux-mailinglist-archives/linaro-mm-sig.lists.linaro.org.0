Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 802764177D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:32:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49C8961ECD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:32:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 38DD56242C; Fri, 24 Sep 2021 15:32:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E20B260F1F;
	Fri, 24 Sep 2021 15:32:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2A1C1623A8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1DBAD630F1; Fri, 24 Sep 2021 15:31:28 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 0AEBE622E7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:23 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id u18so28723832wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=94c9/cvO4ig+518zY5xyP/tzsv4f6nlGZ8qTXZ85g0M=;
 b=YlNroZ5biwT4gRqCxs308agE8oTbg2jZFIcIx5gpx/s397fd+zzRJQ5Hplq1GevfSW
 b2ZSzIzAVlaZ3Z/2ECfLxMkY8q59zM4ZtLbGQZ/rwtTRi1Gkwht9FStOAeQo9yULR7Nr
 AZyi4hr9cQuyI7NIXADwKXP0vpCKJKQ3TGei6/q/TXtedJwOISdZ/uXXmRsbYCbLmQO7
 yafiDUqIfvWVm8f3Jmne0f6ilncN1MH7/NLGe6YL48xcUOJBnMvLlt9TVzrNXhMViZtg
 Oa7kq23yTRLK0lNIL3BGDl5sMKWtBKGaovIgSJTAz04am2GFkIZwwT3UUcRGMTJgH5hM
 ZVhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=94c9/cvO4ig+518zY5xyP/tzsv4f6nlGZ8qTXZ85g0M=;
 b=13tqT9OIcV1bXKx1Qz6tsryh7xW+E98Db0GMXu5A2XVCDvCYogyuoN6rBz5THRa+JJ
 An0Dqbj4YRHqqR5xjC/Rv6E/o3SsATu5XXLHw9EoVIJp4tw/SJ/MYgBthIQ8f5e6wsvZ
 YMCNjXc5EdnJHSv33EXppGcrS1w5u0Y75lDy2LZOC64OeIRi74t1idhw+G9yBTQly5Td
 3AUfrqpBt5FX8zaKT3DO5/upx20OTOqlKkkzr2AIL3VvJ1NOTGBV7jtK3bI8WdJvNCT6
 McEansADPiKxixDSeFoXAW236jZS/TNYvqp1tbmyPW0gAyy0Cy0X751fc2t9C+QHRwmx
 GyKA==
X-Gm-Message-State: AOAM532DShDdbvB577WFNFS7lG3dwswLmER+OFa3WAwTHkH/F8jwp6sa
 ENdSsspdJD9kSdWsGsLcm+hgzZse0dg=
X-Google-Smtp-Source: ABdhPJy+yiRepmZL6xJsYzD6MfHT8qUFF2ibMp+Qb4FMclBELxNiicxgkVgOBbeClOYdUw6jjBg0fw==
X-Received: by 2002:a5d:5229:: with SMTP id i9mr12230244wra.373.1632497483032; 
 Fri, 24 Sep 2021 08:31:23 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:22 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:30:54 +0200
Message-Id: <20210924153113.2159-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/27] dma-buf: use the new iterator in
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
L2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggNDc0ZGUyZDk4OGNh
Li5kMzVjNzE3NDNjY2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtMTM2OCwxMCArMTM2OCw5IEBAIHN0YXRp
YyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2Vk
KQogewogCXN0cnVjdCBkbWFfYnVmICpidWZfb2JqOwogCXN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaF9vYmo7Ci0Jc3RydWN0IGRtYV9yZXN2ICpyb2JqOwotCXN0cnVjdCBkbWFfcmVz
dl9saXN0ICpmb2JqOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZTsKLQlpbnQgY291bnQgPSAwLCBhdHRhY2hfY291bnQsIHNoYXJlZF9jb3Vu
dCwgaTsKKwlpbnQgY291bnQgPSAwLCBhdHRhY2hfY291bnQ7CiAJc2l6ZV90IHNpemUgPSAwOwog
CWludCByZXQ7CiAKQEAgLTEzOTgsMjEgKzEzOTcsMTAgQEAgc3RhdGljIGludCBkbWFfYnVmX2Rl
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
