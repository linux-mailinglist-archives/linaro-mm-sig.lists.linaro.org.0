Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DD73A9502
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 10:27:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8DF1634F3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 08:27:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 84D5E634FD; Wed, 16 Jun 2021 08:27:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54F20666F3;
	Wed, 16 Jun 2021 08:27:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6F9736600D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 61FCF63512; Wed, 16 Jun 2021 08:27:08 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id B45EB61A4D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:05 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id r7so1520395edv.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 01:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=IVTqokzmJtH8YP62XhkCvu3HVJ/rLNfsAlMIAEY59CE=;
 b=EwEYNY4o/LxWqe7QhW3a60rhBvw/kRELesY+OsHJ+XaBjf0r6WAzYlVTjcdo3Q+M0B
 hlXIM9gJRkjGWtrSWXsIB1Y9niKXfnaCOZUVlw3phEEKG7nQDYXmmmN2Ucu9vqaHWEV7
 tWJ4gJwUSDTwiOoG/dQUHjc4hOFVi7cJ2h9TTcKLtXsUbxKE+zsrWj7tUT6UhK727GP9
 28UoI8wNQKRUSJQQm7gGpOGysujbsiyWzIbMJ3p5hqBn6Q9UK6gdq2tnSP0kBgNjwGRM
 jGN5xHkwvWTZXFhTHC3ye6Skxz67KYEhWjyqNJA1inGuvlzJo5C7CyopuppTDQvFj9ZZ
 skuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IVTqokzmJtH8YP62XhkCvu3HVJ/rLNfsAlMIAEY59CE=;
 b=El0+SolppMd3Y5yqy6hn98XYENfQQ/V+7tC7TkykSz2PFXPp3ZCq9B40Ok/hfS/ZPt
 hi7YWuGtRffh/csdJwxM8/YPGYeG1trdLgURV26+zhtM1n+3CiDnspMyMx6R6voRUpLg
 WrVmMQ+IDcg5K0DgzyGv1P4VyiinU+yGmDNGPHnpliVymv1nNJ+pryj2gQtFRr1Jd8IH
 n+jqDxe96DDrN+IxVzqKyz6kF+JJrKzpKUNER42XzTw5eqj5TTSKOpAxLeS2TNN2XRRC
 ms0nfuwyO23Gzso6qNllWASrVKegFXz9oKYKWp9gL7BmzhS4L7eIU78qRizIYUPchw2e
 aTWQ==
X-Gm-Message-State: AOAM531ZZImSOA2ByL0/rE7vryUY6kIaePc0Cq5mnFSAyKJVZZC4WREd
 Gm0j5q7KzTgfZFOCodGouY4=
X-Google-Smtp-Source: ABdhPJx4sV239SQRT2vcbJ7VyXdlQJ8tWQ82/GMk1JT2JyYbq5iZo7gKx4+Rw7i+3JlO3ydX9xlE6w==
X-Received: by 2002:a05:6402:1644:: with SMTP id
 s4mr2774807edx.190.1623832024719; 
 Wed, 16 Jun 2021 01:27:04 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8b88:17a4:582b:121f])
 by smtp.gmail.com with ESMTPSA id v7sm1152639edx.38.2021.06.16.01.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 01:27:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
Date: Wed, 16 Jun 2021 10:26:55 +0200
Message-Id: <20210616082655.111001-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210616082655.111001-1-christian.koenig@amd.com>
References: <20210616082655.111001-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 7/7] drm/amdgpu: drop CS workaround adding
 the shared manually
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

RHJvcCB0aGUgd29ya2Fyb3VuZCBhZGRpbmcgdGhlIHNoYXJlZCBmZW5jZSBtYW51YWxseSBpbiB0
aGUgQ1MuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMgfCA2
ICstLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA1IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMKaW5kZXggMjU2NTU0MTRlOWMwLi5h
ZjhmNWZmNWYxMmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCkBAIC0x
MjczLDE0ICsxMjczLDEwIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1k
Z3B1X2NzX3BhcnNlciAqcCwKIAkJLyoKIAkJICogV29yayBhcm91bmQgZG1hX3Jlc3Ygc2hvcnRj
b21taW5ncyBieSB3cmFwcGluZyB1cCB0aGUKIAkJICogc3VibWlzc2lvbiBpbiBhIGRtYV9mZW5j
ZV9jaGFpbiBhbmQgYWRkIGl0IGFzIGV4Y2x1c2l2ZQotCQkgKiBmZW5jZSwgYnV0IGZpcnN0IGFk
ZCB0aGUgc3VibWlzc2lvbiBhcyBzaGFyZWQgZmVuY2UgdG8gbWFrZQotCQkgKiBzdXJlIHRoYXQg
c2hhcmVkIGZlbmNlcyBuZXZlciBzaWduYWwgYmVmb3JlIHRoZSBleGNsdXNpdmUKLQkJICogb25l
LgorCQkgKiBmZW5jZS4KIAkJICovCiAJCWRtYV9mZW5jZV9jaGFpbl9pbml0KGNoYWluLCBkbWFf
cmVzdl9leGNsX2ZlbmNlKHJlc3YpLAogCQkJCSAgICAgZG1hX2ZlbmNlX2dldChwLT5mZW5jZSks
IDEpOwotCi0JCWRtYV9yZXN2X2FkZF9zaGFyZWRfZmVuY2UocmVzdiwgcC0+ZmVuY2UpOwogCQly
Y3VfYXNzaWduX3BvaW50ZXIocmVzdi0+ZmVuY2VfZXhjbCwgJmNoYWluLT5iYXNlKTsKIAkJZS0+
Y2hhaW4gPSBOVUxMOwogCX0KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
