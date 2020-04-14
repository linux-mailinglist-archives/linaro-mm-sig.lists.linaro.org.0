Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 522D31B6E09
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:20:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66A7C619BF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:20:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 56CA3619C1; Fri, 24 Apr 2020 06:20:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5649666FC;
	Fri, 24 Apr 2020 05:30:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CE27A616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BCD7B6604E; Tue, 14 Apr 2020 13:15:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id D810A616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:38 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLPK-00010M-Az; Tue, 14 Apr 2020 13:15:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Date: Tue, 14 Apr 2020 15:13:44 +0200
Message-Id: <20200414131348.444715-26-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414131348.444715-1-hch@lst.de>
References: <20200414131348.444715-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 25/29] mm: switch the test_vmalloc module to
	use __vmalloc_node
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

Tm8gbmVlZCB0byBleHBvcnQgdGhlIHZlcnkgbG93LWxldmVsIF9fdm1hbGxvY19ub2RlX3Jhbmdl
IHdoZW4gdGhlCnRlc3QgbW9kdWxlIGNhbiB1c2UgYSBzbGlnaHRseSBoaWdoZXIgbGV2ZWwgdmFy
aWFudC4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpBY2tl
ZC1ieTogUGV0ZXIgWmlqbHN0cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Ci0tLQog
bGliL3Rlc3Rfdm1hbGxvYy5jIHwgMjYgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KIG1tL3Zt
YWxsb2MuYyAgICAgICB8IDE3ICsrKysrKysrLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDE1
IGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2xpYi90ZXN0X3Zt
YWxsb2MuYyBiL2xpYi90ZXN0X3ZtYWxsb2MuYwppbmRleCA4YmJlZmNhZGRmZTguLmNkNmFlZjA1
ZGZiNCAxMDA2NDQKLS0tIGEvbGliL3Rlc3Rfdm1hbGxvYy5jCisrKyBiL2xpYi90ZXN0X3ZtYWxs
b2MuYwpAQCAtOTEsMTIgKzkxLDggQEAgc3RhdGljIGludCByYW5kb21fc2l6ZV9hbGlnbl9hbGxv
Y190ZXN0KHZvaWQpCiAJCSAqLwogCQlzaXplID0gKChybmQgJSAxMCkgKyAxKSAqIFBBR0VfU0la
RTsKIAotCQlwdHIgPSBfX3ZtYWxsb2Nfbm9kZV9yYW5nZShzaXplLCBhbGlnbiwKLQkJICAgVk1B
TExPQ19TVEFSVCwgVk1BTExPQ19FTkQsCi0JCSAgIEdGUF9LRVJORUwgfCBfX0dGUF9aRVJPLAot
CQkgICBQQUdFX0tFUk5FTCwKLQkJICAgMCwgMCwgX19idWlsdGluX3JldHVybl9hZGRyZXNzKDAp
KTsKLQorCQlwdHIgPSBfX3ZtYWxsb2Nfbm9kZShzaXplLCBhbGlnbiwgR0ZQX0tFUk5FTCB8IF9f
R0ZQX1pFUk8sCisJCQkJX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKIAkJaWYgKCFwdHIp
CiAJCQlyZXR1cm4gLTE7CiAKQEAgLTExOCwxMiArMTE0LDggQEAgc3RhdGljIGludCBhbGlnbl9z
aGlmdF9hbGxvY190ZXN0KHZvaWQpCiAJZm9yIChpID0gMDsgaSA8IEJJVFNfUEVSX0xPTkc7IGkr
KykgewogCQlhbGlnbiA9ICgodW5zaWduZWQgbG9uZykgMSkgPDwgaTsKIAotCQlwdHIgPSBfX3Zt
YWxsb2Nfbm9kZV9yYW5nZShQQUdFX1NJWkUsIGFsaWduLAotCQkJVk1BTExPQ19TVEFSVCwgVk1B
TExPQ19FTkQsCi0JCQlHRlBfS0VSTkVMIHwgX19HRlBfWkVSTywKLQkJCVBBR0VfS0VSTkVMLAot
CQkJMCwgMCwgX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKLQorCQlwdHIgPSBfX3ZtYWxs
b2Nfbm9kZShQQUdFX1NJWkUsIGFsaWduLCBHRlBfS0VSTkVMIHwgX19HRlBfWkVSTywKKwkJCQlf
X2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogCQlpZiAoIXB0cikKIAkJCXJldHVybiAtMTsK
IApAQCAtMTM5LDEzICsxMzEsOSBAQCBzdGF0aWMgaW50IGZpeF9hbGlnbl9hbGxvY190ZXN0KHZv
aWQpCiAJaW50IGk7CiAKIAlmb3IgKGkgPSAwOyBpIDwgdGVzdF9sb29wX2NvdW50OyBpKyspIHsK
LQkJcHRyID0gX192bWFsbG9jX25vZGVfcmFuZ2UoNSAqIFBBR0VfU0laRSwKLQkJCVRIUkVBRF9B
TElHTiA8PCAxLAotCQkJVk1BTExPQ19TVEFSVCwgVk1BTExPQ19FTkQsCi0JCQlHRlBfS0VSTkVM
IHwgX19HRlBfWkVSTywKLQkJCVBBR0VfS0VSTkVMLAotCQkJMCwgMCwgX19idWlsdGluX3JldHVy
bl9hZGRyZXNzKDApKTsKLQorCQlwdHIgPSBfX3ZtYWxsb2Nfbm9kZSg1ICogUEFHRV9TSVpFLCBU
SFJFQURfQUxJR04gPDwgMSwKKwkJCQlHRlBfS0VSTkVMIHwgX19HRlBfWkVSTywKKwkJCQlfX2J1
aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogCQlpZiAoIXB0cikKIAkJCXJldHVybiAtMTsKIApk
aWZmIC0tZ2l0IGEvbW0vdm1hbGxvYy5jIGIvbW0vdm1hbGxvYy5jCmluZGV4IGFlODI0OWVmNTgy
MS4uMzMzZmJlNzcyNTVhIDEwMDY0NAotLS0gYS9tbS92bWFsbG9jLmMKKysrIGIvbW0vdm1hbGxv
Yy5jCkBAIC0yNTIyLDE1ICsyNTIyLDYgQEAgdm9pZCAqX192bWFsbG9jX25vZGVfcmFuZ2UodW5z
aWduZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBsb25nIGFsaWduLAogCXJldHVybiBOVUxMOwogfQog
Ci0vKgotICogVGhpcyBpcyBvbmx5IGZvciBwZXJmb3JtYW5jZSBhbmFseXNpcyBvZiB2bWFsbG9j
IGFuZCBzdHJlc3MgcHVycG9zZS4KLSAqIEl0IGlzIHJlcXVpcmVkIGJ5IHZtYWxsb2MgdGVzdCBt
b2R1bGUsIHRoZXJlZm9yZSBkbyBub3QgdXNlIGl0IG90aGVyCi0gKiB0aGFuIHRoYXQuCi0gKi8K
LSNpZmRlZiBDT05GSUdfVEVTVF9WTUFMTE9DX01PRFVMRQotRVhQT1JUX1NZTUJPTF9HUEwoX192
bWFsbG9jX25vZGVfcmFuZ2UpOwotI2VuZGlmCi0KIC8qKgogICogX192bWFsbG9jX25vZGUgLSBh
bGxvY2F0ZSB2aXJ0dWFsbHkgY29udGlndW91cyBtZW1vcnkKICAqIEBzaXplOgkgICAgYWxsb2Nh
dGlvbiBzaXplCkBAIC0yNTU2LDYgKzI1NDcsMTQgQEAgdm9pZCAqX192bWFsbG9jX25vZGUodW5z
aWduZWQgbG9uZyBzaXplLCB1bnNpZ25lZCBsb25nIGFsaWduLAogCXJldHVybiBfX3ZtYWxsb2Nf
bm9kZV9yYW5nZShzaXplLCBhbGlnbiwgVk1BTExPQ19TVEFSVCwgVk1BTExPQ19FTkQsCiAJCQkJ
Z2ZwX21hc2ssIFBBR0VfS0VSTkVMLCAwLCBub2RlLCBjYWxsZXIpOwogfQorLyoKKyAqIFRoaXMg
aXMgb25seSBmb3IgcGVyZm9ybWFuY2UgYW5hbHlzaXMgb2Ygdm1hbGxvYyBhbmQgc3RyZXNzIHB1
cnBvc2UuCisgKiBJdCBpcyByZXF1aXJlZCBieSB2bWFsbG9jIHRlc3QgbW9kdWxlLCB0aGVyZWZv
cmUgZG8gbm90IHVzZSBpdCBvdGhlcgorICogdGhhbiB0aGF0LgorICovCisjaWZkZWYgQ09ORklH
X1RFU1RfVk1BTExPQ19NT0RVTEUKK0VYUE9SVF9TWU1CT0xfR1BMKF9fdm1hbGxvY19ub2RlKTsK
KyNlbmRpZgogCiB2b2lkICpfX3ZtYWxsb2ModW5zaWduZWQgbG9uZyBzaXplLCBnZnBfdCBnZnBf
bWFzaykKIHsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
