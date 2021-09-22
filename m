Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA3C4144E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CCE362164
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0E1F061A07; Wed, 22 Sep 2021 09:12:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7C336A916;
	Wed, 22 Sep 2021 09:12:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D2A061A07
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C0AB8619C1; Wed, 22 Sep 2021 09:11:11 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 411AE61976
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:07 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t8so4781974wri.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=Ua1WTdcULCVJgyuOvvfgOq9UKM6ZT/ugK3x8DSROR31LC/bzEtDJKSpn9wN+Oa1+iC
 5QQiBwuz2KUY0d4ev3JsfeSNM9p7o2mUpGKHfUXnubRAOf1d97WBSmyQkFkucFHCYwCS
 qG1S66N9Ff1/DGJOyZP1Vd33RRL34FRqP7sdtUS6vlPQEWZUmxbgLCJnbN3xw4IU51Pe
 vqbTj1L/FTQzRntNRxky4xEJV5yc1f1JIWY65V80gtwkTGEPvYfpucuMS6pL+ukOvJ6L
 Q6PKskYsBoW5erXrsxIabA05RlKIGxaQpDlols8wd3FcOXLTsBTepAoYwCckAWKnDccm
 lsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=QJkaC6eTA8PqDBNpckwt+1ElIbqv4wf+0VvpE22dUvpYES+hqXG/WYtXw2UscX6p43
 whZbhuYAqOjA7T3hwaQn9G76vlAyi5lwpUWWGtknEyiACw7a4sM/nirM7fldXec3DdqC
 ZRzZ4otl5WSY+7JIudiyRFtVibWvStzF1Kokdymf8MltK0xVX6D4eNBx9MvCnxQNO8YM
 /Yi4swYq0E7lgGKHgjg9RbZ8KS1Kojqxa+MIhKrHR+bARg/JutVir7ghP/3AA4aSdXRm
 EPeOAX+LD9KpqK1gHr5Cu2JRonlv/A28Yk0Cod8aLKxcuhpw8VkFxEzbH33ksUO5sSFb
 BjYg==
X-Gm-Message-State: AOAM531jaDhf0Nhz4LXHUuaNGNyiR676oPf/S69W6qxYDK0/W3my97uw
 d0VJ7q44We82eQwp8LIJC3fQwe5t3Fg=
X-Google-Smtp-Source: ABdhPJwEnHZflQbZNIvlY5UfSsq0l60zNStoX16GjYgyxjqV6JFzPSHp+xvb2qeAILGpSnOZhNb/rA==
X-Received: by 2002:adf:f183:: with SMTP id h3mr39765708wro.32.1632301866385; 
 Wed, 22 Sep 2021 02:11:06 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:38 +0200
Message-Id: <20210922091044.2612-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
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
