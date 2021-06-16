Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2D93A94FA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 10:27:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BEE363578
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 08:27:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9E35A60A09; Wed, 16 Jun 2021 08:27:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 590D463565;
	Wed, 16 Jun 2021 08:27:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E12FE60501
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D3D0360B21; Wed, 16 Jun 2021 08:27:02 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id C3075606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:00 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id i13so1532304edb.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 01:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bAUQPXbSkvT19k/XhsYs0cmL8Bgj7Ny0WAGbdIQQDHQ=;
 b=HxP9msOguWQ3QrHteS08n9aIIpmSVL0B0jsiRk4MJRbL7uofgZCKCoapjNf/2kiwdk
 6Pb3l1Fc9AAZ/VCA3EHdMq5afGHtPvdGX2GUQdVJ0cKXTwGUpQJWgaUhzC0OOXYMGMs2
 JbdyCuOMZpj8iV/WG+xz7zoV7SR38QcnQ9FBNgOimACUD0REuMD5SPbZyBucGx/w2Vpj
 gDk4kQBGE5BXa6AxcD7Q5IgG8RSE/JYkxUGv+IjtKZYbgR5iko6rgwhIsOid1X8SXd9o
 RfsKcaUNJD8eByyW4wemDj68FQ/qrYOOCUsR3cTTWq04Y1TPeEorHNbttrukQnr3h8k0
 wXbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bAUQPXbSkvT19k/XhsYs0cmL8Bgj7Ny0WAGbdIQQDHQ=;
 b=riSHQmOu1Xn48kb/AHXJNF+ddScKnFP+pvxNp64PJ98VePEA2aWcl09NfnYFGDn3Ng
 Hu9k93f9EBN6Z6Pi3m/UO5uqUGv8kpVCwVfrtV6fUiUJEZDx8cBkx2itfapMOu9JGjhX
 p9pN7bivHsQ8GGT+ViT/pKwh1IslAh5kqyNr0pENSH6zNoDu4Qrbk09A4tWA5Uq71wcG
 KfBrK3aBOVSwpOBasAkUiZj6lkfXIwHW2f7l+omdUnku0XtcBpmVbGlhyZgruGPxEHF7
 fgmqEe5+YBisLmGSOFKnsIfMBzPVtAwQtLn5bjQkRQfIum3dHdDKi8OvilD5oJT8AJHo
 MQ3w==
X-Gm-Message-State: AOAM533CyPszqenP/qo8UNcvQcLD/eOxISB0KojVj56wcy6VC3b5VkgN
 vA5Ug+IbtYy6sP6MxO9O+0PXhaSJKew=
X-Google-Smtp-Source: ABdhPJwuv9+M+3+hOg8rwV487BVcNbOkILX2dYfgDgwmpTEez1b9S9OjYK3Etjby1E1nrcMXGLnRog==
X-Received: by 2002:aa7:cd77:: with SMTP id ca23mr2794529edb.259.1623832019927; 
 Wed, 16 Jun 2021 01:26:59 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8b88:17a4:582b:121f])
 by smtp.gmail.com with ESMTPSA id v7sm1152639edx.38.2021.06.16.01.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 01:26:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
Date: Wed, 16 Jun 2021 10:26:49 +0200
Message-Id: <20210616082655.111001-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210616082655.111001-1-christian.koenig@amd.com>
References: <20210616082655.111001-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/7] dma-buf: add some more kerneldoc to
 dma_resv_add_shared_fence
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

RXhwbGljaXRseSBkb2N1bWVudCB0aGF0IGNvZGUgY2FuJ3QgYXNzdW1lIHRoYXQgc2hhcmVkIGZl
bmNlcwpzaWduYWwgYWZ0ZXIgdGhlIGV4Y2x1c2l2ZSBmZW5jZS4KClNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2Rt
YS1idWYvZG1hLXJlc3YuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IGYyNmM3MTc0N2Q0My4uNGFiMDJi
NmMzODdhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpAQCAtMjM1LDcgKzIzNSwxMCBAQCBFWFBPUlRfU1lNQk9M
KGRtYV9yZXN2X3Jlc2V0X3NoYXJlZF9tYXgpOwogICogQGZlbmNlOiB0aGUgc2hhcmVkIGZlbmNl
IHRvIGFkZAogICoKICAqIEFkZCBhIGZlbmNlIHRvIGEgc2hhcmVkIHNsb3QsIG9iai0+bG9jayBt
dXN0IGJlIGhlbGQsIGFuZAotICogZG1hX3Jlc3ZfcmVzZXJ2ZV9zaGFyZWQoKSBoYXMgYmVlbiBj
YWxsZWQuCisgKiBkbWFfcmVzdl9yZXNlcnZlX3NoYXJlZCgpIGhhcyBiZWVuIGNhbGxlZC4gVGhl
IHNoYXJlZCBmZW5jZXMgY2FuIHNpZ25hbCBpbgorICogYW55IG9yZGVyIGFuZCB0aGVyZSBpcyBl
c3BlY2lhbGx5IG5vIGd1YXJhbnRlZSB0aGF0IHNoYXJlZCBmZW5jZXMgc2lnbmFsCisgKiBhZnRl
ciB0aGUgZXhjbHVzaXZlIG9uZS4gQ29kZSByZWx5aW5nIG9uIGFueSBzaWduYWxpbmcgb3JkZXIg
aXMgYnJva2VuIGFuZAorICogbmVlZHMgdG8gYmUgZml4ZWQuCiAgKi8KIHZvaWQgZG1hX3Jlc3Zf
YWRkX3NoYXJlZF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpCiB7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
