Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 447A5406877
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BC6768646
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CE1C8629CD; Fri, 10 Sep 2021 08:27:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A003069CED;
	Fri, 10 Sep 2021 08:27:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5B5AF629CD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45A2662631; Fri, 10 Sep 2021 08:27:11 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id 2723163542
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:09 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 j17-20020a05600c1c1100b002e754875260so767818wms.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SoAGyzr0AFHKUUA0vh6k3hC1t95HnGfzvSeL9OXTB3o=;
 b=Z3iC+Swm/AAIJ5S/nzJFDgKB/1deDYDWIvJHSIZZkReTUl7PpCdA2jxrlDFfpdmiOu
 t2YqkLV2EsTZ24/oR/1LWA3s34bUo7ah3JCqtEYlKQYP2qZX3AUrz6c3mIfNmhUoW/ur
 +mWRK2K0hsLLLEGoycitOQMzkxR4XHi/SdaDjfz18w+KlI6c9THsDdBR2izyAPt4ZKuz
 Bb7zoYOn32kZb3XSBl51sQklFUjKJiVnnnarZgV73OpFnuPz/ifQHmyUOE2fzD2GCgdQ
 YQDVJOGJLvzv04xFF0NO+xbiwvkuQ22hVCYBc4Vr7jeNeHmM/QzrQz6fZ9LTbHXVs6As
 d9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SoAGyzr0AFHKUUA0vh6k3hC1t95HnGfzvSeL9OXTB3o=;
 b=mhjKdf3YpDeHsg3PSSDHYxFoTJ5vj1i4Q6xImHlrE5/cEEpq4xanTrsNhkarxbVvcj
 5ZYE7cSKe8g2DzEHdCtMa4F5D6J1HFv8G/m/7YBqVkbIJ8DoljJVcPB+z1ubUbp635m3
 hNAxNzPKnrJqubSx+pXRdeCcK6qesYgORLJVHNt0p4t6jOH2WplJziWf5g2xMevfo5+h
 QiYHk8aSPdENYdTqLOQtq/T27I5wSetAjM1MU6VJfe++wBKbfaSyVAfTmBk3zRVt7455
 32lI3oFIrieRL2XjFL8Mx0bcdseRzkTDEX0yEuTtdiBBiZXIW9foX0B49h9rem+wkAMO
 5kbw==
X-Gm-Message-State: AOAM530aJsDrFENz620GmoguRn8VteXV2WaDSAXQK4T6hi2HIeCXMZ1u
 StpQOfht+g/qpEqEqxoUHmPYPwC+aqWOLMB9
X-Google-Smtp-Source: ABdhPJyp1TSwidEpj8PAEswJmvQlCFP+0w3GyUfxZc/HjYy4dAcrjUXWhYXK4rt7EyLcq3pk+9dAGw==
X-Received: by 2002:a1c:2b04:: with SMTP id r4mr7169119wmr.89.1631262428260;
 Fri, 10 Sep 2021 01:27:08 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:07 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:53 +0200
Message-Id: <20210910082655.82168-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/14] drm/msm: use new iterator in
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
Cc: daniel@ffwll.ch
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
YwppbmRleCA1ZGIwN2ZjMjg3YWQuLjhlZTRlODg4MWIwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
QEAgLTkwNiw3ICs5MDYsNyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIHsKIAlzdHJ1Y3QgbXNtX2dlbV9vYmpl
Y3QgKm1zbV9vYmogPSB0b19tc21fYm8ob2JqKTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJvYmogPSBv
YmotPnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2
X2N1cnNvciBjdXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJc3RydWN0IG1zbV9n
ZW1fdm1hICp2bWE7CiAJdWludDY0X3Qgb2ZmID0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZvYmotPnZt
YV9ub2RlKTsKQEAgLTk4MSwyMiArOTgxLDEzIEBAIHZvaWQgbXNtX2dlbV9kZXNjcmliZShzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHNlcV9maWxlICptLAogCQlzZXFfcHV0cyht
LCAiXG4iKTsKIAl9CiAKLQlyY3VfcmVhZF9sb2NrKCk7Ci0JZm9iaiA9IGRtYV9yZXN2X3NoYXJl
ZF9saXN0KHJvYmopOwotCWlmIChmb2JqKSB7Ci0JCXVuc2lnbmVkIGludCBpLCBzaGFyZWRfY291
bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0KLQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3Vu
dDsgaSsrKSB7Ci0JCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShmb2JqLT5zaGFyZWRbaV0pOwor
CWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKHJvYmosICZjdXJzb3IsIHRydWUsIGZlbmNlKSB7CisJ
CWlmIChjdXJzb3IuaXNfZXhjbHVzaXZlKQorCQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNs
dXNpdmUiLCBtKTsKKwkJZWxzZQogCQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJTaGFyZWQiLCBt
KTsKLQkJfQogCX0KIAotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShyb2JqKTsKLQlpZiAo
ZmVuY2UpCi0JCWRlc2NyaWJlX2ZlbmNlKGZlbmNlLCAiRXhjbHVzaXZlIiwgbSk7Ci0JcmN1X3Jl
YWRfdW5sb2NrKCk7Ci0KIAltc21fZ2VtX3VubG9jayhvYmopOwogfQogCi0tIAoyLjI1LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
