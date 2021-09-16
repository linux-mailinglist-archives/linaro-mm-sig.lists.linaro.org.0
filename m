Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD8140D8A7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A2D66323B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3441D69D0D; Thu, 16 Sep 2021 11:31:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3CA36658C;
	Thu, 16 Sep 2021 11:31:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 545D36322A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AF9C863538; Thu, 16 Sep 2021 11:30:55 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 2C72B630F1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:52 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 c8-20020a7bc008000000b002e6e462e95fso7124284wmb.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ebd8laWfrRXRVYC2x90kb6hWWHZBsznwPVLfAGFP3Cg=;
 b=eXHYHYmPtSpM3wfumd8tg58thGlqQfZQDAWbOQcyO100fMpp4sjMK0RlXDf27FzX6f
 nqUUUvuNNY9yo9zLzJeEAUQNjH0fo0SBqMizA4YawN+O46psezyRLQGtnQRil339mWEZ
 XwAdv1jaK39fOgrM4bFU6i5NVPK8IthQ93tkVuWZ1MH5kTvEHPaWRCKWcwwBmNoaAcxm
 brlpqWTfTOaU0cZCzS0M6GAexCyjMwtZuM8TdX1Zp59LyUNuckw0YSLTfQ1llw3MHVbS
 Lwj1S6a383VxqvlkAewie08hSWZVRYHpXORWI828smxzrnxpbcWLglxoqpuSKjbtUzbD
 +hDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ebd8laWfrRXRVYC2x90kb6hWWHZBsznwPVLfAGFP3Cg=;
 b=zrO8rklp2+vI9lIBHI83KVzddU87LKTsA7BpX251kuy8/7uea8TcXcmYCVZyAjgNlm
 am4dAHCpZmFfEp3ZY2F5ZmABQEgFACqmbgYcg9dsEXPULcOr2vO7CBIKFAn76dzUcvyD
 1i9MSX9x0sVJaI7A4eLBq/dEVtaNuB8o306/d7tVzM8DSgL58X/vwd3FG1agIPedoh2f
 qyGVjNAUDV3F9PjPxv/FOjbo/cB4eYUyTf/eKwpxKF+4t3qp3Qquhb5SaZiiPosF+0z5
 +WkUeYTvTbyhlmS/1f3yA33FUgLUy6NeXfBPqwM4VjWL6QFnUTEaY0AeZIavss1ltPU0
 TgaQ==
X-Gm-Message-State: AOAM531zghyV4of90qlQsyYBOonVR5U5nyaIcsioYDJ3WGnSlN35TuE4
 dcAep1EsV2R+fN8tx4onLlDx+D0rVUr3eFJx
X-Google-Smtp-Source: ABdhPJyorbxNxa60K9WQkm/2GEcheiaw3NO/7p7meOad00zcBgn/nggLJXXlWan4M4ZyizaIe9t0Ig==
X-Received: by 2002:a1c:1d42:: with SMTP id d63mr9621602wmd.55.1631791851256; 
 Thu, 16 Sep 2021 04:30:51 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:50 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:22 +0200
Message-Id: <20210916113042.3631-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyB8IDU0ICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0NyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jCmluZGV4IDc2NGE3MWVjMjM0Ny4uZmFlODgxYTVkMzM2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtNTkxLDIyICs1OTEsNiBAQCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1h
X3Jlc3YgKm9iaiwgYm9vbCB3YWl0X2FsbCwgYm9vbCBpbnRyLAogRVhQT1JUX1NZTUJPTF9HUEwo
ZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KTsKIAogCi1zdGF0aWMgaW5saW5lIGludCBkbWFfcmVzdl90
ZXN0X3NpZ25hbGVkX3NpbmdsZShzdHJ1Y3QgZG1hX2ZlbmNlICpwYXNzZWRfZmVuY2UpCi17Ci0J
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsICpsZmVuY2UgPSBwYXNzZWRfZmVuY2U7Ci0JaW50IHJl
dCA9IDE7Ci0KLQlpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmxm
ZW5jZS0+ZmxhZ3MpKSB7Ci0JCWZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3UobGZlbmNlKTsKLQkJ
aWYgKCFmZW5jZSkKLQkJCXJldHVybiAtMTsKLQotCQlyZXQgPSAhIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChmZW5jZSk7Ci0JCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCX0KLQlyZXR1cm4gcmV0Owot
fQotCiAvKioKICAqIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQgLSBUZXN0IGlmIGEgcmVzZXJ2YXRp
b24gb2JqZWN0J3MgZmVuY2VzIGhhdmUgYmVlbgogICogc2lnbmFsZWQuCkBAIC02MjMsNDMgKzYw
NywxOSBAQCBzdGF0aWMgaW5saW5lIGludCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3NpbmdsZShz
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
LQkJCQlicmVhazsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChvYmosICZjdXJz
b3IsIHRlc3RfYWxsLCBmZW5jZSkgeworCQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5j
ZSkpIHsKKwkJCXJjdV9yZWFkX3VubG9jaygpOworCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CisJ
CQlyZXR1cm4gZmFsc2U7CiAJCX0KIAl9Ci0KLQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uo
b2JqKTsKLQlpZiAocmV0ICYmIGZlbmNlKSB7Ci0JCXJldCA9IGRtYV9yZXN2X3Rlc3Rfc2lnbmFs
ZWRfc2luZ2xlKGZlbmNlKTsKLQkJaWYgKHJldCA8IDApCi0JCQlnb3RvIHJldHJ5OwotCi0JfQot
Ci0JaWYgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKQotCQlnb3RvIHJldHJ5
OwotCiAJcmN1X3JlYWRfdW5sb2NrKCk7Ci0JcmV0dXJuIHJldDsKKwlyZXR1cm4gdHJ1ZTsKIH0K
IEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQpOwogCi0tIAoyLjI1LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
