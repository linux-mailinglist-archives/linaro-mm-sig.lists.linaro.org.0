Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C42C01EDFA1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:17:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB3CD61885
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:17:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D7C3E6189D; Thu,  4 Jun 2020 08:17:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15802618C8;
	Thu,  4 Jun 2020 08:13:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ED96360BF7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E1271616E2; Thu,  4 Jun 2020 08:12:44 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id ADC8560BF7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:40 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id e1so5052797wrt.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+tjBPalwpvfaI2TJsBD2Z0Z3ZUY/HUiWjYFdKsCw83k=;
 b=CxFIMlfg6vRpRGXh2ZpSEMXDjDDUN1JAm1tbfxjgf60xyJg0LSv1Gd/Y1SnAK7uglO
 hIIaq7V+7KQqndOdqHQPCebKDhON6JwCZxj73/PxnsMl/+OKQP+2VSFd6h3UO2ymevs5
 BxbY0oxAYZ6cJyoryDdALJgTno0lhf4ixYvxuTuPi5rMvWfCvJM+neRMMIRs3PQG5YS3
 xoIQIu8Ixj5rXlz2EbAypPqiPzq7rfhAsCPFgCJwrCKB2avJLV2yWjRHPb80pdmFLbSP
 dP6na6ouMUgYlHX15Npsj98F+tUv5lMMMeNJ5/5W5qMnsAsmi4ts6BMRcTnV4DPsjliy
 2B1Q==
X-Gm-Message-State: AOAM533WuJ3WM5iFnPBytqQAuU4YArIPtTi+0jxw5xA+T+9/lW6DMBbU
 BtP7kEuZKrEPTMgs8H+yLwr6Hg==
X-Google-Smtp-Source: ABdhPJwyNPXbNijhsqAaAQsM5v0tMhjUWaBKp4ap7N+trIcZ19JD/P6xXjcKeG1ExDIrDg6JX8QemA==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr3357789wrt.185.1591258359734; 
 Thu, 04 Jun 2020 01:12:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:12 +0200
Message-Id: <20200604081224.863494-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 06/18] drm/vblank: Annotate with dma-fence
	signalling section
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

VGhpcyBpcyByYXRoZXIgb3ZlcmtpbGwgc2luY2UgY3VycmVudGx5IGFsbCBkcml2ZXJzIGNhbGwg
dGhpcyBmcm9tCmhhcmRpcnEgKG9yIGF0IGxlYXN0IHRpbWVycykuIEJ1dCBtYXliZSBpbiB0aGUg
ZnV0dXJlIHdlJ3JlIGdvaW5nIHRvCmhhdmUgdGhyZWFkIGlycSBoYW5kbGVycyBhbmQgd2hhdCBu
b3QsIGRvZXNuJ3QgaHVydCB0byBiZSBwcmVwYXJlZC4KUGx1cyB0aGlzIGlzIGFuIGVhc3kgc3Rh
cnQgZm9yIHNwcmlua2xpbmcgdGhlc2UgZmVuY2UgYW5ub3RhdGlvbnMgaW50bwpzaGFyZWQgY29k
ZS4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fdmJsYW5rLmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV92Ymxhbmsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKaW5kZXggODVlNWYyZGIxNjA4Li45M2E1
YmJhNWY2NjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwpAQCAtMjQsNiArMjQsNyBAQAogICogT1RIRVIg
REVBTElOR1MgSU4gVEhFIFNPRlRXQVJFLgogICovCiAKKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVu
Y2UuaD4KICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGVw
YXJhbS5oPgogCkBAIC0xOTA4LDcgKzE5MDksNyBAQCBib29sIGRybV9oYW5kbGVfdmJsYW5rKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQogewogCXN0cnVjdCBkcm1f
dmJsYW5rX2NydGMgKnZibGFuayA9ICZkZXYtPnZibGFua1twaXBlXTsKIAl1bnNpZ25lZCBsb25n
IGlycWZsYWdzOwotCWJvb2wgZGlzYWJsZV9pcnE7CisJYm9vbCBkaXNhYmxlX2lycSwgZmVuY2Vf
Y29va2llOwogCiAJaWYgKGRybV9XQVJOX09OX09OQ0UoZGV2LCAhZHJtX2Rldl9oYXNfdmJsYW5r
KGRldikpKQogCQlyZXR1cm4gZmFsc2U7CkBAIC0xOTE2LDYgKzE5MTcsOCBAQCBib29sIGRybV9o
YW5kbGVfdmJsYW5rKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQog
CWlmIChkcm1fV0FSTl9PTihkZXYsIHBpcGUgPj0gZGV2LT5udW1fY3J0Y3MpKQogCQlyZXR1cm4g
ZmFsc2U7CiAKKwlmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOwor
CiAJc3Bpbl9sb2NrX2lycXNhdmUoJmRldi0+ZXZlbnRfbG9jaywgaXJxZmxhZ3MpOwogCiAJLyog
TmVlZCB0aW1lc3RhbXAgbG9jayB0byBwcmV2ZW50IGNvbmN1cnJlbnQgZXhlY3V0aW9uIHdpdGgK
QEAgLTE5MjgsNiArMTkzMSw3IEBAIGJvb2wgZHJtX2hhbmRsZV92Ymxhbmsoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHBpcGUpCiAJaWYgKCF2YmxhbmstPmVuYWJsZWQpIHsK
IAkJc3Bpbl91bmxvY2soJmRldi0+dmJsYW5rX3RpbWVfbG9jayk7CiAJCXNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJmRldi0+ZXZlbnRfbG9jaywgaXJxZmxhZ3MpOworCQlkbWFfZmVuY2VfZW5kX3Np
Z25hbGxpbmcoZmVuY2VfY29va2llKTsKIAkJcmV0dXJuIGZhbHNlOwogCX0KIApAQCAtMTk1Myw2
ICsxOTU3LDggQEAgYm9vbCBkcm1faGFuZGxlX3ZibGFuayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB1bnNpZ25lZCBpbnQgcGlwZSkKIAlpZiAoZGlzYWJsZV9pcnEpCiAJCXZibGFua19kaXNhYmxl
X2ZuKCZ2YmxhbmstPmRpc2FibGVfdGltZXIpOwogCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5n
KGZlbmNlX2Nvb2tpZSk7CisKIAlyZXR1cm4gdHJ1ZTsKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2hh
bmRsZV92YmxhbmspOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
