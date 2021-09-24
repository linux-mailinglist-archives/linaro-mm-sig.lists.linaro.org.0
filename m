Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D874177DB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:33:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50899623DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:33:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 09FFB62435; Fri, 24 Sep 2021 15:33:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E1126263B;
	Fri, 24 Sep 2021 15:33:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B6C336322E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67B876314A; Fri, 24 Sep 2021 15:31:46 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id F28EE634DE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:39 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id w17so28584372wrv.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=Eqf0TsStDMRTsdGFJuWVnJf2v0hiU5Gee3VDgqFxAzZ4shiQx3J5v0f2tbpNl4fudu
 QxRSbr4FinII9L6a7uTnPsMcOD4Q7sr0QVgTVMlE0IQQ7UhgKNEdKBSbKw8dAaBHx0QO
 HhzVzmR5sssTD29ad7XRYJJM5oojlUuZEXL6Zpek3SMvs/GxmhfaMUB44UdSBa94IRpz
 X8iDf4MhkoUZgslH5G25e2hc7lC6G4WAVAP6Vc47lfyFwNdQUa3v0sSFf1LoN3K7lRC8
 e2j7Ij8aQLyPV+xNhlUM039IQ0xM8NMqbs7yLdau8szJe3EfJ9EDmylj0pzwlLX7VXz9
 4o6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=hhMnPklz8Q8lTiGPi7uLWD4CWDIq5RNIXeYMBaZiQ8usFWHVO/cwTzoAs+1tPDTwCX
 A7JQViv9Zd4gNeHRph9gn32dNee3nslEPIiIRhiK5RfvS42mirucm1FztKn8TzmsuC83
 wFqpiMGjCEKoZ+koafEVs6xJAMS2tbG3gyyJhKp94CXwfG0weTAMpOBWRcRNkP15vpiv
 /ezf14ElB+iMgdEzSjTuDFt7L3rsb+9g8Lav8vMHyV6NvXNYMgvdGkoYzqUus99zp6es
 Q0+zEKVRyUtCJzKqKSHkCuufII2L6ux8WbdZ5htlLfnmqjYlaZGBNnnCqjCySPq0sUHP
 GN3w==
X-Gm-Message-State: AOAM533+BN40qS6HHQPZZ7MdsEqXqNy9bxLaHVUgsmDSATEsfoVgDTy1
 +RqY3mS6uDz4cc20HBBno1sF9IuIbOc=
X-Google-Smtp-Source: ABdhPJyEIbwNagKQjRCKtbLDbhGeGif8L2hXwXVmEhLFr3BzHmPyroyuxSsJRkQX4iKyLiCBG6iiCA==
X-Received: by 2002:a5d:6846:: with SMTP id o6mr12540258wrw.327.1632497498031; 
 Fri, 24 Sep 2021 08:31:38 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:37 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:07 +0200
Message-Id: <20210924153113.2159-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 21/27] drm/i915: use new cursor in
 intel_prepare_plane_fb
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA3ICsrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAxMzRhNmFjYmQ4ZmIuLmQzMjEzN2E4NDY5NCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTExMjkw
LDYgKzExMjkwLDcgQEAgaW50ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpf
cGxhbmUsCiAJaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX2Zyb250YnVmZmVyKG9iaiwgT1JJR0lOX0RJ
UlRZRkIpOwogCiAJaWYgKCFuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2UpIHsgLyogaW1wbGlj
aXQgZmVuY2luZyAqLworCQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CiAJCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlOwogCiAJCXJldCA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRp
b24oJnN0YXRlLT5jb21taXRfcmVhZHksCkBAIC0xMTMwMCwxMiArMTEzMDEsMTIgQEAgaW50ZWxf
cHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJCWlmIChyZXQgPCAw
KQogCQkJZ290byB1bnBpbl9mYjsKIAotCQlmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9j
a2VkKG9iai0+YmFzZS5yZXN2KTsKLQkJaWYgKGZlbmNlKSB7CisJCWRtYV9yZXN2X2l0ZXJfYmVn
aW4oJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIGZhbHNlKTsKKwkJZG1hX3Jlc3ZfZm9yX2VhY2hf
ZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKIAkJCWFkZF9ycHNfYm9vc3RfYWZ0ZXJf
dmJsYW5rKG5ld19wbGFuZV9zdGF0ZS0+aHcuY3J0YywKIAkJCQkJCSAgIGZlbmNlKTsKLQkJCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOwogCQl9CisJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwog
CX0gZWxzZSB7CiAJCWFkZF9ycHNfYm9vc3RfYWZ0ZXJfdmJsYW5rKG5ld19wbGFuZV9zdGF0ZS0+
aHcuY3J0YywKIAkJCQkJICAgbmV3X3BsYW5lX3N0YXRlLT51YXBpLmZlbmNlKTsKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
