Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 604BDE8601
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 11:44:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E0CD6194B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 10:44:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6E67D6195D; Tue, 29 Oct 2019 10:44:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D2F861989;
	Tue, 29 Oct 2019 10:41:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 732C060ED1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 10:41:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 62AF261963; Tue, 29 Oct 2019 10:41:01 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 4482E6194B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 10:40:57 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id w9so1815761wmm.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 03:40:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EZZU5bRYdYPxvxkSBZwgeMdYqb5VQhKicOFsE9+pkSY=;
 b=pcoLs4hz7FnMu/sWYTVpfVUAz64lWC4eXASx97NozpFFrz/V2/DWpHj+k/65/MGcsC
 GkrPT4iETybQGOnLm7c676ACudGqBnBmBGregNZaelIH1XCW0/B3sISzZJ6wUdu+rNE8
 LkzXaQOYV6ZWTL7mUoM5F99oj5+0H7MpIxkY9qc/asEE3SV0Gh7RYbTf+ZUf/+LaGjza
 D4pn8fWhgQn89RuSoW5qJquiuv4ilZuncO6YKZ6fPDo5EHev+lN2xJRIW/wY7xwM+zcx
 qkQw6LQ5o7kEhPVTVIGVrJBIHL5UC1q+XxpmkCek4LpxVL9AWEDRFX/lWZ+8MTMhDbvj
 1oPg==
X-Gm-Message-State: APjAAAVNnhMgud61qWBDFJEMH/7tMG8Td/49tQyCKFs8SzCiNqCIqMoq
 tjLVCf1ObLQ0eKc2hPENm2w=
X-Google-Smtp-Source: APXvYqxOu+hFqNuLcI9KSzwSAHPMqQVYZfk3AOs6kdG9rEF6QoxKiO5ihOtgGXhcYFTY4wmJpNflTA==
X-Received: by 2002:a1c:8055:: with SMTP id b82mr3524726wmd.176.1572345656392; 
 Tue, 29 Oct 2019 03:40:56 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:c5d9:7998:9ca6:452])
 by smtp.gmail.com with ESMTPSA id v10sm2910210wmg.48.2019.10.29.03.40.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 03:40:55 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 11:40:49 +0100
Message-Id: <20191029104049.9011-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029104049.9011-1-christian.koenig@amd.com>
References: <20191029104049.9011-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 5/5] drm/amdgpu: implement
	amdgpu_gem_prime_move_notify
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

