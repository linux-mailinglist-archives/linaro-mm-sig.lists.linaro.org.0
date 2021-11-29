Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5E246148E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:07:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19DC96204D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:07:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D34EA61A27; Mon, 29 Nov 2021 12:07:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8146662168;
	Mon, 29 Nov 2021 12:07:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4301460A79
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A51B361A3F; Mon, 29 Nov 2021 12:07:11 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 9454B6090F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:07 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id d24so36326550wra.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4CDt1ISjRTMYLH7FxvvLqp3He8TQZQtgj+2GfXtaN90=;
 b=mMBkEjAb2V9hwLba+xllKCVItFPWEMhA4xIys9tcDkl56iSm77cJAnwB4dnctg5CcS
 bDHTl/TeN4e44OGiNeuL3fQP3bKAc+15Fvm6/VXVULuMKqi6Le+8HmwVK8on4QVUb9nR
 IlIq7C+Pe61xHO1/fS5uRzcy+6Z55GNc6JxeutpGkYQ8SLsvSC8+bcyIKYBmnTuIUm3O
 Y/DA8Py9Zse3uX7SZiwzTnEZAqs5bhidFOBlUkA1B93/tFC18qiUfXrewljTv3K5Lk0U
 htU4haudwsxS3JZsBBm3gZEpLvbdQlQdh4xwObaczzccol9hd2hMfZz/UPydY1p1vAlf
 vsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4CDt1ISjRTMYLH7FxvvLqp3He8TQZQtgj+2GfXtaN90=;
 b=F0a7AjYkNELCdZnN4ymPv/XkD4tpkKsIMrnM3SST2Z9ijHOkza1dRAd9nEKDygqE7a
 d4drXyIgbDsEbMD2DCwdSrRSyodvfRx4guuF7Rx+cHu/uZLx5N17wBfv4aP/ED//disr
 nLWU4a4M3PY0geHCkMkcPZAGu7mM4Q8l7D7Mo0Ks4RocfJDFoY45yYETZgXCzysmBsNa
 VPj7Y/8mjjktSa769r24phAa1FIGRLGVWq+VZGHDkH4U2enj7012PfLB3vgM+pUVsu9R
 vLCOi8xDcJZ6+uJQWxa4cnK06Mdnrh9uBfLth99cJzB0NRiWzVo5OVFVC6sQVsvTXKQK
 bFPA==
X-Gm-Message-State: AOAM533INlN2425AU8JtrKT3oO0EwIKYbkaIcT2SomOMzjKo9exz6Fv+
 gcD5SQdaKTRp629IhWXGLwk=
X-Google-Smtp-Source: ABdhPJw5XzuStawRpnnCTuKzSotUgvYOfiiTDZQIfIOnFaHslSDTW7ESFD1Euk76wFZy2dibJ46q7w==
X-Received: by 2002:adf:d22a:: with SMTP id k10mr34327677wrh.80.1638187626698; 
 Mon, 29 Nov 2021 04:07:06 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:06 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:35 +0100
Message-Id: <20211129120659.1815-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/28] drm/qxl: use iterator instead of
 dma_resv_shared_list
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SSdtIG5vdCBzdXJlIHdoeSBpdCBpcyB1c2VmdWwgdG8ga25vdyB0aGUgbnVtYmVyIG9mIGZlbmNl
cwppbiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0LCBidXQgd2UgdHJ5IHRvIGF2b2lkIGV4cG9zaW5n
IHRoZQpkbWFfcmVzdl9zaGFyZWRfbGlzdCgpIGZ1bmN0aW9uLgoKU28gdXNlIHRoZSBpdGVyYXRv
ciBpbnN0ZWFkLiBJZiBtb3JlIGluZm9ybWF0aW9uIGlzIGRlc2lyZWQKd2UgY291bGQgdXNlIGRt
YV9yZXN2X2Rlc2NyaWJlKCkgYXMgd2VsbC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4
bF9kZWJ1Z2ZzLmMgfCAxNyArKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3F4bC9xeGxfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZGVidWdmcy5jCmlu
ZGV4IDFmOWE1OTYwMWJiMS4uNmEzNmIwZmQ4NDVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcXhsL3F4bF9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZGVidWdm
cy5jCkBAIC01NywxMyArNTcsMTYgQEAgcXhsX2RlYnVnZnNfYnVmZmVyc19pbmZvKHN0cnVjdCBz
ZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAlzdHJ1Y3QgcXhsX2JvICpibzsKIAogCWxpc3RfZm9y
X2VhY2hfZW50cnkoYm8sICZxZGV2LT5nZW0ub2JqZWN0cywgbGlzdCkgewotCQlzdHJ1Y3QgZG1h
X3Jlc3ZfbGlzdCAqZm9iajsKLQkJaW50IHJlbDsKLQotCQlyY3VfcmVhZF9sb2NrKCk7Ci0JCWZv
YmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChiby0+dGJvLmJhc2UucmVzdik7Ci0JCXJlbCA9IGZv
YmogPyBmb2JqLT5zaGFyZWRfY291bnQgOiAwOwotCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJc3Ry
dWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwkJ
aW50IHJlbCA9IDA7CisKKwkJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBiby0+dGJvLmJh
c2UucmVzdiwgdHJ1ZSk7CisJCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJz
b3IsIGZlbmNlKSB7CisJCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0ZWQoJmN1cnNvcikp
CisJCQkJcmVsID0gMDsKKwkJCSsrcmVsOworCQl9CiAKIAkJc2VxX3ByaW50ZihtLCAic2l6ZSAl
bGQsIHBjICVkLCBudW0gcmVsZWFzZXMgJWRcbiIsCiAJCQkgICAodW5zaWduZWQgbG9uZyliby0+
dGJvLmJhc2Uuc2l6ZSwKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
