Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4261B6DAF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:00:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E4AA619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:00:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F15860E25; Fri, 24 Apr 2020 06:00:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EF0A665C3;
	Fri, 24 Apr 2020 05:30:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6F58461999
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 620076604B; Tue, 14 Apr 2020 13:14:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id E68FE61999
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:32 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLO9-0006Mm-NN; Tue, 14 Apr 2020 13:14:06 +0000
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
Date: Tue, 14 Apr 2020 15:13:23 +0200
Message-Id: <20200414131348.444715-5-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 04/29] staging: media: ipu3: use vmap
	instead of reimplementing it
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

SnVzdCB1c2Ugdm1hcCBpbnN0ZWFkIG9mIG1lc3Npbmcgd2l0aCB2bWFsbG9jIGludGVybmFscy4K
ClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpBY2tlZC1ieTog
UGV0ZXIgWmlqbHN0cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Ci0tLQogZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2lwdTMvaXB1My1jc3MtcG9vbC5oIHwgIDQgKy0tCiBkcml2ZXJzL3N0
YWdpbmcvbWVkaWEvaXB1My9pcHUzLWRtYW1hcC5jICAgfCAzMCArKysrKystLS0tLS0tLS0tLS0t
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lwdTMvaXB1My1jc3MtcG9vbC5oIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2lwdTMvaXB1My1jc3MtcG9vbC5oCmluZGV4IGY0YTYwYjQx
NDAxYi4uYThjY2Q0ZjcwMzIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1
My9pcHUzLWNzcy1wb29sLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lwdTMvaXB1My1j
c3MtcG9vbC5oCkBAIC0xNSwxNCArMTUsMTIgQEAgc3RydWN0IGltZ3VfZGV2aWNlOwogICogQHNp
emU6CQlzaXplIG9mIHRoZSBidWZmZXIgaW4gYnl0ZXMuCiAgKiBAdmFkZHI6CQlrZXJuZWwgdmly
dHVhbCBhZGRyZXNzLgogICogQGRhZGRyOgkJaW92YSBkbWEgYWRkcmVzcyB0byBhY2Nlc3MgSVBV
My4KLSAqIEB2bWE6CQlwcml2YXRlLCBhIHBvaW50ZXIgdG8gJnN0cnVjdCB2bV9zdHJ1Y3QsCi0g
KgkJCXVzZWQgZm9yIGltZ3VfZG1hbWFwX2ZyZWUuCiAgKi8KIHN0cnVjdCBpbWd1X2Nzc19tYXAg
ewogCXNpemVfdCBzaXplOwogCXZvaWQgKnZhZGRyOwogCWRtYV9hZGRyX3QgZGFkZHI7Ci0Jc3Ry
dWN0IHZtX3N0cnVjdCAqdm1hOworCXN0cnVjdCBwYWdlICoqcGFnZXM7CiB9OwogCiAvKioKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtZG1hbWFwLmMgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9pcHUzLWRtYW1hcC5jCmluZGV4IDc0MzEzMjIzNzlmNi4u
OGExOWIwMDI0MTUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9pcHUz
LWRtYW1hcC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL2lwdTMtZG1hbWFwLmMK
QEAgLTk2LDYgKzk2LDcgQEAgdm9pZCAqaW1ndV9kbWFtYXBfYWxsb2Moc3RydWN0IGltZ3VfZGV2
aWNlICppbWd1LCBzdHJ1Y3QgaW1ndV9jc3NfbWFwICptYXAsCiAJdW5zaWduZWQgbG9uZyBzaGlm
dCA9IGlvdmFfc2hpZnQoJmltZ3UtPmlvdmFfZG9tYWluKTsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSAmaW1ndS0+cGNpX2Rldi0+ZGV2OwogCXNpemVfdCBzaXplID0gUEFHRV9BTElHTihsZW4pOwor
CWludCBjb3VudCA9IHNpemUgPj4gUEFHRV9TSElGVDsKIAlzdHJ1Y3QgcGFnZSAqKnBhZ2VzOwog
CWRtYV9hZGRyX3QgaW92YWRkcjsKIAlzdHJ1Y3QgaW92YSAqaW92YTsKQEAgLTExNCw3ICsxMTUs
NyBAQCB2b2lkICppbWd1X2RtYW1hcF9hbGxvYyhzdHJ1Y3QgaW1ndV9kZXZpY2UgKmltZ3UsIHN0
cnVjdCBpbWd1X2Nzc19tYXAgKm1hcCwKIAogCS8qIENhbGwgSU9NTVUgZHJpdmVyIHRvIHNldHVw
IHBndCAqLwogCWlvdmFkZHIgPSBpb3ZhX2RtYV9hZGRyKCZpbWd1LT5pb3ZhX2RvbWFpbiwgaW92
YSk7Ci0JZm9yIChpID0gMDsgaSA8IHNpemUgLyBQQUdFX1NJWkU7ICsraSkgeworCWZvciAoaSA9
IDA7IGkgPCBjb3VudDsgKytpKSB7CiAJCXJ2YWwgPSBpbWd1X21tdV9tYXAoaW1ndS0+bW11LCBp
b3ZhZGRyLAogCQkJCSAgICBwYWdlX3RvX3BoeXMocGFnZXNbaV0pLCBQQUdFX1NJWkUpOwogCQlp
ZiAocnZhbCkKQEAgLTEyMywzMyArMTI0LDIzIEBAIHZvaWQgKmltZ3VfZG1hbWFwX2FsbG9jKHN0
cnVjdCBpbWd1X2RldmljZSAqaW1ndSwgc3RydWN0IGltZ3VfY3NzX21hcCAqbWFwLAogCQlpb3Zh
ZGRyICs9IFBBR0VfU0laRTsKIAl9CiAKLQkvKiBOb3cgZ3JhYiBhIHZpcnR1YWwgcmVnaW9uICov
Ci0JbWFwLT52bWEgPSBfX2dldF92bV9hcmVhKHNpemUsIFZNX1VTRVJNQVAsIFZNQUxMT0NfU1RB
UlQsIFZNQUxMT0NfRU5EKTsKLQlpZiAoIW1hcC0+dm1hKQorCW1hcC0+dmFkZHIgPSB2bWFwKHBh
Z2VzLCBjb3VudCwgVk1fVVNFUk1BUCwgUEFHRV9LRVJORUwpOworCWlmICghbWFwLT52YWRkcikK
IAkJZ290byBvdXRfdW5tYXA7CiAKLQltYXAtPnZtYS0+cGFnZXMgPSBwYWdlczsKLQkvKiBBbmQg
bWFwIGl0IGluIEtWQSAqLwotCWlmIChtYXBfdm1fYXJlYShtYXAtPnZtYSwgUEFHRV9LRVJORUws
IHBhZ2VzKSkKLQkJZ290byBvdXRfdnVubWFwOwotCisJbWFwLT5wYWdlcyA9IHBhZ2VzOwogCW1h
cC0+c2l6ZSA9IHNpemU7CiAJbWFwLT5kYWRkciA9IGlvdmFfZG1hX2FkZHIoJmltZ3UtPmlvdmFf
ZG9tYWluLCBpb3ZhKTsKLQltYXAtPnZhZGRyID0gbWFwLT52bWEtPmFkZHI7CiAKIAlkZXZfZGJn
KGRldiwgIiVzOiBhbGxvY2F0ZWQgJXp1IEAgSU9WQSAlcGFkIEAgVkEgJXBcbiIsIF9fZnVuY19f
LAotCQlzaXplLCAmbWFwLT5kYWRkciwgbWFwLT52bWEtPmFkZHIpOwotCi0JcmV0dXJuIG1hcC0+
dm1hLT5hZGRyOworCQlzaXplLCAmbWFwLT5kYWRkciwgbWFwLT52YWRkcik7CiAKLW91dF92dW5t
YXA6Ci0JdnVubWFwKG1hcC0+dm1hLT5hZGRyKTsKKwlyZXR1cm4gbWFwLT52YWRkcjsKIAogb3V0
X3VubWFwOgogCWltZ3VfZG1hbWFwX2ZyZWVfYnVmZmVyKHBhZ2VzLCBzaXplKTsKIAlpbWd1X21t
dV91bm1hcChpbWd1LT5tbXUsIGlvdmFfZG1hX2FkZHIoJmltZ3UtPmlvdmFfZG9tYWluLCBpb3Zh
KSwKIAkJICAgICAgIGkgKiBQQUdFX1NJWkUpOwotCW1hcC0+dm1hID0gTlVMTDsKIAogb3V0X2Zy
ZWVfaW92YToKIAlfX2ZyZWVfaW92YSgmaW1ndS0+aW92YV9kb21haW4sIGlvdmEpOwpAQCAtMTc3
LDggKzE2OCw2IEBAIHZvaWQgaW1ndV9kbWFtYXBfdW5tYXAoc3RydWN0IGltZ3VfZGV2aWNlICpp
bWd1LCBzdHJ1Y3QgaW1ndV9jc3NfbWFwICptYXApCiAgKi8KIHZvaWQgaW1ndV9kbWFtYXBfZnJl
ZShzdHJ1Y3QgaW1ndV9kZXZpY2UgKmltZ3UsIHN0cnVjdCBpbWd1X2Nzc19tYXAgKm1hcCkKIHsK
LQlzdHJ1Y3Qgdm1fc3RydWN0ICphcmVhID0gbWFwLT52bWE7Ci0KIAlkZXZfZGJnKCZpbWd1LT5w
Y2lfZGV2LT5kZXYsICIlczogZnJlZWluZyAlenUgQCBJT1ZBICVwYWQgQCBWQSAlcFxuIiwKIAkJ
X19mdW5jX18sIG1hcC0+c2l6ZSwgJm1hcC0+ZGFkZHIsIG1hcC0+dmFkZHIpOwogCkBAIC0xODcs
MTEgKzE3Niw4IEBAIHZvaWQgaW1ndV9kbWFtYXBfZnJlZShzdHJ1Y3QgaW1ndV9kZXZpY2UgKmlt
Z3UsIHN0cnVjdCBpbWd1X2Nzc19tYXAgKm1hcCkKIAogCWltZ3VfZG1hbWFwX3VubWFwKGltZ3Us
IG1hcCk7CiAKLQlpZiAoV0FSTl9PTighYXJlYSkgfHwgV0FSTl9PTighYXJlYS0+cGFnZXMpKQot
CQlyZXR1cm47Ci0KLQlpbWd1X2RtYW1hcF9mcmVlX2J1ZmZlcihhcmVhLT5wYWdlcywgbWFwLT5z
aXplKTsKIAl2dW5tYXAobWFwLT52YWRkcik7CisJaW1ndV9kbWFtYXBfZnJlZV9idWZmZXIobWFw
LT5wYWdlcywgbWFwLT5zaXplKTsKIAltYXAtPnZhZGRyID0gTlVMTDsKIH0KIAotLSAKMi4yNS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
