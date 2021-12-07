Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9C546BB66
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C5A061EB5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4072C61EAF; Tue,  7 Dec 2021 12:35:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84FC462C9E;
	Tue,  7 Dec 2021 12:35:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3784A62DC6
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E30066216D; Tue,  7 Dec 2021 12:34:46 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 0BCBD62CA0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:42 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id c4so29118200wrd.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=gbmJORdWFTlKxxvK7X3M8XQMp1KTxZM5H1KKK8r07Vo=;
 b=D40iYFgmEVwmrxxeFd+eiQP9lgOoeXjNyjZ76/AkBDfS7vRlO8/gojz/MhisRbJPBN
 6p5tj8wINL3FMgbEPFLwsjMPSQtmdmkJeCKG0oRJjyrSj4VVw5WSQTXzzsACApjm+mKF
 NHgcuHhCtWJqSh89jPMCnU94KS85erHU7HRS/p7N0KfJkEW8FbKJ9IN1oLUuVrsIunxU
 WTDDf6QRM+aMfhQEMTwwp8KO/WsKpSOe5l2YD11zx0xboCA7gYXRAe1qOXhyraOfUmE2
 CquzkID+ShqHiLujajslKD2xrT4wNt9ETq6PmlsLA8aBVwkH3PqpYw14+BOYG3Om4fdl
 U8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gbmJORdWFTlKxxvK7X3M8XQMp1KTxZM5H1KKK8r07Vo=;
 b=YfGlrzgHdnb48R6PpfqtK3rjYsx+2rg4aX07viorEH9qQIYdBFpuk2LI171aFjqPhQ
 qiOOLcUpbtFHqIZKknLMBUiUs1WCcIEo/bKBIDo6XstJFqBE0cOxt/e8qw48t9MWkEe9
 bxQ8n/tIvWZFK7XRozjyHGFYInDlKXLv4bLzuRY2TM/Sx5Gfy5SOW/VPv+nKz2kBxYts
 coPAXQGGrX2D7FPEKKu0dr/2B9J4l1er+CjKoXqvzOUPINfsTH6eawNzcxqJNygk+V5S
 STyBSY5oetaacp8JEuAAtDo/eSjl5kiZpfjkedGg0eBnCbW4MAAKGjzFZu7VIWjTtwqy
 DTvg==
X-Gm-Message-State: AOAM531DpY6JK6CtpKbMRpJzCk5k/V4F8eT2XvLlWW/k7O4rb5IguS62
 eLxvSzEEdvFlN5C1AnGZebU=
X-Google-Smtp-Source: ABdhPJzsvOjakge7Q2aJ3vV+UweZHczFmOCuSFOQgQ5ISW5R51JI7fM+hJ1q7P5Fnzx7QhHc1j484w==
X-Received: by 2002:adf:f990:: with SMTP id f16mr48998131wrr.128.1638880481759; 
 Tue, 07 Dec 2021 04:34:41 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:41 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:34:09 +0100
Message-Id: <20211207123411.167006-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 22/24] dma-buf: wait for map to complete for
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
bmRleCA0ODk2Yzg3NmZmZWMuLjMzMTI3YmQ1NmM2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCkBAIC0xMDIsMjEgKzEwMiw5IEBAIHN0YXRpYyBpbnQg
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
