Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5CA45A58E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7153662170
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:23:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 559B562D32; Tue, 23 Nov 2021 14:23:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AC2B62FC7;
	Tue, 23 Nov 2021 14:23:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D1BC62D4E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:22:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CAC1E62CA0; Tue, 23 Nov 2021 14:22:13 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by lists.linaro.org (Postfix) with ESMTPS id B1F9562DC7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:22:09 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 j140-20020a1c2392000000b003399ae48f58so2400703wmj.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zs/CUVLGUkgg0Mmeetef1+lFQcZyZCfqjZa/gpAFc9k=;
 b=BJWs7xWQOwsmhKXBuvGw4AOVJf0T4UhO8xiZqEZh/vPvZMXbnw+Urq4YnCNYK/RjJq
 zqw+8//KZ9jpthCQeAg397QuX7nWoPTr5ZPYL/jDN0p/lZvdnDAM6xDm+GhDNuKb+fNe
 D+ufaEoXkm9cXNsQ0HNyqYNM9XN8al7LI1IVWZyKw963Z8FiE4KIrCxZ0w9rqld3FNUm
 8NZMO3U8yr2vpAkr2yeILe2E/anggh+jA4FIQ4v/AZDYVYJw/FYom5rAfqYDW3nzF5Sk
 nSZfvcRbsK2D2a6B9dxmA4/NUhGDXGBT7KG2ZpUd3XJJ0qCrv2s+WxXb+eDZeSzfE2eF
 g0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zs/CUVLGUkgg0Mmeetef1+lFQcZyZCfqjZa/gpAFc9k=;
 b=NENFRyFR65klhzKiIaiyIoxWrlhs1i16ijUcex2o/W/IdSeAxvdsiEmXBdkLBVFbyn
 d+ZaYYzAr2Cb8lzz7k5HycsjMQN76jXebq4Zqw3Ff3gQFj6H8PPd8fi5SLdJkzrKpkHp
 ec/+iHO+7eVhShLOICWLIoDZpU7BAmbPpPc7H9zl7mtVef3zkWnCZkWokWQmoPKpQJsa
 m7k96Ys/LHNkPPgFQEpNH/nQHT5BIENQaJb3Vv+EctDM5B5XkIopcxVvBZV0ik6FcpMn
 ombcNoYCrmviUOm0gTdl+WBKR34yw31JwPNa9sjTJbHYOL8c1PhY7vBcrtTkx3EjsOIf
 ofUg==
X-Gm-Message-State: AOAM533B8624nx6TaYEFhfu8WnPoYXtdK4F5Fs4sr/0oo8lQV3G0b/7/
 ivXWNH+XTawvYd6kuG9J7fw0Y2vB3zs=
X-Google-Smtp-Source: ABdhPJzziBcWJMjfV3QcpKN9Asg0M8E/MHmWxFskjrUoqmrsnXz74QuM50S2j84z1Ic3yjGrdepXhQ==
X-Received: by 2002:a05:600c:4e91:: with SMTP id
 f17mr3648100wmq.195.1637677318184; 
 Tue, 23 Nov 2021 06:21:58 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:57 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:21:09 +0100
Message-Id: <20211123142111.3885-25-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 24/26] dma-buf: wait for map to complete for
 static attachments
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

