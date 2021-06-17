Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 741333AB256
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4AC466903
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BCECB66769; Thu, 17 Jun 2021 11:17:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 266F46354F;
	Thu, 17 Jun 2021 11:17:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 40DE963527
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E100563503; Thu, 17 Jun 2021 11:16:13 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by lists.linaro.org (Postfix) with ESMTPS id 8626063501
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:10 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id ji1so3089738ejc.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=f1nM/lpdSyfhiokJoYKLwhEgbv1/4gmOk1Dy2ivEHic=;
 b=A/XrqU2+MWOuAkqSgZ6QRPi/OX8NnlSLG59pLX7MWTJdq/uJfCYBGgj1uNqm7KnshJ
 ONHeTwD04CBs29Zlu+QbB018Sjbj1EbD2PRqZl9cKBh9SMmhDZBsCQ46OxPgp1o8Qq3w
 pms9himFZh0TiGjmbDTagV+cT2IlGLWj033t58n/sVW92evl7E/bIIeKVakNk8213Kzl
 UTL+AemGi/lA9fyKp0bn74Khf/YY4mATHujl7EeUiZ+n3ts5rQ09gb7MWWAyOeljamEW
 VF9NakYitalSgDIqNGl7UvP+t0K2cS4irujtjxI07D3cwQaBxKs0atuYZ9O1iAdeGK0k
 9j6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f1nM/lpdSyfhiokJoYKLwhEgbv1/4gmOk1Dy2ivEHic=;
 b=U6LwxjNvIhrZxfkuDHT1RVVNRFOV2FFciaAsyNp7W4d2AT2FmMiv972un6AktcxvXM
 vbgqZ2tu6lt6EKgcD+nHonUZ9HTuUSdhbOZQPbdkPvzMEQ46gFcJhGC4AHWkKaVE3RAj
 99zwAWbNLz8FGjuMJSfM0pIIu/igVPF5HEpAO7HP1rmJtXCfZ7ODIMN5UdGXqW83TW4y
 gTOyphOHfywO1n5aDcZyUv1hYX2MIFnNEJ9A3D61wUjLFsR7yzSriVnMrIKXGNplM25D
 vt0uLoGDBBAKiIF7kL0rFo2QvavrM//QAGUQ/uFciJi+6uQLwN/6R8Q/6aNHjHY1TVaV
 HW5w==
X-Gm-Message-State: AOAM531VFo0NsbyeKlYLAnWxSVfaZM+SARcunJWptK70iubl28+UY/ep
 0snug5MA04VGZAIdDsAvsVw=
X-Google-Smtp-Source: ABdhPJwpl+Y35NzWtOSjv3T8c0k5bgUp2ObFD77ixFfDk+LP3QdJI72JcZJK2ppOJ0uA8hoXgx4CfQ==
X-Received: by 2002:a17:906:86cc:: with SMTP id
 j12mr4762643ejy.548.1623928569570; 
 Thu, 17 Jun 2021 04:16:09 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:09 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:54 +0200
Message-Id: <20210617111558.28486-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/16] drm/amdgpu: use new iterator in
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
L2FtZGdwdV90dG0uYwppbmRleCA4MGRmZjI5ZjJiYzcuLmQ4NmIwY2JmZjg4OSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMTMzNCwxMCArMTMzNCw5IEBAIHN0
YXRpYyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibywKIAkJCQkJICAgIGNvbnN0IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlKQog
ewogCXVuc2lnbmVkIGxvbmcgbnVtX3BhZ2VzID0gYm8tPnJlc291cmNlLT5udW1fcGFnZXM7CisJ
c3RydWN0IGRtYV9yZXN2X2N1cnNvciByZXN2X2N1cnNvcjsKIAlzdHJ1Y3QgYW1kZ3B1X3Jlc19j
dXJzb3IgY3Vyc29yOwotCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmbGlzdDsKIAlzdHJ1Y3QgZG1h
X2ZlbmNlICpmOwotCWludCBpOwogCiAJLyogU3dhcG91dD8gKi8KIAlpZiAoYm8tPnJlc291cmNl
LT5tZW1fdHlwZSA9PSBUVE1fUExfU1lTVEVNKQpAQCAtMTM1MSwxNCArMTM1MCw5IEBAIHN0YXRp
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
