Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A851B6DC6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:05:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C77B619E9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:05:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0FCCB6601E; Fri, 24 Apr 2020 06:05:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CBB2665EE;
	Fri, 24 Apr 2020 05:30:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B196361997
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 809DE66048; Tue, 14 Apr 2020 13:14:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 8DB916604B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:53 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOY-0006i4-0d; Tue, 14 Apr 2020 13:14:30 +0000
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
Date: Tue, 14 Apr 2020 15:13:30 +0200
Message-Id: <20200414131348.444715-12-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 11/29] mm: only allow page table mappings
	for built-in zsmalloc
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

VGhpcyBhbGxvd3MgdG8gdW5leHBvcnQgbWFwX3ZtX2FyZWEgYW5kIHVubWFwX2tlcm5lbF9yYW5n
ZSwgd2hpY2ggYXJlCnJhdGhlciBkZWVwIGludGVybmFsIGFuZCBzaG91bGQgbm90IGJlIGF2YWls
YWJsZSB0byBtb2R1bGVzLCBhcyB0aGV5IGZvcgpleGFtcGxlIGFsbG93IGZpbmUgZ3JhaW5lZCBj
b250cm9sIG9mIG1hcHBpbmcgcGVybWlzc2lvbnMsIGFuZCBhbHNvCmFsbG93IHNwbGl0dGluZyB0
aGUgc2V0dXAgb2YgYSB2bWFsbG9jIGFyZWEgYW5kIHRoZSBhY3R1YWwgbWFwcGluZyBhbmQKdGh1
cyBleHBvc2Ugdm1hbGxvYyBpbnRlcm5hbHMuCgp6c21hbGxvYyBpcyB0eXBpY2FsbHkgYnVpbHQt
aW4gYW5kIGNvbnRpbnVlcyB0byB3b3JrIChqdXN0IGxpa2UgdGhlCnBlcmNwdS12bSBjb2RlIHVz
aW5nIGEgc2ltaWxhciBwYXR0ZXIpLCB3aGlsZSBtb2R1bGFyIHpzbWFsbG9jIGFsc28KY29udGlu
dWVzIHRvIHdvcmssIGJ1dCBtdXN0IHVzZSBjb3BpZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rv
cGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KQWNrZWQtYnk6IFBldGVyIFppamxzdHJhIChJbnRlbCkg
PHBldGVyekBpbmZyYWRlYWQub3JnPgotLS0KIG1tL0tjb25maWcgICB8IDIgKy0KIG1tL3ZtYWxs
b2MuYyB8IDIgLS0KIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvbW0vS2NvbmZpZyBiL21tL0tjb25maWcKaW5kZXggMDlhOWVkZmI4
NDYxLi41YzAzNjJiZDhkNTYgMTAwNjQ0Ci0tLSBhL21tL0tjb25maWcKKysrIGIvbW0vS2NvbmZp
ZwpAQCAtNzA3LDcgKzcwNyw3IEBAIGNvbmZpZyBaU01BTExPQwogCiBjb25maWcgWlNNQUxMT0Nf
UEdUQUJMRV9NQVBQSU5HCiAJYm9vbCAiVXNlIHBhZ2UgdGFibGUgbWFwcGluZyB0byBhY2Nlc3Mg
b2JqZWN0IGluIHpzbWFsbG9jIgotCWRlcGVuZHMgb24gWlNNQUxMT0MKKwlkZXBlbmRzIG9uIFpT
TUFMTE9DPXkKIAloZWxwCiAJICBCeSBkZWZhdWx0LCB6c21hbGxvYyB1c2VzIGEgY29weS1iYXNl
ZCBvYmplY3QgbWFwcGluZyBtZXRob2QgdG8KIAkgIGFjY2VzcyBhbGxvY2F0aW9ucyB0aGF0IHNw
YW4gdHdvIHBhZ2VzLiBIb3dldmVyLCBpZiBhIHBhcnRpY3VsYXIKZGlmZiAtLWdpdCBhL21tL3Zt
YWxsb2MuYyBiL21tL3ZtYWxsb2MuYwppbmRleCAzMzc1Zjk1MDhlZjYuLjkxODNmYzBkMzY1YSAx
MDA2NDQKLS0tIGEvbW0vdm1hbGxvYy5jCisrKyBiL21tL3ZtYWxsb2MuYwpAQCAtMjA0Niw3ICsy
MDQ2LDYgQEAgdm9pZCB1bm1hcF9rZXJuZWxfcmFuZ2UodW5zaWduZWQgbG9uZyBhZGRyLCB1bnNp
Z25lZCBsb25nIHNpemUpCiAJdnVubWFwX3BhZ2VfcmFuZ2UoYWRkciwgZW5kKTsKIAlmbHVzaF90
bGJfa2VybmVsX3JhbmdlKGFkZHIsIGVuZCk7CiB9Ci1FWFBPUlRfU1lNQk9MX0dQTCh1bm1hcF9r
ZXJuZWxfcmFuZ2UpOwogCiBpbnQgbWFwX3ZtX2FyZWEoc3RydWN0IHZtX3N0cnVjdCAqYXJlYSwg
cGdwcm90X3QgcHJvdCwgc3RydWN0IHBhZ2UgKipwYWdlcykKIHsKQEAgLTIwNTgsNyArMjA1Nyw2
IEBAIGludCBtYXBfdm1fYXJlYShzdHJ1Y3Qgdm1fc3RydWN0ICphcmVhLCBwZ3Byb3RfdCBwcm90
LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzKQogCiAJcmV0dXJuIGVyciA+IDAgPyAwIDogZXJyOwogfQot
RVhQT1JUX1NZTUJPTF9HUEwobWFwX3ZtX2FyZWEpOwogCiBzdGF0aWMgaW5saW5lIHZvaWQgc2V0
dXBfdm1hbGxvY192bV9sb2NrZWQoc3RydWN0IHZtX3N0cnVjdCAqdm0sCiAJc3RydWN0IHZtYXBf
YXJlYSAqdmEsIHVuc2lnbmVkIGxvbmcgZmxhZ3MsIGNvbnN0IHZvaWQgKmNhbGxlcikKLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