V2UgaGF2ZSBwcmV2aW91c2x5IGRvbmUgdGhhdCBpbiB0aGUgaW5kaXZpZHVhbCBkcml2ZXJzIGJ1
dCBpdCBpcwptb3JlIGRlZmVuc2l2ZSB0byBtb3ZlIHRoYXQgaW50byB0aGUgY29tbW9uIGNvZGUu
CgpEeW5hbWljIGF0dGFjaG1lbnRzIHNob3VsZCB3YWl0IGZvciBtYXAgb3BlcmF0aW9ucyB0byBj
b21wbGV0ZSBieSB0aGVtc2VsdmVzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
ICAgICAgICAgICAgICAgICAgfCAxOCArKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgfCAxNCArLS0tLS0tLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9wcmltZS5jICAgICB8IDE3ICstLS0tLS0tLS0tLS0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9wcmltZS5jICAgICAgIHwgMTYgKysr
LS0tLS0tLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA0NSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYwppbmRleCA1Mjg5ODNkM2JhNjQuLmQzZGQ2MDJjNDc1MyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jCkBAIC02NjAsMTIgKzY2MCwyNCBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICog
X19tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCiAJCQkJICAg
ICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKIHsKIAlzdHJ1Y3Qgc2dfdGFi
bGUgKnNnX3RhYmxlOworCXNpZ25lZCBsb25nIHJldDsKIAogCXNnX3RhYmxlID0gYXR0YWNoLT5k
bWFidWYtPm9wcy0+bWFwX2RtYV9idWYoYXR0YWNoLCBkaXJlY3Rpb24pOworCWlmIChJU19FUlJf
T1JfTlVMTChzZ190YWJsZSkpCisJCXJldHVybiBzZ190YWJsZTsKKworCWlmICghZG1hX2J1Zl9h
dHRhY2htZW50X2lzX2R5bmFtaWMoYXR0YWNoKSkgeworCQlyZXQgPSBkbWFfcmVzdl93YWl0X3Rp
bWVvdXQoYXR0YWNoLT5kbWFidWYtPnJlc3YsCisJCQkJCSAgICBETUFfUkVTVl9VU0FHRV9LRVJO
RUwsIHRydWUsCisJCQkJCSAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7CisJCWlmIChyZXQgPCAw
KSB7CisJCQlhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0dGFjaCwgc2dfdGFi
bGUsCisJCQkJCQkJICAgZGlyZWN0aW9uKTsKKwkJCXJldHVybiBFUlJfUFRSKHJldCk7CisJCX0K
Kwl9CiAKLQlpZiAoIUlTX0VSUl9PUl9OVUxMKHNnX3RhYmxlKSkKLQkJbWFuZ2xlX3NnX3RhYmxl
KHNnX3RhYmxlKTsKLQorCW1hbmdsZV9zZ190YWJsZShzZ190YWJsZSk7CiAJcmV0dXJuIHNnX3Rh
YmxlOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwpp
bmRleCBhZTZhYjkzYzg2OGIuLjU3YTdhNjAzZjk4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCkBAIC0xMDUsMjEgKzEwNSw5IEBAIHN0YXRpYyBpbnQg
YW1kZ3B1X2RtYV9idWZfcGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKIHsK
IAlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9IGF0dGFjaC0+ZG1hYnVmLT5wcml2OwogCXN0
cnVjdCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOwotCWludCByOwogCiAJ
LyogcGluIGJ1ZmZlciBpbnRvIEdUVCAqLwotCXIgPSBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVf
R0VNX0RPTUFJTl9HVFQpOwotCWlmIChyKQotCQlyZXR1cm4gcjsKLQotCWlmIChiby0+dGJvLm1v
dmluZykgewotCQlyID0gZG1hX2ZlbmNlX3dhaXQoYm8tPnRiby5tb3ZpbmcsIHRydWUpOwotCQlp
ZiAocikgewotCQkJYW1kZ3B1X2JvX3VucGluKGJvKTsKLQkJCXJldHVybiByOwotCQl9Ci0JfQot
CXJldHVybiAwOworCXJldHVybiBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9H
VFQpOwogfQogCiAvKioKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZl
YXVfcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfcHJpbWUuYwppbmRl
eCA2MDAxOWQwNTMyZmMuLjM0NzQ4ODY4NWY3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9wcmltZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25v
dXZlYXVfcHJpbWUuYwpAQCAtOTMsMjIgKzkzLDcgQEAgaW50IG5vdXZlYXVfZ2VtX3ByaW1lX3Bp
bihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKIAlpZiAocmV0KQogCQlyZXR1cm4gLUVJTlZB
TDsKIAotCXJldCA9IHR0bV9ib19yZXNlcnZlKCZudmJvLT5ibywgZmFsc2UsIGZhbHNlLCBOVUxM
KTsKLQlpZiAocmV0KQotCQlnb3RvIGVycm9yOwotCi0JaWYgKG52Ym8tPmJvLm1vdmluZykKLQkJ
cmV0ID0gZG1hX2ZlbmNlX3dhaXQobnZiby0+Ym8ubW92aW5nLCB0cnVlKTsKLQotCXR0bV9ib191
bnJlc2VydmUoJm52Ym8tPmJvKTsKLQlpZiAocmV0KQotCQlnb3RvIGVycm9yOwotCi0JcmV0dXJu
IHJldDsKLQotZXJyb3I6Ci0Jbm91dmVhdV9ib191bnBpbihudmJvKTsKLQlyZXR1cm4gcmV0Owor
CXJldHVybiAwOwogfQogCiB2b2lkIG5vdXZlYXVfZ2VtX3ByaW1lX3VucGluKHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRl
b25fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3ByaW1lLmMKaW5kZXgg
NGE5MDgwNzM1MWU3Li40MmE4Nzk0OGUyOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
YWRlb24vcmFkZW9uX3ByaW1lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
cHJpbWUuYwpAQCAtNzcsMTkgKzc3LDkgQEAgaW50IHJhZGVvbl9nZW1fcHJpbWVfcGluKHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCiAJLyogcGluIGJ1ZmZlciBpbnRvIEdUVCAqLwogCXJl
dCA9IHJhZGVvbl9ib19waW4oYm8sIFJBREVPTl9HRU1fRE9NQUlOX0dUVCwgTlVMTCk7Ci0JaWYg
KHVubGlrZWx5KHJldCkpCi0JCWdvdG8gZXJyb3I7Ci0KLQlpZiAoYm8tPnRiby5tb3ZpbmcpIHsK
LQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQoYm8tPnRiby5tb3ZpbmcsIGZhbHNlKTsKLQkJaWYgKHVu
bGlrZWx5KHJldCkpIHsKLQkJCXJhZGVvbl9ib191bnBpbihibyk7Ci0JCQlnb3RvIGVycm9yOwot
CQl9Ci0JfQotCi0JYm8tPnByaW1lX3NoYXJlZF9jb3VudCsrOwotZXJyb3I6CisJaWYgKGxpa2Vs
eShyZXQgPT0gMCkpCisJCWJvLT5wcmltZV9zaGFyZWRfY291bnQrKzsKKwogCXJhZGVvbl9ib191
bnJlc2VydmUoYm8pOwogCXJldHVybiByZXQ7CiB9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
