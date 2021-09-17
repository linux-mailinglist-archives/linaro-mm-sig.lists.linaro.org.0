Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EF48540F7E6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A7146328C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 05DC963525; Fri, 17 Sep 2021 12:36:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78ABD63629;
	Fri, 17 Sep 2021 12:36:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 590DA66702
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82B4D64ADA; Fri, 17 Sep 2021 12:35:37 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id D0DA766BB2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:30 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id g16so14930380wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fTYRDJJE+t2GlGO6++SOuXKZtEL0uOy1Wu4kUiFazeA=;
 b=do5a6C/CKoJ/t9gO3qZFk6Zo473jj7JAmKlkWbMHGOgVCNCadQiX4dj5blZ+Q02w24
 lpaJ6VbHtguxph/wY2ANf+GuHZNZs6P+bo2k86RSDsg+0kB4bqSsGMb7ldNJA2eF+M06
 HSCJDPYVsoZ9ZN8R/bdAqCDXRbpSlx79Roc8pkfNYUAYYsSZeIwaPbd2eaxG3CcDJ/g8
 xgNy6vuUEaUYZyBDd49Ka3J9+1HZd51MNUGzODtbZy5LUFAByodUCMp5sXjV3yrUXN3h
 bbz08LCoqXRkkchlZI7SStEiAPz8viCz8AyKvWDvo481lE7U5kimmC3ny5iV7246gSCR
 7AFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fTYRDJJE+t2GlGO6++SOuXKZtEL0uOy1Wu4kUiFazeA=;
 b=mGatn/7wxxzmrA14ygi8dJwgVhuCwXgg9j7yok2LLXK2EEsfYTrLW2m30QZgyaHuvA
 Dn+Cv9f0z9DI5xoPr9l4Rfs5ANU9N/Sfy8nbWOvf+LsBI7kf4SPzln+J7nyRbxikgWXc
 zJfWfZwH1Q2QYKl7ufiTyXC7jKjRwaxUB6Fg+P1VzjAx241SjLYn0FBjjYQ42XX3JH1J
 3MYNE+YdtBMyLGiNGqLbFSAlfcrey9mhTe+e/pvT3HfHb7yVn4sIDdiaMx0WVgSwvjLA
 OCkswHmlAnzAtrV8glFSm6tk2XMvwDrrVtiQibqaO0zbo0AGbqKQ7jDsHxlcFpA4mA4Z
 fIhw==
X-Gm-Message-State: AOAM530HgildQ152/0dmaP2rGFdVxB57G6bXjN3ENhd5j3aYnUfEVe1h
 8tqRYD4PYivjwpv6z1iJZrHbILh7bck=
X-Google-Smtp-Source: ABdhPJzm97Y1W1aEKpHQPWRcu76jJNrW79Rmy/gN+d5YlVYLRUfEHYXtRHvfLqrk3RsPZ9XPev0k3Q==
X-Received: by 2002:adf:ed4c:: with SMTP id u12mr3858944wro.164.1631882129858; 
 Fri, 17 Sep 2021 05:35:29 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:29 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:03 +0200
Message-Id: <20210917123513.1106-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/26] drm/i915: use new iterator in
 i915_gem_object_wait_reservation v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1IHJlYWQgdW5s
