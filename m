Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEC640D8DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CEA2C6658C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A29B6682C; Thu, 16 Sep 2021 11:32:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECADE64AD6;
	Thu, 16 Sep 2021 11:32:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 06C1669CD4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4ACAF629CD; Thu, 16 Sep 2021 11:31:08 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id B341B6328C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:04 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id d6so8877409wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9NhP0KemkDYjvJFJ1qOIIarsOUWVW1ocIDtArvNA068=;
 b=P54eRNRDIILCiWfnHFMaUtJoPi/+1chXerdoAKRheG5qRgJSm27QG+fFzoTdKUnDg7
 0a5ICJiheo1lcAdbXf/YTdLwxtdQC3a4syLbG0OvUvfMcLqxJcKIYPlvT+G6UHKKwg2H
 rodUnd97bSnySzg+j/9R3TNtXnxSHU+/ubzGWRbVPaBWNOC3tTaPYECcDVw+05e3Fo0C
 iUHa3oPuAfeUAHGSW/rg5JyUBIEa0Iqyg9OZDO2gymyCeEXh0WgpAbtQ6G0M961YwVWo
 gUVep6XXi7LNVCi7wKZ6XhBmgrBxjL28R3Q3Gs50HogNNeMjb8j7bequaPsXiHIQAgSk
 C/wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9NhP0KemkDYjvJFJ1qOIIarsOUWVW1ocIDtArvNA068=;
 b=Ho8/goHKE65f2wky2UrmBClofI0kuYr+JOkkzlIH/507CXEVGNK5fa/xdzwYJeJbZg
 V8qTJPtY9kJyY3OzoVpmRy77rvHFWeMRm7yXVdAcYMCvkP/YYeS2VGa5w8jnDh+wcKE/
 WkXixFLBvM+CyuNts4qseBSg/20x2ituVRdLVrgSSKTn5ayOIET43T7be8ybR7iydBKd
 rPqUxbXOfnj+52TlvbHEQf0VOaqK3rHxh/3WA9sGZWBq04K68xhVxq3ckTQC344QwAyk
 YfmfvWdd5GoqgYx6LJFol1X90QawXBA2vvhrvH1+J1F4wqtrgQQGv/VK5Hrq7qmL9o2w
 3UOw==
X-Gm-Message-State: AOAM531qF5efP0q/Nyf6xj9KYMaC3jwgxQmRnzy2sY7A2kB4jEf8vOLJ
 4K0uSfOdVY2YedhHS4sT/UkqETNGRCOIilhG
X-Google-Smtp-Source: ABdhPJwrkyAg3w90rMzWPvNlNb8unGCndntK/rO+r83tG4dJ1qU//0NAk8tLvxnaagiUmcZ3mzAcSg==
X-Received: by 2002:a5d:568a:: with SMTP id f10mr5516399wrv.314.1631791863816; 
 Thu, 16 Sep 2021 04:31:03 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:36 +0200
Message-Id: <20210916113042.3631-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 20/26] drm: use new iterator in
 drm_gem_fence_array_add_implicit v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3VubG9jaygpCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyB8IDM2ICsrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2Vy
dGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCmluZGV4IDA5YzgyMDA0NTg1OS4u
OGMzZmYwOThlNDllIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKQEAgLTEzNDAsMzEgKzEzNDAsMjEgQEAgaW50IGRy
bV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KHN0cnVjdCB4YXJyYXkgKmZlbmNlX2FycmF5
LAogCQkJCSAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCiAJCQkJICAgICBib29sIHdy
aXRlKQogewotCWludCByZXQ7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlczsKLQl1bnNpZ25l
ZCBpbnQgaSwgZmVuY2VfY291bnQ7Ci0KLQlpZiAoIXdyaXRlKSB7Ci0JCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlID0KLQkJCWRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9iai0+cmVzdik7Ci0K
LQkJcmV0dXJuIGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkKGZlbmNlX2FycmF5LCBmZW5jZSk7Ci0J
fQotCi0JcmV0ID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhvYmotPnJlc3YsIE5VTEwsCi0JCQkJCQkm
ZmVuY2VfY291bnQsICZmZW5jZXMpOwotCWlmIChyZXQgfHwgIWZlbmNlX2NvdW50KQotCQlyZXR1
cm4gcmV0OwotCi0JZm9yIChpID0gMDsgaSA8IGZlbmNlX2NvdW50OyBpKyspIHsKLQkJcmV0ID0g
ZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoZmVuY2VfYXJyYXksIGZlbmNlc1tpXSk7Ci0JCWlmIChy
ZXQpCisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlOworCWludCByZXQgPSAwOworCisJcmN1X3JlYWRfbG9jaygpOworCWRtYV9yZXN2X2Zvcl9l
YWNoX2ZlbmNlX3VubG9ja2VkKG9iai0+cmVzdiwgJmN1cnNvciwgd3JpdGUsIGZlbmNlKSB7CisJ
CXJjdV9yZWFkX3VubG9jaygpOworCQlyZXQgPSBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChmZW5j
ZV9hcnJheSwgZmVuY2UpOworCQlyY3VfcmVhZF9sb2NrKCk7CisJCWlmIChyZXQpIHsKKwkJCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOwogCQkJYnJlYWs7CisJCX0KIAl9Ci0KLQlmb3IgKDsgaSA8IGZl
bmNlX2NvdW50OyBpKyspCi0JCWRtYV9mZW5jZV9wdXQoZmVuY2VzW2ldKTsKLQlrZnJlZShmZW5j
ZXMpOworCXJjdV9yZWFkX3VubG9jaygpOwogCXJldHVybiByZXQ7CiB9CiBFWFBPUlRfU1lNQk9M
KGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KTsKLS0gCjIuMjUuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
