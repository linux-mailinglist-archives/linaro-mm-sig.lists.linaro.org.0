Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C30141EAAD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:09:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22D1E60B91
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:09:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DEE2563390; Fri,  1 Oct 2021 10:08:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA316634DC;
	Fri,  1 Oct 2021 10:08:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BF7F363247
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 11FAB6314A; Fri,  1 Oct 2021 10:06:46 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id 730C362435
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:34 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 m14-20020a05600c3b0e00b0030d4dffd04fso1049448wms.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=KXbwWoEASyQRsPuv46mUDMotK0Bcif+uiHZAp4YIIqwwTbHos+IZJPI4rZHU1TbmZJ
 1nJO6fk2NViAzlCQRF5SYfwt2q9eB7Fsb+Pe8b5ffcEcrJO1CcVK8Um2p733gPBiyz9c
 0gxWwQfNwHPheQEQsPoaxwI9d16TG35+ISWIdcvyFXtMFR9YpH5DECmihkGTLnLxmw7O
 +ogdMbOiQ5cX+QDXaJ0THmIjriLY2XxCJ6TXfdMhQLhkDyUwZMC9n5Q8XjjD0wHihjB8
 qY5xF+BJcdc4OcMXKvZOc2upqpirE/igGCZCNQcN9SEo5N4RFflm5Q7+B1NZiuzTYc9c
 xMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=by8trJVpX1Yx/8GVC1WzD9CSlRZcllVkqP6ongV+oMI=;
 b=xZOAMZlIrHsb/ZM3+ksgUBKPjnLar7hc4tGQmO1Oyq6aJJVkm/yTR2+IZlQczQ5MDw
 4ryD+bVqGfQyrimHdbTHZ7KyrZrSZtqThdRqzuhOquXHYJzut8Og+UadE+4duciH51XB
 YrEFh730JetXyxH28By6kE17PuEvmVNlnBtv2RJYCbIdXg6AOKQpqQkt/9mpkWK90vt7
 2JCvD61tVZJccXR1oRqtebp8bIiWOU3zUtLdEPdIszFuTSQuyjmRBuLLkTAcQxco97NT
 Gdck1wNl7PVhcW19YG5v9s/PVNb2pPQ5yBM5SSzWbhgpXqailRt00S/Q+j4INoZ1Aguy
 LWSA==
X-Gm-Message-State: AOAM533mq6lSBLeug5KGW+F4cozHNPdIBBY6lJ5Dtv2TS6mjxmGmgqHU
 KxXwDOdJBOKpzSKA89mIWI4132Nh9Yk=
X-Google-Smtp-Source: ABdhPJzm+JKATE43IbiivZ6as6JSo9Ps7DVTMr7G6kRy9LrsCmdMBrHvTDiQ4kirIRVSCjM/zx/b2w==
X-Received: by 2002:a1c:94:: with SMTP id 142mr3640878wma.87.1633082793441;
 Fri, 01 Oct 2021 03:06:33 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:33 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:06:05 +0200
Message-Id: <20211001100610.2899-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 23/28] drm: use new iterator in
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
