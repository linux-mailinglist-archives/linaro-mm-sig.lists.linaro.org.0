Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B4630E4D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 22:20:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 115EF60C30
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 21:20:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 065EF61081; Wed,  3 Feb 2021 21:20:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82EF4614FF;
	Wed,  3 Feb 2021 21:20:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 03AA060C30
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 21:20:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E033C614FF; Wed,  3 Feb 2021 21:20:00 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id 68D8B60C30
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 21:19:59 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id f16so1129430wmq.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 13:19:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0KFkS15Rzk/OuayxNy0U6nwvFrwjvOdNgW3QDiU+4sc=;
 b=Yejevlk4ePA82CKNMmFR2tbNp8erbyF+R6uhbez+juYH1ktfvEITRXsIOo2Duml6N+
 qIMnZU0zRB1Pac9FntLwe4StPuFvUlkVTddHg0SPjKsep+CnBYOzHVOej8UrQ2JGBrNV
 hTArvZKT+jye36Q8y6KRZTu+UHaAJPi1F+867vEOHf6YrwIctz9nMdh50Anav1klgMgw
 vP8+OZKwJvR2T25KONBHboTGua5M4jSUpezidiadLeQGRIOJoncpeAKqQsuq4Dx1Ikji
 1tK46TziWGazNL5fiPzYOosFwwWPzXW1NLG0dAx+7B+/qmxGlsAUvo0UKLKNZrZzLLNZ
 Vpkw==
X-Gm-Message-State: AOAM532OEvSj70eiw9JTaC8Q7BroB03XLQviGNlzPzu1kdxwILLrr88S
 uq/XvRONc3ec1kBBlEBSZgfocg==
X-Google-Smtp-Source: ABdhPJzmU+Or9jzYUxXpAPVaDeRxSWgaJEx85VA2rMsPqlZffUGrONNNs7GEJYIhtZkMGnZTZpPI4g==
X-Received: by 2002:a7b:c854:: with SMTP id c20mr4449864wml.127.1612387198566; 
 Wed, 03 Feb 2021 13:19:58 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j185sm4217399wma.1.2021.02.03.13.19.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 13:19:57 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed,  3 Feb 2021 22:19:48 +0100
Message-Id: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Jason Gunthorpe <jgg@ziepe.ca>,
 John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Require VM_SPECIAL vma for
	mmap
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

dGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0IG5vcm1hbCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlv
dSBjYW4gdXNlCnRoZW0gbGlrZSB0aGF0IChsaWtlIGNhbGxpbmcgZ2V0X3VzZXJfcGFnZXMgd29y
a3MsIG9yIHRoYXQgdGhleSdyZQphY2NvdW50aW5nIGxpa2UgYW55IG90aGVyIG5vcm1hbCBtZW1v
cnkpIGNhbm5vdCBiZSBndWFyYW50ZWVkLgoKU2luY2Ugc29tZSB1c2Vyc3BhY2Ugb25seSBydW5z
IG9uIGludGVncmF0ZWQgZGV2aWNlcywgd2hlcmUgYWxsCmJ1ZmZlcnMgYXJlIGFjdHVhbGx5IGFs
bCByZXNpZGVudCBzeXN0ZW0gbWVtb3J5LCB0aGVyZSdzIGEgaHVnZQp0ZW1wdGF0aW9uIHRvIGFz
c3VtZSB0aGF0IGEgc3RydWN0IHBhZ2UgaXMgYWx3YXlzIHByZXNlbnQgYW5kIHVzZWFibGUKbGlr
ZSBmb3IgYW55IG1vcmUgcGFnZWNhY2hlIGJhY2tlZCBtbWFwLiBUaGlzIGhhcyB0aGUgcG90ZW50
aWFsIHRvCnJlc3VsdCBpbiBhIHVhcGkgbmlnaHRtYXJlLgoKVG8gc3RvcCB0aGlzIGdhcCByZXF1
aXJlIHRoYXQgRE1BIGJ1ZmZlciBtbWFwcyBhcmUgVk1fU1BFQ0lBTCwgd2hpY2gKYmxvY2tzIGdl
dF91c2VyX3BhZ2VzIGFuZCBhbGwgdGhlIG90aGVyIHN0cnVjdCBwYWdlIGJhc2VkCmluZnJhc3Ry
dWN0dXJlIGZvciBldmVyeW9uZS4gSW4gc3Bpcml0IHRoaXMgaXMgdGhlIHVhcGkgY291bnRlcnBh
cnQgdG8KdGhlIGtlcm5lbC1pbnRlcm5hbCBDT05GSUdfRE1BQlVGX0RFQlVHLgoKTW90aXZhdGVk
IGJ5IGEgcmVjZW50IHBhdGNoIHdoaWNoIHdhbnRlZCB0byBzd2ljaCB0aGUgc3lzdGVtIGRtYS1i
dWYKaGVhcCB0byB2bV9pbnNlcnRfcGFnZSBpbnN0ZWFkIG9mIHZtX2luc2VydF9wZm4uCgpSZWZl
cmVuY2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sL0NBS01LN3VIaSttRzB6MEhVbU50
MTNRQ0N2dXR1UlZqcGNSME5qUkwxMmstV2JXemtSZ0BtYWlsLmdtYWlsLmNvbS8KQ2M6IEphc29u
IEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzogU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJA
Z29vZ2xlLmNvbT4KQ2M6IE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPgpDYzog
Sm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+ClNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogU3VtaXQgU2Vtd2FsIDxzdW1p
dC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwg
MTUgKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYwppbmRleCBmMjY0YjcwYzM4M2UuLmQzMDgxZmMwNzA1NiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jCkBAIC0xMjcsNiArMTI3LDcgQEAgc3RhdGljIHN0cnVjdCBmaWxlX3N5c3Rl
bV90eXBlIGRtYV9idWZfZnNfdHlwZSA9IHsKIHN0YXRpYyBpbnQgZG1hX2J1Zl9tbWFwX2ludGVy
bmFsKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKIHsKIAlz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOworCWludCByZXQ7CiAKIAlpZiAoIWlzX2RtYV9idWZfZmls
ZShmaWxlKSkKIAkJcmV0dXJuIC1FSU5WQUw7CkBAIC0xNDIsNyArMTQzLDExIEBAIHN0YXRpYyBp
bnQgZG1hX2J1Zl9tbWFwX2ludGVybmFsKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3Qgdm1fYXJl
YV9zdHJ1Y3QgKnZtYSkKIAkgICAgZG1hYnVmLT5zaXplID4+IFBBR0VfU0hJRlQpCiAJCXJldHVy
biAtRUlOVkFMOwogCi0JcmV0dXJuIGRtYWJ1Zi0+b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsKKwly
ZXQgPSBkbWFidWYtPm9wcy0+bW1hcChkbWFidWYsIHZtYSk7CisKKwlXQVJOX09OKCEodm1hLT52
bV9mbGFncyAmIFZNX1NQRUNJQUwpKTsKKworCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyBsb2Zm
X3QgZG1hX2J1Zl9sbHNlZWsoc3RydWN0IGZpbGUgKmZpbGUsIGxvZmZfdCBvZmZzZXQsIGludCB3
aGVuY2UpCkBAIC0xMjQ0LDYgKzEyNDksOCBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX2Vu
ZF9jcHVfYWNjZXNzKTsKIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
c3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJCSB1bnNpZ25lZCBsb25nIHBnb2ZmKQogewor
CWludCByZXQ7CisKIAlpZiAoV0FSTl9PTighZG1hYnVmIHx8ICF2bWEpKQogCQlyZXR1cm4gLUVJ
TlZBTDsKIApAQCAtMTI2NCw3ICsxMjcxLDExIEBAIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRt
YV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJdm1hX3NldF9maWxl
KHZtYSwgZG1hYnVmLT5maWxlKTsKIAl2bWEtPnZtX3Bnb2ZmID0gcGdvZmY7CiAKLQlyZXR1cm4g
ZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVmLCB2bWEpOworCXJldCA9IGRtYWJ1Zi0+b3BzLT5tbWFw
KGRtYWJ1Ziwgdm1hKTsKKworCVdBUk5fT04oISh2bWEtPnZtX2ZsYWdzICYgVk1fU1BFQ0lBTCkp
OworCisJcmV0dXJuIHJldDsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfbW1hcCk7CiAK
LS0gCjIuMzAuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