SW1wbGVtZW50IHRoZSBpbXBvcnRlciBzaWRlIG9mIHVucGlubmVkIERNQS1idWYgaGFuZGxpbmcu
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDI4
ICsrKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X29iamVjdC5jICB8ICA2ICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9i
dWYuYwppbmRleCAzNjI5Y2ZlNTNhYWQuLmFmMzk1NTNjNTFhZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCkBAIC00NTYsNyArNDU2LDMzIEBAIGFtZGdw
dV9kbWFfYnVmX2NyZWF0ZV9vYmooc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRtYV9i
dWYgKmRtYV9idWYpCiAJcmV0dXJuIEVSUl9QVFIocmV0KTsKIH0KIAorLyoqCisgKiBhbWRncHVf
ZG1hX2J1Zl9tb3ZlX25vdGlmeSAtICZhdHRhY2gubW92ZV9ub3RpZnkgaW1wbGVtZW50YXRpb24K
KyAqCisgKiBAYXR0YWNoOiB0aGUgRE1BLWJ1ZiBhdHRhY2htZW50CisgKgorICogSW52YWxpZGF0
ZSB0aGUgRE1BLWJ1ZiBhdHRhY2htZW50LCBtYWtpbmcgc3VyZSB0aGF0IHRoZSB3ZSByZS1jcmVh
dGUgdGhlCisgKiBtYXBwaW5nIGJlZm9yZSB0aGUgbmV4dCB1c2UuCisgKi8KK3N0YXRpYyB2b2lk
CithbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2gpCit7CisJc3RydWN0IHR0bV9vcGVyYXRpb25fY3R4IGN0eCA9IHsgZmFsc2UsIGZhbHNl
IH07CisJc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBhdHRhY2gtPmltcG9ydGVyX3ByaXY7
CisJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7CisJc3RydWN0
IHR0bV9wbGFjZW1lbnQgcGxhY2VtZW50ID0ge307CisJaW50IHI7CisKKwlpZiAoYm8tPnRiby5t
ZW0ubWVtX3R5cGUgPT0gVFRNX1BMX1NZU1RFTSkKKwkJcmV0dXJuOworCisJciA9IHR0bV9ib192
YWxpZGF0ZSgmYm8tPnRibywgJnBsYWNlbWVudCwgJmN0eCk7CisJaWYgKHIpCisJCURSTV9FUlJP
UigiRmFpbGVkIHRvIGludmFsaWRhdGUgRE1BLWJ1ZiBpbXBvcnQgKCVkKSlcbiIsIHIpOworfQor
CiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyBhbWRncHVfZG1hX2J1Zl9h
dHRhY2hfb3BzID0geworCS5tb3ZlX25vdGlmeSA9IGFtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5
CiB9OwogCiAvKioKQEAgLTQ5Miw3ICs1MTgsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmFt
ZGdwdV9nZW1fcHJpbWVfaW1wb3J0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCXJldHVybiBv
Ymo7CiAKIAlhdHRhY2ggPSBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKGRtYV9idWYsIGRldi0+ZGV2
LAotCQkJCQkmYW1kZ3B1X2RtYV9idWZfYXR0YWNoX29wcywgTlVMTCk7CisJCQkJCSZhbWRncHVf
ZG1hX2J1Zl9hdHRhY2hfb3BzLCBvYmopOwogCWlmIChJU19FUlIoYXR0YWNoKSkgewogCQlkcm1f
Z2VtX29iamVjdF9wdXQob2JqKTsKIAkJcmV0dXJuIEVSUl9DQVNUKGF0dGFjaCk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMKaW5kZXggYWM3NzZkMjYyMGViLi5j
ZmE0NjM0MWM5YTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0
LmMKQEAgLTg2MSw2ICs4NjEsOSBAQCBpbnQgYW1kZ3B1X2JvX3Bpbl9yZXN0cmljdGVkKHN0cnVj
dCBhbWRncHVfYm8gKmJvLCB1MzIgZG9tYWluLAogCQlyZXR1cm4gMDsKIAl9CiAKKwlpZiAoYm8t
PnRiby5iYXNlLmltcG9ydF9hdHRhY2gpCisJCWRtYV9idWZfcGluKGJvLT50Ym8uYmFzZS5pbXBv
cnRfYXR0YWNoKTsKKwogCWJvLT5mbGFncyB8PSBBTURHUFVfR0VNX0NSRUFURV9WUkFNX0NPTlRJ
R1VPVVM7CiAJLyogZm9yY2UgdG8gcGluIGludG8gdmlzaWJsZSB2aWRlbyByYW0gKi8KIAlpZiAo
IShiby0+ZmxhZ3MgJiBBTURHUFVfR0VNX0NSRUFURV9OT19DUFVfQUNDRVNTKSkKQEAgLTk0NCw2
ICs5NDcsOSBAQCBpbnQgYW1kZ3B1X2JvX3VucGluKHN0cnVjdCBhbWRncHVfYm8gKmJvKQogCiAJ
YW1kZ3B1X2JvX3N1YnRyYWN0X3Bpbl9zaXplKGJvKTsKIAorCWlmIChiby0+dGJvLmJhc2UuaW1w
b3J0X2F0dGFjaCkKKwkJZG1hX2J1Zl91bnBpbihiby0+dGJvLmJhc2UuaW1wb3J0X2F0dGFjaCk7
CisKIAlmb3IgKGkgPSAwOyBpIDwgYm8tPnBsYWNlbWVudC5udW1fcGxhY2VtZW50OyBpKyspIHsK
IAkJYm8tPnBsYWNlbWVudHNbaV0ubHBmbiA9IDA7CiAJCWJvLT5wbGFjZW1lbnRzW2ldLmZsYWdz
ICY9IH5UVE1fUExfRkxBR19OT19FVklDVDsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
