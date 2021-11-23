Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C69845A571
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:22:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E875D62D99
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E1DC462DB4; Tue, 23 Nov 2021 14:22:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CA4D6216E;
	Tue, 23 Nov 2021 14:22:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C7C8162CA7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BBD2C62173; Tue, 23 Nov 2021 14:21:40 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id F070762170
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:35 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 g191-20020a1c9dc8000000b0032fbf912885so2717984wme.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLhcJ6c+gStaRG1gv+P6ttqcHjmkscgCl8MWmUQCq2k=;
 b=oh/rTKJa7q7MBdD7KnRP/2E+q5ITp3UVnwYEL/Dc366iJpn5w7ze/43jJgObxeontv
 TV1Lder2M71UqpmBR2g8Y3nr4BhGjDgeG4Fh/ydEb35zsctop+uR8aGNgnDzLAiU8eUP
 G3wLUW7E2+1iF1gUzgSAEHQrv8rEoOgwyLUyAAX0kXEXyeB8OH+LsU+K7Lltnu6WjRVu
 jS14Dh80rYQmWn7yFmdRXIvX53ACxrdgZoD+HtEdVTNs5QhJO4lR0WY0wrgfBg+PAwS7
 qObzEDAw+32Hs/DW3RAl3MW4PaVR6MfmbqYtDzo3MZfDmWspVRdmUlfaY+uKcAAPC0Xa
 0iRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLhcJ6c+gStaRG1gv+P6ttqcHjmkscgCl8MWmUQCq2k=;
 b=ROqDzTU8JUO3eG2l4jJrlEbRlisJE464aZTKhYDny9gNy4GcV0e3UsO/1UVjttyXrg
 lj8qpJSB4Io4tC4bMldJB8Mr3H1nW4l8aCxbeSgKx4VNx4KYhJ8Df8/K2ZvgahC+Qkyd
 w3ydGLL/AWETYkxAjOXLFnt2fDH1QNpEt6gRtW/hnjsbnbKadtZ86IhbrhAcvmTC5Ph8
 V07gWr+Yt/Ui5I/5Al3dhwVOzb2IDyKQW+jFaxxjBBGoS8nJxuNgOABtxhqiuQzEe4E/
 nzO8YNZArfz/iwCl4tJOVY7rWSwVsuG3WaZkl5BCKkc27cwTy8QS2YZA06XKd0+R2X0g
 Tsxg==
X-Gm-Message-State: AOAM533Mc9/eqZpqUUrX4OeF2DjBvqBWp9kO9mDxTCecumUyjL9aIfpw
 zKElG3gy6HxmoJ7rLTBvjbk=
X-Google-Smtp-Source: ABdhPJxZNYWUTmSHRmW1N2dM7XUNic0YwGfB5C5dAoDF90ZbMxwVuVGVxS/MWIjJMy1ULKsssYTcfA==
X-Received: by 2002:a05:600c:202:: with SMTP id
 2mr3470222wmi.167.1637677294799; 
 Tue, 23 Nov 2021 06:21:34 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:34 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:56 +0100
Message-Id: <20211123142111.3885-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/26] drm/nouveau: stop using
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
