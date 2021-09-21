Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B27DB4138C6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:39:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 700596197A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:39:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2F9E461A22; Tue, 21 Sep 2021 17:39:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 038CF612A6;
	Tue, 21 Sep 2021 17:39:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E303766C13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 01ACA61418; Tue, 21 Sep 2021 17:37:25 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 235B4619CF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:22 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id d21so41532859wra.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=OdZW+PfRzgrlxVjfo5TXSSRU1Vzc9VwZlZNm7YtMibzcCGVVUiDh/LcmC8BAepp/dm
 0zBTdmPx4VlEALJ+59YfuNyzGSk9qvfJ/TqXtqaUzBuxW6aRAsCH8OtpOc5U3RoIlK3W
 gT4BwoDzEK8RTeeLeAWRw6QjBeo0kYar1bLUErNG469+db/uhmhLGFPJF3rubMnui1tB
 9ZQ1kaDms1SL/x3gwuZhh769t+9nZiJz5j9eRGaRnLwEYNJ/PchAgIVGNHbUMmuY1XkY
 Jm4LA5+Mr6Vp6H0G0ore7LEqnZfi8LqxpWtCNbk5EhCLUj5FbNCFP8ho/xYQRU83Aw2Q
 KtSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=jnjiHe7YkAk6p7D+OP0m32fwhLysunb7x7ibHZ6rxg1crbo7ouE8AULOreADy01BMY
 6xOMA59KpQIQu9gtJ6PSSISUqoHS0xHAWSfnr+GdOIYdGrAiRvRIAPREL1HPpueaTqyk
 SHfr2INvuDvnOUovN4LhHaN2y3XalLiELXWp9jSlSGigmW+xVoFbVKjmR9hbsODpiq3I
 YeouVKMj/S7cgaS8ij7NMsNusMpuxrfpXU6S8bVG/SrWRMm4mbQ+rlq9MVIHy6RpYRpl
 /FjQ331VGqGEWUWqr0RbfVaCSwvF5FIKS73Juc3tJ4dvp/FVFBcYg9CEgsE3zPjVnbuZ
 3KxQ==
X-Gm-Message-State: AOAM5339ngKq0bBU5XKxiYgXU8kVfxhJrsuK4mwxMbrPyJyKcJUkdHid
 HazoVYwVjfy9NAnG4PJ3t6g=
X-Google-Smtp-Source: ABdhPJzfEkVN1WbVC0V7qUCQDGsZ5/tjLsAvTQKDIeoLa33W3vnBvshbSRqX9qiMyIQ/Bbv2k9e+rg==
X-Received: by 2002:a05:6000:105:: with SMTP id
 o5mr36265877wrx.413.1632245841278; 
 Tue, 21 Sep 2021 10:37:21 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:53 +0200
Message-Id: <20210921173659.246165-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 20/26] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
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
aygpL3VubG9jaygpCnYzOiBzd2l0Y2ggdG8gbG9ja2VkIHZlcnNpb24KClNpZ25lZC1vZmYtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbS5jIHwgMjYgKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCmlu
ZGV4IDA5YzgyMDA0NTg1OS4uNGRjZGVjNjQ4N2JiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKQEAgLTEzNDAsMzEg
KzEzNDAsMTUgQEAgaW50IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KHN0cnVjdCB4
YXJyYXkgKmZlbmNlX2FycmF5LAogCQkJCSAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmos
CiAJCQkJICAgICBib29sIHdyaXRlKQogewotCWludCByZXQ7Ci0Jc3RydWN0IGRtYV9mZW5jZSAq
KmZlbmNlczsKLQl1bnNpZ25lZCBpbnQgaSwgZmVuY2VfY291bnQ7Ci0KLQlpZiAoIXdyaXRlKSB7
Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0KLQkJCWRtYV9yZXN2X2dldF9leGNsX3VubG9j
a2VkKG9iai0+cmVzdik7Ci0KLQkJcmV0dXJuIGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkKGZlbmNl
X2FycmF5LCBmZW5jZSk7Ci0JfQorCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKKwlzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwlpbnQgcmV0ID0gMDsKIAotCXJldCA9IGRtYV9yZXN2X2dl
dF9mZW5jZXMob2JqLT5yZXN2LCBOVUxMLAotCQkJCQkJJmZlbmNlX2NvdW50LCAmZmVuY2VzKTsK
LQlpZiAocmV0IHx8ICFmZW5jZV9jb3VudCkKLQkJcmV0dXJuIHJldDsKLQotCWZvciAoaSA9IDA7
IGkgPCBmZW5jZV9jb3VudDsgaSsrKSB7Ci0JCXJldCA9IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRk
KGZlbmNlX2FycmF5LCBmZW5jZXNbaV0pOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJz
b3IsIG9iai0+cmVzdiwgd3JpdGUsIGZlbmNlKSB7CisJCXJldCA9IGRybV9nZW1fZmVuY2VfYXJy
YXlfYWRkKGZlbmNlX2FycmF5LCBmZW5jZSk7CiAJCWlmIChyZXQpCiAJCQlicmVhazsKIAl9Ci0K
LQlmb3IgKDsgaSA8IGZlbmNlX2NvdW50OyBpKyspCi0JCWRtYV9mZW5jZV9wdXQoZmVuY2VzW2ld
KTsKLQlrZnJlZShmZW5jZXMpOwogCXJldHVybiByZXQ7CiB9CiBFWFBPUlRfU1lNQk9MKGRybV9n
ZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
