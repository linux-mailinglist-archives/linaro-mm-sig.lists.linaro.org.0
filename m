Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 889BF406879
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:28:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 844BB6682C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:28:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 61D8D66BF0; Fri, 10 Sep 2021 08:27:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE66D64AD8;
	Fri, 10 Sep 2021 08:27:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C059D6322C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6282F63525; Fri, 10 Sep 2021 08:27:10 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 1591863424
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:08 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id w29so691127wra.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E+vlHAHze2GbFEMjJ18FaF4XzFbDHKUq0E4VCOiUNuo=;
 b=HybftAd+7uKdOV5zg2ea0y+qhWvQofD19fVH44gZl20wjwRGG1zpzzasvlB1cJjN7u
 5OLeGUdVvhXnrz93ObRQjFXGpoTmn+f5IfUQp9X0ClvsDVJuq2POC9dWspHGv9C7qf5Y
 SUM4Mqk1mXxACItxPdU7gFcsg7TOuFo1V122TOkOE1AZXMNKvE/zDlAn2RnUrm3PnAoJ
 jZaaCERt4hzU7yqGy1IjJtQ76pMLGTiJSQxOCVxQo3jh3dADc3PldDEe1lVymKyfSco9
 uU/jPvx5MQ4XME91lEapNwjnxXvCqTm+34SAC4ZoYb2SshqdbWAsG0vEiPBPVDra8Iu/
 1GUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E+vlHAHze2GbFEMjJ18FaF4XzFbDHKUq0E4VCOiUNuo=;
 b=hoZ00mstpGg6C/pACBoCDSgmfIKOWuUYT8CqgRR0d+fvPHQn3w08mzXrR4p1av4Mpp
 ZTc7aK9Oc5UIh7uOLzrVwvN1dUTkEDoaa3UuVl+v5a0SoM7gz55bjrv/bp9/XxWd+wIr
 BUG9BuZwcCnpgt+EinIoz4ocFKMii78YhuJTjrpkPwjTSp/s7eWUkHPoZYQGV1SjdJX6
 PL9n4+UrF39FiSSg4apUaSxqVfLJeq/kYpHtBchmd/XxmZ2+VXhjFJljtvxb5AXcvVz4
 NPTJgM0ssD91s9F6CHnaQm6cWyGCejCmYJsYZ4j5rToRHaPIRP8Ka4zhhWdWfN9z/bRD
 9p6A==
X-Gm-Message-State: AOAM5317NhaW1K1MIH4hOUc4FG4V46POZnzE8XiqHzGZ9DR13CL/Dnhl
 GuASVv7hF8rWRcSSv4GNGKd18JqB8vCymnY5
X-Google-Smtp-Source: ABdhPJzfd/Udc2aUZ+b/NYD27ztPjCkExkaZPwjk+zgrhKyeNASlXYGYiyLGf6eAhsuRtI8c+BhUKQ==
X-Received: by 2002:adf:f3ce:: with SMTP id g14mr320170wrp.95.1631262427136;
 Fri, 10 Sep 2021 01:27:07 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:52 +0200
Message-Id: <20210910082655.82168-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/14] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5jIHwgMTQgKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYwppbmRleCA0ODllMjIxOTBlMjkuLjBhOTI3MDA2YmE5YyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMTMzMiwxMCArMTMzMiw5IEBAIHN0
YXRpYyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibywKIAkJCQkJICAgIGNvbnN0IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlKQog
ewogCXVuc2lnbmVkIGxvbmcgbnVtX3BhZ2VzID0gYm8tPnJlc291cmNlLT5udW1fcGFnZXM7CisJ
c3RydWN0IGRtYV9yZXN2X2N1cnNvciByZXN2X2N1cnNvcjsKIAlzdHJ1Y3QgYW1kZ3B1X3Jlc19j
dXJzb3IgY3Vyc29yOwotCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmbGlzdDsKIAlzdHJ1Y3QgZG1h
X2ZlbmNlICpmOwotCWludCBpOwogCiAJLyogU3dhcG91dD8gKi8KIAlpZiAoYm8tPnJlc291cmNl
LT5tZW1fdHlwZSA9PSBUVE1fUExfU1lTVEVNKQpAQCAtMTM0OSwxNCArMTM0OCw5IEBAIHN0YXRp
YyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZmZXJf
b2JqZWN0ICpibywKIAkgKiBJZiB0cnVlLCB0aGVuIHJldHVybiBmYWxzZSBhcyBhbnkgS0ZEIHBy
b2Nlc3MgbmVlZHMgYWxsIGl0cyBCT3MgdG8KIAkgKiBiZSByZXNpZGVudCB0byBydW4gc3VjY2Vz
c2Z1bGx5CiAJICovCi0JZmxpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChiby0+YmFzZS5yZXN2
KTsKLQlpZiAoZmxpc3QpIHsKLQkJZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRfY291bnQ7
ICsraSkgewotCQkJZiA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZmxpc3QtPnNoYXJlZFtp
XSwKLQkJCQlkbWFfcmVzdl9oZWxkKGJvLT5iYXNlLnJlc3YpKTsKLQkJCWlmIChhbWRrZmRfZmVu
Y2VfY2hlY2tfbW0oZiwgY3VycmVudC0+bW0pKQotCQkJCXJldHVybiBmYWxzZTsKLQkJfQorCWRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKGJvLT5iYXNlLnJlc3YsICZyZXN2X2N1cnNvciwgdHJ1ZSwg
ZikgeworCQlpZiAoYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKGYsIGN1cnJlbnQtPm1tKSkKKwkJCXJl
dHVybiBmYWxzZTsKIAl9CiAKIAlzd2l0Y2ggKGJvLT5yZXNvdXJjZS0+bWVtX3R5cGUpIHsKLS0g
CjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
