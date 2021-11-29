Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1F84614B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5964F60BA1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 75B3961B00; Mon, 29 Nov 2021 12:08:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF39262173;
	Mon, 29 Nov 2021 12:08:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8A2C761B00
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1BE7C62167; Mon, 29 Nov 2021 12:07:30 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id C87B562D22
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:27 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id d24so36328932wra.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xR1nHIQR+HY5rurJTXhG523nepCCoi6AKz+ZxgPV9e4=;
 b=PrARlWxKE10sEnLh/awOxujQsuzZME2kfIbZ+NkhLa+a1Qwd2/2TqBRn0A5c6/U+/H
 6cze3wVzcIwRa5jjPtk1yQFK1it42KOsc0sNHCn1mnIhM4+GyfkCZoVfDiuSrnASA9vH
 wHoxJ4svxVIoKDsb3JHo0J94QdXFxViXp3S6M/PBc60kQNefGtT6wk1U4ee0/YeJk4mj
 JfWgPkr4UhBwlZeeoJaD0bRumi/tTc/PeO3CDiQ4LG21GIaroOmlXTuF7EvxwIfhaVoR
 IENliQaPJQdjz9B63cWkJ/0fU5uDoP2kGhujJGfAtObxIZKwCFEV1beEvQReHNPlywyD
 ib4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xR1nHIQR+HY5rurJTXhG523nepCCoi6AKz+ZxgPV9e4=;
 b=zKQAb6+GPuQ75ItkdT0XxamEs2iLa7uttwAhUF25T3SyKDjr/8KEhY9kokP/EDlGPr
 8+yestYfqGIeh5DsfWOrG4hwV5lNY125QEcj+7atBL7tn3Yio3XnjRwZl7nD0QowGTid
 ygdHfP9VvVCAXhAxHwEpRnML1tlWjjh9+bCRQFhFlO1/tWX/NqU2RvXl1lWvnfCEpxfM
 cqdLKEVaKKO19L2DzaNveow2Xsx3uq1MGOH9ndDXYm9hCvSXrCpYjAPrzQJDtlJLggAw
 P7sGqP8zqvmUqcjYL9QgLGZRVf+zRYv79haboBbo8cF5iVpATRsa0kZgZayt9Zk8gHZ1
 gBNg==
X-Gm-Message-State: AOAM5320YKC2pi7ToUMoxb0iYoeGcIl+wcZxZmdpLRburWkTNh8DK+7Q
 F0HOwygKDs1x3XFylATm7v8=
X-Google-Smtp-Source: ABdhPJzzdlceodIRBmlFEQhUB8Cs4Zy3gLWxC1Aw5MEGHc38yEUkK/zYjhOxO867+NmHzoUgucPFdQ==
X-Received: by 2002:a05:6000:2ae:: with SMTP id
 l14mr33388815wry.142.1638187646630; 
 Mon, 29 Nov 2021 04:07:26 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:26 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:50 +0100
Message-Id: <20211129120659.1815-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 19/28] drm: support more than one write
 fence in drm_gem_plane_helper_prepare_fb
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

VXNlIGRtYV9yZXN2X2dldF9zaW5nbGV0b24oKSBoZXJlIHRvIGV2ZW50dWFsbHkgZ2V0IG1vcmUg
dGhhbiBvbmUgd3JpdGUKZmVuY2UgYXMgc2luZ2xlIGZlbmNlLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYyB8IDE4ICsrKysrKystLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCmluZGV4IGMzMTg5YWZlMTBjYi4uOTMzOGRkYjdl
ZGZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCkBAIC0xNDMsMjUg
KzE0MywyMSBAQAogICovCiBpbnQgZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYihzdHJ1
Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUpCiB7Ci0J
c3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
OwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCWludCByZXQ7CiAKIAlpZiAoIXN0YXRlLT5m
YikKIAkJcmV0dXJuIDA7CiAKIAlvYmogPSBkcm1fZ2VtX2ZiX2dldF9vYmooc3RhdGUtPmZiLCAw
KTsKLQlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+cmVzdiwgZmFsc2UpOwotCWRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Ci0JCS8qIFRP
RE86IEN1cnJlbnRseSB0aGVyZSBzaG91bGQgYmUgb25seSBvbmUgd3JpdGUgZmVuY2UsIHNvIHRo
aXMKLQkJICogaGVyZSB3b3JrcyBmaW5lLiBCdXQgZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3Bs
YW5lKCkgc2hvdWxkCi0JCSAqIGJlIGNoYW5nZWQgdG8gYmUgYWJsZSB0byBoYW5kbGUgbW9yZSBm
ZW5jZXMgaW4gZ2VuZXJhbCBmb3IKLQkJICogbXVsdGlwbGUgQk9zIHBlciBmYiBhbnl3YXkuICov
Ci0JCWRtYV9mZW5jZV9nZXQoZmVuY2UpOwotCQlicmVhazsKLQl9Ci0JZG1hX3Jlc3ZfaXRlcl9l
bmQoJmN1cnNvcik7CisJcmV0ID0gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihvYmotPnJlc3YsIGZh
bHNlLCAmZmVuY2UpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CiAKKwkvKiBUT0RPOiBkcm1f
YXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoKSBzaG91bGQgYmUgY2hhbmdlZCB0byBiZSBhYmxl
CisJICogdG8gaGFuZGxlIG1vcmUgZmVuY2VzIGluIGdlbmVyYWwgZm9yIG11bHRpcGxlIEJPcyBw
ZXIgZmIuCisJICovCiAJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBmZW5j
ZSk7CiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