b2NrLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgfCA1
NyArKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCA0MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fd2FpdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dh
aXQuYwppbmRleCBmOTA5YWFhMDlkOWMuLmU0MTZjZjUyODYzNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCkBAIC0zNyw1NSArMzcsMjYgQEAgaTkxNV9nZW1fb2Jq
ZWN0X3dhaXRfcmVzZXJ2YXRpb24oc3RydWN0IGRtYV9yZXN2ICpyZXN2LAogCQkJCSB1bnNpZ25l
ZCBpbnQgZmxhZ3MsCiAJCQkJIGxvbmcgdGltZW91dCkKIHsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpl
eGNsOwotCWJvb2wgcHJ1bmVfZmVuY2VzID0gZmFsc2U7Ci0KLQlpZiAoZmxhZ3MgJiBJOTE1X1dB
SVRfQUxMKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7Ci0JCXVuc2lnbmVkIGludCBj
b3VudCwgaTsKLQkJaW50IHJldDsKLQotCQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKHJlc3Ys
ICZleGNsLCAmY291bnQsICZzaGFyZWQpOwotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQot
CQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewotCQkJdGltZW91dCA9IGk5MTVfZ2VtX29i
amVjdF93YWl0X2ZlbmNlKHNoYXJlZFtpXSwKLQkJCQkJCQkgICAgIGZsYWdzLCB0aW1lb3V0KTsK
LQkJCWlmICh0aW1lb3V0IDwgMCkKLQkJCQlicmVhazsKLQotCQkJZG1hX2ZlbmNlX3B1dChzaGFy
ZWRbaV0pOwotCQl9Ci0KLQkJZm9yICg7IGkgPCBjb3VudDsgaSsrKQotCQkJZG1hX2ZlbmNlX3B1
dChzaGFyZWRbaV0pOwotCQlrZnJlZShzaGFyZWQpOwotCi0JCS8qCi0JCSAqIElmIGJvdGggc2hh
cmVkIGZlbmNlcyBhbmQgYW4gZXhjbHVzaXZlIGZlbmNlIGV4aXN0LAotCQkgKiB0aGVuIGJ5IGNv
bnN0cnVjdGlvbiB0aGUgc2hhcmVkIGZlbmNlcyBtdXN0IGJlIGxhdGVyCi0JCSAqIHRoYW4gdGhl
IGV4Y2x1c2l2ZSBmZW5jZS4gSWYgd2Ugc3VjY2Vzc2Z1bGx5IHdhaXQgZm9yCi0JCSAqIGFsbCB0
aGUgc2hhcmVkIGZlbmNlcywgd2Uga25vdyB0aGF0IHRoZSBleGNsdXNpdmUgZmVuY2UKLQkJICog
bXVzdCBhbGwgYmUgc2lnbmFsZWQuIElmIGFsbCB0aGUgc2hhcmVkIGZlbmNlcyBhcmUKLQkJICog
c2lnbmFsZWQsIHdlIGNhbiBwcnVuZSB0aGUgYXJyYXkgYW5kIHJlY292ZXIgdGhlCi0JCSAqIGZs
b2F0aW5nIHJlZmVyZW5jZXMgb24gdGhlIGZlbmNlcy9yZXF1ZXN0cy4KLQkJICovCi0JCXBydW5l
X2ZlbmNlcyA9IGNvdW50ICYmIHRpbWVvdXQgPj0gMDsKLQl9IGVsc2UgewotCQlleGNsID0gZG1h
X3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQocmVzdik7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vy
c29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCisJcmN1X3JlYWRfbG9jaygpOworCWRt
YV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgcmVzdiwgZmxhZ3MgJiBJOTE1X1dBSVRfQUxMKTsK
KwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQly
Y3VfcmVhZF91bmxvY2soKTsKKwkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNl
KGZlbmNlLCBmbGFncywgdGltZW91dCk7CisJCXJjdV9yZWFkX2xvY2soKTsKKwkJaWYgKHRpbWVv
dXQgPCAwKQorCQkJYnJlYWs7CiAJfQotCi0JaWYgKGV4Y2wgJiYgdGltZW91dCA+PSAwKQotCQl0
aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2UoZXhjbCwgZmxhZ3MsIHRpbWVvdXQp
OwotCi0JZG1hX2ZlbmNlX3B1dChleGNsKTsKKwlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsK
KwlyY3VfcmVhZF91bmxvY2soKTsKIAogCS8qCiAJICogT3Bwb3J0dW5pc3RpY2FsbHkgcHJ1bmUg
dGhlIGZlbmNlcyBpZmYgd2Uga25vdyB0aGV5IGhhdmUgKmFsbCogYmVlbgogCSAqIHNpZ25hbGVk
LgogCSAqLwotCWlmIChwcnVuZV9mZW5jZXMpCisJaWYgKHRpbWVvdXQgPiAwKQogCQlkbWFfcmVz
dl9wcnVuZShyZXN2KTsKIAogCXJldHVybiB0aW1lb3V0OwotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
