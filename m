Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EB15140F7B2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:35:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 097966362B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:35:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AC77F63426; Fri, 17 Sep 2021 12:35:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C10469D16;
	Fri, 17 Sep 2021 12:35:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C5E6D63542
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F3D9066740; Fri, 17 Sep 2021 12:35:24 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 2352C63523
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:22 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id d21so14898577wra.12
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RfHqvcyiEJW+8Dv+evs+CpAicHAPfkZinp9Xu/Tw2t0=;
 b=G+urs6mPARXC3SO9XXPNshssXO2BZh8WmFOl5MT5iJsXIosexKxo9uUcPiDxc7Kv5F
 BGAQkNlQam50WpDy+MshUUpJXDnL1hz8tbvPjAmFzFTi1rFDuLh36jCcMM6I2fiukfbD
 7MLfH4IZSg4W8HX0l0Sv6wKVm9bxkQcSVkIo0pthgQgdIzxvqeKdhm3qwyGSGT++Xuz6
 leDyZ0/k0v7czH4H3Av2UNU2LMO45W0dExZQRovMrm5InsyI740pVD2CE8bqDdeUaH4/
 E+zZKqDY1hkYiRgnqorvXl4fnJfnqpEIQWCCeaNACIVDp81PEFGSJM204n4VXsUCK0Gm
 xNyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RfHqvcyiEJW+8Dv+evs+CpAicHAPfkZinp9Xu/Tw2t0=;
 b=Oi8iIYjmriStaZEtYXYuSaqBJ2GrfLdDYNHuKkYwtGsWTM1bOaWKhTv+PcIeNdWGLK
 Q1m1aRop2vBI6LSn9bzipsG3ytmMdylqpu/dyJtDcqLGA+IiGOjfS3MZ8/di3ppUvUOg
 LgaH2s2udvSr6D+8d8+MUPfCccK2GVBBnvzHTf/XIdc7clfgG6IxPHuWVYLd2fwzIWzQ
 DTljTpUl7WvgVUSJAK9ytdzyHYEw7+EwevQ95T+Fsa/LLZnTYGUGf/tb7gtzk4XymZfO
 W15rKFlaMLnhFDptdV/v4EE9/ZL7iIbB4XTFrjUx2onRCTZyOx7eREXH+orkl899YqQG
 9ROg==
X-Gm-Message-State: AOAM531hhmVTXLITVXjNx4fWjVSwv1DZDSiq0xkF5PFqdoEMEkgjmmI9
 gc5r9Id9zSPwVlGoWv9tJRCEnimWJ20=
X-Google-Smtp-Source: ABdhPJwP6PF7du9OAVJXVkoGkr0OBbNqSGCyO09T5wU1+fJSM9j6cy3vh+oonWYU/jK7vx2nVaGXDA==
X-Received: by 2002:adf:a3c3:: with SMTP id m3mr12126933wrb.237.1631882121293; 
 Fri, 17 Sep 2021 05:35:21 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:20 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:53 +0200
Message-Id: <20210917123513.1106-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/26] dma-buf: use new iterator in
 dma_resv_test_signaled
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyB8IDU2ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0NyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jCmluZGV4IGM3ZGI1NTNhYjExNS4uZDhmNDI4ZGRhZWRkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtNTkzLDIyICs1OTMsNiBAQCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1h
X3Jlc3YgKm9iaiwgYm9vbCB3YWl0X2FsbCwgYm9vbCBpbnRyLAogRVhQT1JUX1NZTUJPTF9HUEwo
ZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KTsKIAogCi1zdGF0aWMgaW5saW5lIGludCBkbWFfcmVzdl90
ZXN0X3NpZ25hbGVkX3NpbmdsZShzdHJ1Y3QgZG1hX2ZlbmNlICpwYXNzZWRfZmVuY2UpCi17Ci0J
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsICpsZmVuY2UgPSBwYXNzZWRfZmVuY2U7Ci0JaW50IHJl
dCA9IDE7Ci0KLQlpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmxm
ZW5jZS0+ZmxhZ3MpKSB7Ci0JCWZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3UobGZlbmNlKTsKLQkJ
aWYgKCFmZW5jZSkKLQkJCXJldHVybiAtMTsKLQotCQlyZXQgPSAhIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChmZW5jZSk7Ci0JCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCX0KLQlyZXR1cm4gcmV0Owot
fQotCiAvKioKICAqIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQgLSBUZXN0IGlmIGEgcmVzZXJ2YXRp
b24gb2JqZWN0J3MgZmVuY2VzIGhhdmUgYmVlbgogICogc2lnbmFsZWQuCkBAIC02MjUsNDMgKzYw
OSwyMSBAQCBzdGF0aWMgaW5saW5lIGludCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3NpbmdsZShz
dHJ1Y3QgZG1hX2ZlbmNlICpwYXNzZWRfZmVuY2UpCiAgKi8KIGJvb2wgZG1hX3Jlc3ZfdGVzdF9z
aWduYWxlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB0ZXN0X2FsbCkKIHsKKwlzdHJ1Y3Qg
ZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Ci0JdW5zaWdu
ZWQgaW50IHNlcTsKLQlpbnQgcmV0OwogCiAJcmN1X3JlYWRfbG9jaygpOwotcmV0cnk6Ci0JcmV0
ID0gdHJ1ZTsKLQlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Ci0KLQlpZiAo
dGVzdF9hbGwpIHsKLQkJc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmogPSBkbWFfcmVzdl9zaGFy
ZWRfbGlzdChvYmopOwotCQl1bnNpZ25lZCBpbnQgaSwgc2hhcmVkX2NvdW50OwotCi0JCXNoYXJl
ZF9jb3VudCA9IGZvYmogPyBmb2JqLT5zaGFyZWRfY291bnQgOiAwOwotCQlmb3IgKGkgPSAwOyBp
IDwgc2hhcmVkX2NvdW50OyArK2kpIHsKLQkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKGZvYmot
PnNoYXJlZFtpXSk7Ci0JCQlyZXQgPSBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3NpbmdsZShmZW5j
ZSk7Ci0JCQlpZiAocmV0IDwgMCkKLQkJCQlnb3RvIHJldHJ5OwotCQkJZWxzZSBpZiAoIXJldCkK
LQkJCQlicmVhazsKKwlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iaiwgdGVzdF9hbGwp
OworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7CisJ
CWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkgeworCQkJZG1hX3Jlc3ZfaXRlcl9l
bmQoJmN1cnNvcik7CisJCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJCXJldHVybiBmYWxzZTsKIAkJ
fQogCX0KLQotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOwotCWlmIChyZXQgJiYg
ZmVuY2UpIHsKLQkJcmV0ID0gZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoZmVuY2UpOwot
CQlpZiAocmV0IDwgMCkKLQkJCWdvdG8gcmV0cnk7Ci0KLQl9Ci0KLQlpZiAocmVhZF9zZXFjb3Vu
dF9yZXRyeSgmb2JqLT5zZXEsIHNlcSkpCi0JCWdvdG8gcmV0cnk7Ci0KKwlkbWFfcmVzdl9pdGVy
X2VuZCgmY3Vyc29yKTsKIAlyY3VfcmVhZF91bmxvY2soKTsKLQlyZXR1cm4gcmV0OworCXJldHVy
biB0cnVlOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZCk7CiAK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
