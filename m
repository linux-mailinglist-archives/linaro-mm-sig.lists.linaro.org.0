Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 215924177D9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:33:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A699062429
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:33:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DF6A16197F; Fri, 24 Sep 2021 15:33:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A59961A49;
	Fri, 24 Sep 2021 15:33:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AC83A6242F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4065862421; Fri, 24 Sep 2021 15:31:48 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 3D183631B3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:41 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id r23so3336909wra.6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=LqIJKlQBXsG7Yc8cj0wu8e+zpM+ggMNapNCxgSE3sA3BXCeRQfZXfYBiUMyShPkWwF
 oL0yYy6+FuFweL8evwpfXLe7KsUQT1cRcGwNKDJTayuWJMZxrmBssXfy6tNFistzneu5
 YIgCRNeoWDeSKToAGWUSON7PPEH9jzCqDSKnHBKgbbBYlKQCMubaJNoBBq67UsfHLVF/
 3A/cxE3KByKJtVe2TVdwchsrA3y+QM8ltA0GRo8u2gcNrsyppg05rDQxX/8TwDDWX+a9
 XWgey+cnt52gL738JuvwoyEVoRUu/YczhvzHO49m+ytujObmT4tU39KP9UwQQUr1o0UR
 o+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=antUjCgvotNzpg2OfRDave6cu2D1YKu24oal3hlkBNE3hLcMMQ0TztB/DR2F8fKApa
 ClArJx5z6MFOLio2LBFUGXHvcAx7fQ1dETf53XqgVXib4dFqfd+PWluq2DDqYTc2a5cm
 HcO7IW1wGINK175CTNnCWTw8arYHh11LyCVYi+uylKj1uHEorRJQX4PsS8ek9G1SM9ZI
 TlgscMC75UA0m+YufD7/iGrfkKsp5yJ/WQiW2c3NEhwnDFQde0UssJFz4Tl1KuC33KIL
 R/fvnmq94NmdPu3HxAX8ZGhpnvzOMc0oU6a/7P/mF+Hihk6EmR/Sb/0OSJwq+hL0HmI0
 pXTA==
X-Gm-Message-State: AOAM531ZvTpTauHngpysMuUI2HemNbSltI/XW1rKVXknDXvdU5+dFoO/
 lFx58h5nQiAt65P8FaN3bwRJI8/il4U=
X-Google-Smtp-Source: ABdhPJyy/4U2GaT2BMEka+ag/8o17YZY2/EO0i+JqubriX7iz9usIJ4MLyYl+KmBqFvgybBZUwg4AA==
X-Received: by 2002:a5d:58ef:: with SMTP id f15mr12367035wrd.160.1632497499033; 
 Fri, 24 Sep 2021 08:31:39 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:38 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:08 +0200
Message-Id: <20210924153113.2159-22-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 22/27] drm: use new iterator in
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
