Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E7240F7D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51ADD6682C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6FB5063629; Fri, 17 Sep 2021 12:36:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DF99667BF;
	Fri, 17 Sep 2021 12:36:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2F009667BF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3759B63639; Fri, 17 Sep 2021 12:35:29 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id 8306C6362E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:27 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 c190-20020a1c9ac7000000b0030b459ea869so1292252wme.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a24rUD+lvDbozllBrOmPRNBHQxSSbhyfXU0oYcihzyg=;
 b=nIdwXfLabzXcW1XiceUdnmzctWEURDQizwpJU2OUqH6G1ZuU2YX9NskikFXUwzC392
 C5rT93WnEzI1d4Ke7nxW2BlJsrJbVJK2iydZlt5YaIzbEqGtKMBUGj2I3IPDHW18JhRw
 uYr3RCuz1bJLcMzHogMCrhy7GS4HCNI79lUSSd7Q2iKhSNYeQZ896b2jE6LSGgUP50LX
 IJfUfcPPVKBVQekWxSWFIVSQkiGPlHcbN/HB9LuOH9NvXIYHPkxN/KocH83NGwHhXRzR
 RJZoBw7DJdr7lDQlEeZA3IZMHAnq9h4cj5h2pcyZzDIgyQdWDJXJTMlLjCtgn4KohfgW
 enZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a24rUD+lvDbozllBrOmPRNBHQxSSbhyfXU0oYcihzyg=;
 b=DFnzADYm3x4XVx51xaMaWXNl5cYu4m3G6LMwFuhNNPgTleBu4YA+5LOpDGLHXDUINI
 lkCTx4tX7QmMI90iS5edW+ri4A2bVI2HyK+BeyC0xjLrDYimSunNvnUxVmhpUL8LW82C
 HgjBSn3BWM0Cy0A7fju7Tre4LwyeVDdDYIwwJO4iFKjT4Nn9FwWHc/l44k3A74kOkuoe
 qI3th/VpTrcYCY4F6N/h1f5K+RmaGTZw3eznu6fHvGzZ91934Ym/NiAavhpNfXxQ+mzu
 8LkUXbCishJNUI3oM9kKRkITqOX33tz8oQhlUNJsR7Et3fVi+MuSLlDUY+BibRSP8iab
 gWNw==
X-Gm-Message-State: AOAM531cgkhEq2ubIlTygip+R3HUUbzbqg2ZcqqNzztMiQQiXOF0Nc8n
 owASkmF4skbZYx9+NYpKg7EomvW0HJM=
X-Google-Smtp-Source: ABdhPJxh2B8tbcdyMHyLlJwdm9twJffSI2woQBoj+J90WpQgS6tgdN39QXiHuGZvFewkLx3TxfV2Kw==
X-Received: by 2002:a7b:c4c2:: with SMTP id g2mr10105760wmk.134.1631882126494; 
 Fri, 17 Sep 2021 05:35:26 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:59 +0200
Message-Id: <20210917123513.1106-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/26] drm/scheduler: use new iterator in
 drm_sched_job_add_implicit_dependencies v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogdXNlIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgfCAyNiAr
KysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwpp
bmRleCAwNDJjMTZiNWQ1NGEuLjViYzVmNzc1YWJlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMKQEAgLTY5OSwzMCArNjk5LDE2IEBAIGludCBkcm1fc2NoZWRfam9iX2Fk
ZF9pbXBsaWNpdF9kZXBlbmRlbmNpZXMoc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiwKIAkJCQkJ
ICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAogCQkJCQkgICAgYm9vbCB3cml0ZSkKIHsK
KwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
CiAJaW50IHJldDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOwotCXVuc2lnbmVkIGludCBp
LCBmZW5jZV9jb3VudDsKLQotCWlmICghd3JpdGUpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPnJlc3YpOwotCi0JCXJldHVybiBk
cm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5KGpvYiwgZmVuY2UpOwotCX0KLQotCXJldCA9IGRt
YV9yZXN2X2dldF9mZW5jZXMob2JqLT5yZXN2LCBOVUxMLCAmZmVuY2VfY291bnQsICZmZW5jZXMp
OwotCWlmIChyZXQgfHwgIWZlbmNlX2NvdW50KQotCQlyZXR1cm4gcmV0OwogCi0JZm9yIChpID0g
MDsgaSA8IGZlbmNlX2NvdW50OyBpKyspIHsKLQkJcmV0ID0gZHJtX3NjaGVkX2pvYl9hZGRfZGVw
ZW5kZW5jeShqb2IsIGZlbmNlc1tpXSk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UoJmN1cnNv
ciwgb2JqLT5yZXN2LCB3cml0ZSwgZmVuY2UpIHsKKwkJcmV0ID0gZHJtX3NjaGVkX2pvYl9hZGRf
ZGVwZW5kZW5jeShqb2IsIGZlbmNlKTsKIAkJaWYgKHJldCkKLQkJCWJyZWFrOworCQkJcmV0dXJu
IHJldDsKIAl9Ci0KLQlmb3IgKDsgaSA8IGZlbmNlX2NvdW50OyBpKyspCi0JCWRtYV9mZW5jZV9w
dXQoZmVuY2VzW2ldKTsKLQlrZnJlZShmZW5jZXMpOwotCXJldHVybiByZXQ7CisJcmV0dXJuIDA7
CiB9CiBFWFBPUlRfU1lNQk9MKGRybV9zY2hlZF9qb2JfYWRkX2ltcGxpY2l0X2RlcGVuZGVuY2ll
cyk7CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
