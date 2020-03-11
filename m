Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D651180EB5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 04:45:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB10365FC2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 03:45:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B6DDF65FD1; Wed, 11 Mar 2020 03:45:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EA1765FC3;
	Wed, 11 Mar 2020 03:44:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E01365FCC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 03:44:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6FF0465FCD; Wed, 11 Mar 2020 03:44:17 +0000 (UTC)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by lists.linaro.org (Postfix) with ESMTPS id 09C1465FCC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 03:44:08 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id z5so498819pfn.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2020 20:44:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P16W7ep8HpZEZbf2VCVYHJ7H+KUUPSbN1YkIr+6sSlQ=;
 b=pep7aZeCzY/C/P7Ysq2uOukWYT8JsqvJVck0UjJocTa8ylXEyM3sW+VPWKMpka25XB
 iD8YzbEf0Kdi9ZHTcp5oyf0OYJBe00qFszaW/FdhLwPgmhaKgepgrwdwk6/zhho5IfeH
 z9Px31nyeP/3/Xchho1fCBFnk3sXK0IN/GvB5ltO0p/UfeySeMhsdQ4+noIpKbry1E+j
 o82EKokj3Yh14tAbb5noekwOGDXAQks+SVA8JdsrAks0fMx5JG7e+YNLgpI/3Wc5/oUJ
 sL1fLyOuZpqSUT8gZrK74iUm1dtUG/CTHFewRkDC9kZdECyH25Oifck0i2ejfQaF2mbq
 3YeA==
X-Gm-Message-State: ANhLgQ2R/5T4okt3JZhvj1msMIT8oHlE7u6156f8F4fLTpOjiKxfJXaH
 acoaFiiqt5KtaCbk1BAmswB3Wg==
X-Google-Smtp-Source: ADFU+vuNjXuDPqhg8zCHX7akIbl+E1cdU/rjV0v8i4t9fu91z6NCzwwYTmCz8DLIFQqRHKFy7riJrw==
X-Received: by 2002:a63:7e1a:: with SMTP id z26mr900050pgc.226.1583898247079; 
 Tue, 10 Mar 2020 20:44:07 -0700 (PDT)
Received: from omlet.com ([2605:6000:1026:c273::ce4])
 by smtp.gmail.com with ESMTPSA id bb13sm3650846pjb.43.2020.03.10.20.44.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 20:44:06 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: 
