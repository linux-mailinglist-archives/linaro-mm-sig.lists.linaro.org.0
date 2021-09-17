Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8CA40F7F3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:37:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF05369CFB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:37:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ECDE969D54; Fri, 17 Sep 2021 12:37:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0960B69D0E;
	Fri, 17 Sep 2021 12:36:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E470766BB2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 04BDA69CFB; Fri, 17 Sep 2021 12:35:42 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id AB34F69CDD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:36 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id t18so15001699wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fK8E2pCKjRcBSyfXu2xH9VECGzfOaqRD3Tk7GXUBKRw=;
 b=BTyXf9UtKDzLAi4jeEUDgvEODrUW5OGr0NQtvBSadofvysxt2m40uJVudR8svWEYbf
 aSoxQesCOlzc2KKmx5mzPd5v8zLlHvm5XOwqfZni26Wjf6k7icqlxviwG+cbHC2YLrhn
 n0LG+uvbBz94U77jNUdyIy0Lc/ENRXibz1nXMz/QGsFHLKyZdhV4FQpjK28sYB3TDgLP
 7854Ci4cs44519k4S6JP4TC5lzJhUiP3dvRW5cTf0/CyXH5oeWUo9geH5YgnsnnafbPG
 QGKlcI605ltdy+hnr+JUPP09JNFVSMHgHgob7e+LdOh/xemqCDh1Nb2wPJX/zWWrOatE
 59qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fK8E2pCKjRcBSyfXu2xH9VECGzfOaqRD3Tk7GXUBKRw=;
 b=QNYTV/D1GZRaKTBajeA2suL7F8eplOdEHo/je4gtmvT2B+rEnAjFnYtsLP1uIl/m/M
 KOUQW52+993FZKX8mSN9CsL6XToPUVMQCQ59/YD2zlkSoiJrCvHKYJi+UKy0mdw3N0mk
 gJEnjLj2rOuo0Chs8JoLBMtRSplguBtj3kGxqCExGXjVdFesY3LVLFHLUR6717e3p+pv
 /OSjT6+aJPU0md9llv8ZyFi4d7FTg3/jXS2hJBq9O5Ztqpchm6sKnBw86MEVDXxiHHqh
 sW3CXqLUKoFRxBWi+sJYuDCSw6oTO0r9a+EjaO4gsikr8kZJufW8njFfkPDd1JxUJ8F3
 C0zg==
X-Gm-Message-State: AOAM532s0odM0ema3YL/ZC2MLtyqjIEMwqHYOA05r7vi8g7fUECZXxpM
 felrpcqYeUMvSUNc0+KF2PbdO8KV3Hw=
X-Google-Smtp-Source: ABdhPJwPpOc101oPI9x/Zh1EJ6JRH0QuWwO8FmQqIwXXJwqsL70lbNjH1SjLmsPw8jrnjwj+whe1lQ==
X-Received: by 2002:adf:f904:: with SMTP id b4mr11825741wrr.403.1631882135743; 
 Fri, 17 Sep 2021 05:35:35 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:35 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:10 +0200
Message-Id: <20210917123513.1106-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 23/26] drm/nouveau: use the new interator in
 nv50_wndw_prepare_fb v2
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

TWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNl
IG9mCmRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKCkuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3Jl
YWRfbG9jaygpL3VubG9jaygpCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52
NTAvd25kdy5jIHwgMTIgKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1
L2Rpc3BudjUwL3duZHcuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcu
YwppbmRleCA4ZDA0OGJhY2Q2ZjAuLjU2NmY1MGY1M2YyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL25vdXZlYXUvZGlzcG52NTAvd25kdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2
ZWF1L2Rpc3BudjUwL3duZHcuYwpAQCAtNTM5LDYgKzUzOSw4IEBAIG52NTBfd25kd19wcmVwYXJl
X2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0
ZSkKIAlzdHJ1Y3Qgbm91dmVhdV9ibyAqbnZibzsKIAlzdHJ1Y3QgbnY1MF9oZWFkX2F0b20gKmFz
eWg7CiAJc3RydWN0IG52NTBfd25kd19jdHhkbWEgKmN0eGRtYTsKKwlzdHJ1Y3QgZG1hX3Jlc3Zf
aXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJaW50IHJldDsKIAogCU5W
X0FUT01JQyhkcm0sICIlcyBwcmVwYXJlOiAlcFxuIiwgcGxhbmUtPm5hbWUsIGZiKTsKQEAgLTU2
MSw3ICs1NjMsMTUgQEAgbnY1MF93bmR3X3ByZXBhcmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxh
bmUsIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlKQogCQkJYXN5dy0+aW1hZ2UuaGFuZGxl
WzBdID0gY3R4ZG1hLT5vYmplY3QuaGFuZGxlOwogCX0KIAotCWFzeXctPnN0YXRlLmZlbmNlID0g
ZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQobnZiby0+Ym8uYmFzZS5yZXN2KTsKKwlyY3VfcmVh
ZF9sb2NrKCk7CisJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBudmJvLT5iby5iYXNlLnJl
c3YsIGZhbHNlKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBm
ZW5jZSkgeworCQkvKiBUT0RPOiBXZSBvbmx5IHVzZSB0aGUgZmlyc3Qgd3JpdGVyIGhlcmUgKi8K
KwkJYXN5dy0+c3RhdGUuZmVuY2UgPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKKwkJYnJlYWs7CisJ
fQorCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOworCXJjdV9yZWFkX3VubG9jaygpOwogCWFz
eXctPmltYWdlLm9mZnNldFswXSA9IG52Ym8tPm9mZnNldDsKIAogCWlmICh3bmR3LT5mdW5jLT5w
cmVwYXJlKSB7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
