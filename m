Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4094614A0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E6A66023B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 85ABF620CA; Mon, 29 Nov 2021 12:07:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BBC161E5C;
	Mon, 29 Nov 2021 12:07:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E518161A49
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7887861A43; Mon, 29 Nov 2021 12:07:18 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 85E0A60EA6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:15 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id d9so15384099wrw.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLhcJ6c+gStaRG1gv+P6ttqcHjmkscgCl8MWmUQCq2k=;
 b=VtBjAPe9K43fAJMf6bGEWuAz94uvhQvclA4cRn60BcpnZ4v/mL3osWyzE1Ayj0EB7X
 zjwGsRpYqwem20cQrLRWzEPlvn59bRYgbfRVnix7qnv0LTDP0TNUB/S+T7g85toEmirE
 yBvhLP4Hmi/LosJofo4Ofe+6N8wk5qNyS/HFp9g7G7kvkokcK6p12vMoV17+j5Vvol6g
 yzZombhcNMvOcS6kWfJc5zVQAjdd/7f6GqYmDLkeYVBImgycny4hQk+f7CvAEWdqRB2e
 DOWmFcRLaS9mqaPjOIg4PFCYNtCMPzfi3eHn+2mwKpkOoU2I8jBaah8vQzMTmKXazrVI
 oHRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLhcJ6c+gStaRG1gv+P6ttqcHjmkscgCl8MWmUQCq2k=;
 b=axwwlo/GIJ1iLkdF61OPFgGt1NTz0obvOC2Bf0/bE+INRHD8Hz9o/XzrvLvmTP1woy
 yMeAeRiuGwqhVfFwlL+jT4AvZz/CNLSQWXuBzUmb8dyNB7r1vfwo6lGc0uyf2bQynnba
 iPpT4JvfzSO7QlTHVaNJgPUN9QgB3dGrncNTah745qBz/SYc3ywwQV0PZySwL+2lmjLw
 fvjVSCn3DllgJx9acEaUWo6Vtd5EUCV8sa5IN5ENlOULhj3jpdSI6M4sfhKNMUbrCDLB
 g6Wqdrj1fzLbDZJw0+d29qRDg4KpaIrQQvnnhUg+MHp5pID7he64rfxHC2it1B6UTpFk
 rhIA==
X-Gm-Message-State: AOAM533c4QQGRaIraV/3fLauiRnC5JohnOcTO+0gz/wXeHKnE/lEfiyb
 3aFHt/WFTAF2wsSYHxxsgR0=
X-Google-Smtp-Source: ABdhPJyuChUJ4YecssetUAuuwF7pVzUNY5Ixq3BjLc+KhWYFiFkYOJ71iuilY6estwP8RlwDu3Oe7w==
X-Received: by 2002:a5d:6b09:: with SMTP id v9mr32861049wrw.591.1638187634459; 
 Mon, 29 Nov 2021 04:07:14 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:14 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:42 +0100
Message-Id: <20211129120659.1815-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/28] drm/nouveau: stop using
 dma_resv_excl_fence
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SW5zdGVhZCB1c2UgdGhlIG5ldyBkbWFfcmVzdl9nZXRfc2luZ2xldG9uIGZ1bmN0aW9uLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfYm8uYyB8IDkgKysrKysrKystCiAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9iby5jIGIvZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9iby5jCmluZGV4IGZhNzNmZTU3Zjk3Yi4uNzRmODY1MmQyYmQzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2JvLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9iby5jCkBAIC05NTksNyArOTU5LDE0IEBAIG5v
dXZlYXVfYm9fdm1fY2xlYW51cChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogewogCXN0
cnVjdCBub3V2ZWF1X2RybSAqZHJtID0gbm91dmVhdV9iZGV2KGJvLT5iZGV2KTsKIAlzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2ID0gZHJtLT5kZXY7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBk
bWFfcmVzdl9leGNsX2ZlbmNlKGJvLT5iYXNlLnJlc3YpOworCXN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlOworCWludCByZXQ7CisKKwkvKiBUT0RPOiBUaGlzIGlzIGFjdHVhbGx5IGEgbWVtb3J5IG1h
bmFnZW1lbnQgZGVwZW5kZW5jeSAqLworCXJldCA9IGRtYV9yZXN2X2dldF9zaW5nbGV0b24oYm8t
PmJhc2UucmVzdiwgZmFsc2UsICZmZW5jZSk7CisJaWYgKHJldCkKKwkJZG1hX3Jlc3Zfd2FpdF90
aW1lb3V0KGJvLT5iYXNlLnJlc3YsIGZhbHNlLCBmYWxzZSwKKwkJCQkgICAgICBNQVhfU0NIRURV
TEVfVElNRU9VVCk7CiAKIAludjEwX2JvX3B1dF90aWxlX3JlZ2lvbihkZXYsICpvbGRfdGlsZSwg
ZmVuY2UpOwogCSpvbGRfdGlsZSA9IG5ld190aWxlOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
