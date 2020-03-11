Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C051D181A76
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 14:55:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F14776087C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 13:55:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E68C0609BE; Wed, 11 Mar 2020 13:55:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD27A65FD9;
	Wed, 11 Mar 2020 13:52:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 89BFE6184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7F02665FE6; Wed, 11 Mar 2020 13:52:39 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 236906184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:08 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id z15so2739522wrl.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 06:52:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=flGhpt37sp9XD/VKJktequW1z/Op/EL2iIAVEZzSQBY=;
 b=bbWPJjCN4LLgm5hwpTkPgtgTQicUMcnEg0/ThvsklMkRp6p6CyGeFlynof4MJ3NInb
 Vs/04wk1DbEKwD4L4XIKu9SFjTRNvym0Oe4kZZAO+mt1sx7kFB+wRqV2zS4orfqeESK+
 BmsYcE9yEa12Ojw1arLprsu16rC3/uCFEHFTCh+iM3K/6cruaEiY8NfnjvMyt5O1w2uI
 pvYtWl+T2AIMfFWXwazXbtzV9UyGFiRvmTDPcqNyi8LSwh1WpAxLtp0takNF1uX1j5w6
 pKNgpu4Rzhr5eQFNs8Wf+1SR5crqDSEMI46G59FJ5yQCJs8qgZf2vj+Pl8p9VJq4tKId
 1yvg==
X-Gm-Message-State: ANhLgQ2PsdqDD7CZs7V5UFogDaC2tzAzSwnS23jByDRlYFB/ebTagSxK
 dIqhkm2K26jPYuDmqIhBaMU=
X-Google-Smtp-Source: ADFU+vvgmw4fd1NqGTYZeiUuoJEPOPj4Kn4u889b6V+DZSy4sQjKVUikTia6D/Jj32pCHPGIgHy5mA==
X-Received: by 2002:adf:c449:: with SMTP id a9mr4615828wrg.366.1583934727345; 
 Wed, 11 Mar 2020 06:52:07 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8dc:e796:e7da:a319])
 by smtp.gmail.com with ESMTPSA id 138sm3183811wmb.21.2020.03.11.06.52.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:52:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: David1.Zhou@amd.com, hch@infradead.org, jgg@ziepe.ca, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 14:51:58 +0100
Message-Id: <20200311135158.3310-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311135158.3310-1-christian.koenig@amd.com>
References: <20200311135158.3310-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 6/6] drm/amdgpu: improve amdgpu_gem_info
	debugfs file
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

Tm90ZSBpZiBhIGJ1ZmZlciB3YXMgaW1wb3J0ZWQgdXNpbmcgcGVlcjJwZWVyLgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9nZW0uYyB8IDQgKysrLQogMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9nZW0uYwppbmRleCA0Mjc3MTI1YTc5ZWUuLmU0MjYwODExNWM5OSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9nZW0uYwpAQCAtMjksNiArMjksNyBAQAog
I2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgogI2luY2x1ZGUgPGxpbnV4L3BhZ2VtYXAuaD4KICNp
bmNsdWRlIDxsaW51eC9wY2kuaD4KKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+CiAKICNpbmNs
dWRlIDxkcm0vYW1kZ3B1X2RybS5oPgogI2luY2x1ZGUgPGRybS9kcm1fZGVidWdmcy5oPgpAQCAt
ODU0LDcgKzg1NSw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2RlYnVnZnNfZ2VtX2JvX2luZm8oaW50
IGlkLCB2b2lkICpwdHIsIHZvaWQgKmRhdGEpCiAJYXR0YWNobWVudCA9IFJFQURfT05DRShiby0+
dGJvLmJhc2UuaW1wb3J0X2F0dGFjaCk7CiAKIAlpZiAoYXR0YWNobWVudCkKLQkJc2VxX3ByaW50
ZihtLCAiIGltcG9ydGVkIGZyb20gJXAiLCBkbWFfYnVmKTsKKwkJc2VxX3ByaW50ZihtLCAiIGlt
cG9ydGVkIGZyb20gJXAlcyIsIGRtYV9idWYsCisJCQkgICBhdHRhY2htZW50LT5wZWVyMnBlZXIg
PyAiIFAyUCIgOiAiIik7CiAJZWxzZSBpZiAoZG1hX2J1ZikKIAkJc2VxX3ByaW50ZihtLCAiIGV4
cG9ydGVkIGFzICVwIiwgZG1hX2J1Zik7CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
