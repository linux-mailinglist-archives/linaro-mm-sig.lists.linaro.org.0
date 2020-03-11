Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 46232181A72
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 14:54:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 649C965FE9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 13:54:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 56A3D65FDE; Wed, 11 Mar 2020 13:54:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCDA165FE0;
	Wed, 11 Mar 2020 13:52:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 45CA46184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 374C065FD7; Wed, 11 Mar 2020 13:52:07 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id B7DA56184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:04 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id s5so2733833wrg.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 06:52:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EdSiddoWJSbLr+HoD/rzQuDxDnh96tXalnlSTnjDyNk=;
 b=STxKpura7R1mv919hyEqwUGRvfYJY5U3LA3ruRhTplO6HirAIznfqlNFocU6rEyFtN
 ZaUrGYhMfCOBndy9+Cy8cGfl5mPGLGuVGtrXq00uo0xovZkAZiLqFpwmkhRMWKxMFYdJ
 mfGRf1NGe6jWyARpjguWPX/n3Z/dXcCgHXyLhVfmlESCa/VAzMrK/X2SKwSqcNLr6Y6h
 1JlOmN8Y8p4JSfVXkRHlTuWYOEk3tR9u/tahswfNk2PvYeZ9FI5cvn/AoadQ9HbB/aML
 qWJP//xJLVZLzm4SYNjopgvCB36ryCTxgv5G5NRqV7Fp7TqwcEFAg9wQUNqAWRZL2T6E
 axrg==
X-Gm-Message-State: ANhLgQ0IuexyRhNn1XhuDiOU1GH+C3guJMFfCWI3ZH6bANyDKZyRcit5
 T9+a/XIqZrVZdEALSvOTWGs=
X-Google-Smtp-Source: ADFU+vvDQZoAP5t9Kngx119jPf9FnMzZ0/34dIRh4GcUnTweoHDleFgPZOnhX6aF+GPkB1qrkgUMDg==
X-Received: by 2002:a5d:410a:: with SMTP id l10mr4361775wrp.380.1583934723968; 
 Wed, 11 Mar 2020 06:52:03 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8dc:e796:e7da:a319])
 by smtp.gmail.com with ESMTPSA id 138sm3183811wmb.21.2020.03.11.06.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:52:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: David1.Zhou@amd.com, hch@infradead.org, jgg@ziepe.ca, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 14:51:55 +0100
Message-Id: <20200311135158.3310-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311135158.3310-1-christian.koenig@amd.com>
References: <20200311135158.3310-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 3/6] drm/amdgpu: note that we can handle
	peer2peer DMA-buf
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

SW1wb3J0aW5nIHNob3VsZCB3b3JrIG91dCBvZiB0aGUgYm94LgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1
Zi5jCmluZGV4IGZmZWIyMGYxMWMwNy4uYWVmMTJlZTJmMWUzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKQEAgLTUxNCw2ICs1MTQsNyBAQCBhbWRncHVf
ZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCiB9
CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIGFtZGdwdV9kbWFfYnVm
X2F0dGFjaF9vcHMgPSB7CisJLmFsbG93X3BlZXIycGVlciA9IHRydWUsCiAJLm1vdmVfbm90aWZ5
ID0gYW1kZ3B1X2RtYV9idWZfbW92ZV9ub3RpZnkKIH07CiAKLS0gCjIuMTcuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