Date: Tue, 10 Mar 2020 22:43:46 -0500
Message-Id: <20200311034351.1275197-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200303190318.522103-1-jason@jlekstrand.net>
References: <20200303190318.522103-1-jason@jlekstrand.net>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Richard Fontana <rfontana@redhat.com>,
 Jason Ekstrand <jason@jlekstrand.net>, jessehall@google.com,
 jajones@nvidia.com, Greg Hackmann <ghackmann@google.com>,
 Gustavo Padovan <gustavo@padovan.org>, airlied@redhat.com,
 linux-media@vger.kernel.org, daniels@collabora.com,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Chenbo Feng <fengc@google.com>, linaro-mm-sig@lists.linaro.org,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-kernel@vger.kernel.org, hoegsberg@google.com, bas@basnieuwenhuizen.nl,
 christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 1/3] dma-buf: add dma_fence_array_for_each
	(v2)
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

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+
CgpBZGQgYSBoZWxwZXIgdG8gaXRlcmF0ZSBvdmVyIGFsbCBmZW5jZXMgaW4gYSBkbWFfZmVuY2Vf
YXJyYXkgb2JqZWN0LgoKdjIgKEphc29uIEVrc3RyYW5kKQogLSBSZXR1cm4gTlVMTCBmcm9tIGRt
YV9mZW5jZV9hcnJheV9maXJzdCBpZiBoZWFkID09IE5VTEwuICBUaGlzIG1hdGNoZXMKICAgdGhl
IGl0ZXJhdG9yIGJlaGF2aW9yIG9mIGRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaCBpbiB0aGF0IGl0
IGl0ZXJhdGVzCiAgIHplcm8gdGltZXMgaWYgaGVhZCA9PSBOVUxMLgogLSBSZXR1cm4gTlVMTCBm
cm9tIGRtYV9mZW5jZV9hcnJheV9uZXh0IGlmIGluZGV4ID4gYXJyYXktPm51bV9mZW5jZXMuCgpT
aWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Ci0tLQog
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgMjcgKysrKysrKysrKysrKysrKysr
KysrKysrKysrCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oICAgfCAxNyArKysrKysr
KysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS1hcnJheS5jCmluZGV4IGQzZmJkOTUwYmU5NC4uMmFjMWFmYzY5N2QwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS1hcnJheS5jCkBAIC0yMDEsMyArMjAxLDMwIEBAIGJvb2wgZG1hX2ZlbmNl
X21hdGNoX2NvbnRleHQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHU2NCBjb250ZXh0KQogCXJl
dHVybiB0cnVlOwogfQogRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfbWF0Y2hfY29udGV4dCk7CisK
K3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hcnJheV9maXJzdChzdHJ1Y3QgZG1hX2ZlbmNl
ICpoZWFkKQoreworCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5OworCisJaWYgKCFoZWFk
KQorCQlyZXR1cm4gTlVMTDsKKworCWFycmF5ID0gdG9fZG1hX2ZlbmNlX2FycmF5KGhlYWQpOwor
CWlmICghYXJyYXkpCisJCXJldHVybiBoZWFkOworCisJcmV0dXJuIGFycmF5LT5mZW5jZXNbMF07
Cit9CitFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9hcnJheV9maXJzdCk7CisKK3N0cnVjdCBkbWFf
ZmVuY2UgKmRtYV9mZW5jZV9hcnJheV9uZXh0KHN0cnVjdCBkbWFfZmVuY2UgKmhlYWQsCisJCQkJ
ICAgICAgIHVuc2lnbmVkIGludCBpbmRleCkKK3sKKwlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICph
cnJheSA9IHRvX2RtYV9mZW5jZV9hcnJheShoZWFkKTsKKworCWlmICghYXJyYXkgfHwgaW5kZXgg
Pj0gYXJyYXktPm51bV9mZW5jZXMpCisJCXJldHVybiBOVUxMOworCisJcmV0dXJuIGFycmF5LT5m
ZW5jZXNbaW5kZXhdOworfQorRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfYXJyYXlfbmV4dCk7CmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UtYXJyYXkuaAppbmRleCAzMDNkZDcxMjIyMGYuLjU4OGFjODA4OWRkNiAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaAorKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1hcnJheS5oCkBAIC03NCw2ICs3NCwxOSBAQCB0b19kbWFfZmVuY2VfYXJy
YXkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCiAJcmV0dXJuIGNvbnRhaW5lcl9vZihmZW5jZSwg
c3RydWN0IGRtYV9mZW5jZV9hcnJheSwgYmFzZSk7CiB9CiAKKy8qKgorICogZG1hX2ZlbmNlX2Fy
cmF5X2Zvcl9lYWNoIC0gaXRlcmF0ZSBvdmVyIGFsbCBmZW5jZXMgaW4gYXJyYXkKKyAqIEBmZW5j
ZTogY3VycmVudCBmZW5jZQorICogQGluZGV4OiBpbmRleCBpbnRvIHRoZSBhcnJheQorICogQGhl
YWQ6IHBvdGVudGlhbCBkbWFfZmVuY2VfYXJyYXkgb2JqZWN0CisgKgorICogVGVzdCBpZiBAYXJy
YXkgaXMgYSBkbWFfZmVuY2VfYXJyYXkgb2JqZWN0IGFuZCBpZiB5ZXMgaXRlcmF0ZSBvdmVyIGFs
bCBmZW5jZXMKKyAqIGluIHRoZSBhcnJheS4gSWYgbm90IGp1c3QgaXRlcmF0ZSBvdmVyIHRoZSBm
ZW5jZSBpbiBAYXJyYXkgaXRzZWxmLgorICovCisjZGVmaW5lIGRtYV9mZW5jZV9hcnJheV9mb3Jf
ZWFjaChmZW5jZSwgaW5kZXgsIGhlYWQpCQkJXAorCWZvciAoaW5kZXggPSAwLCBmZW5jZSA9IGRt
YV9mZW5jZV9hcnJheV9maXJzdChoZWFkKTsgZmVuY2U7CVwKKwkgICAgICsrKGluZGV4KSwgZmVu
Y2UgPSBkbWFfZmVuY2VfYXJyYXlfbmV4dChoZWFkLCBpbmRleCkpCisKIHN0cnVjdCBkbWFfZmVu
Y2VfYXJyYXkgKmRtYV9mZW5jZV9hcnJheV9jcmVhdGUoaW50IG51bV9mZW5jZXMsCiAJCQkJCSAg
ICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzLAogCQkJCQkgICAgICAgdTY0IGNvbnRleHQs
IHVuc2lnbmVkIHNlcW5vLApAQCAtODEsNCArOTQsOCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5
ICpkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGludCBudW1fZmVuY2VzLAogCiBib29sIGRtYV9mZW5j
ZV9tYXRjaF9jb250ZXh0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCB1NjQgY29udGV4dCk7CiAK
K3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hcnJheV9maXJzdChzdHJ1Y3QgZG1hX2ZlbmNl
ICpoZWFkKTsKK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hcnJheV9uZXh0KHN0cnVjdCBk
bWFfZmVuY2UgKmhlYWQsCisJCQkJICAgICAgIHVuc2lnbmVkIGludCBpbmRleCk7CisKICNlbmRp
ZiAvKiBfX0xJTlVYX0RNQV9GRU5DRV9BUlJBWV9IICovCi0tIAoyLjI0LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
