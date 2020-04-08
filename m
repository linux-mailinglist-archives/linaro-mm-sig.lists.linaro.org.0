Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1617B1B6D6E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:44:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40C0B619C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:44:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 30F44619B7; Fri, 24 Apr 2020 05:44:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51229664EC;
	Fri, 24 Apr 2020 05:29:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 88D3266627
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7BBA166628; Wed,  8 Apr 2020 12:01:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 752BB666D8
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:51 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Nc-00055R-Bm; Wed, 08 Apr 2020 12:00:29 +0000
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
Date: Wed,  8 Apr 2020 13:59:14 +0200
Message-Id: <20200408115926.1467567-17-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 16/28] mm: remove unmap_vmap_area
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

VGhpcyBmdW5jdGlvbiBqdXN0IGhhcyBhIHNpbmdsZSBjYWxsZXIsIG9wZW4gY29kZSBpdCB0aGVy
ZS4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0KIG1t
L3ZtYWxsb2MuYyB8IDEwICstLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9tbS92bWFsbG9j
LmMKaW5kZXggYjBjN2NkYzg3MDFhLi4yNTgyMjBiMjAzZjEgMTAwNjQ0Ci0tLSBhL21tL3ZtYWxs
b2MuYworKysgYi9tbS92bWFsbG9jLmMKQEAgLTEyNDcsMTQgKzEyNDcsNiBAQCBpbnQgdW5yZWdp
c3Rlcl92bWFwX3B1cmdlX25vdGlmaWVyKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIpCiB9CiBF
WFBPUlRfU1lNQk9MX0dQTCh1bnJlZ2lzdGVyX3ZtYXBfcHVyZ2Vfbm90aWZpZXIpOwogCi0vKgot
ICogQ2xlYXIgdGhlIHBhZ2V0YWJsZSBlbnRyaWVzIG9mIGEgZ2l2ZW4gdm1hcF9hcmVhCi0gKi8K
LXN0YXRpYyB2b2lkIHVubWFwX3ZtYXBfYXJlYShzdHJ1Y3Qgdm1hcF9hcmVhICp2YSkKLXsKLQl1
bm1hcF9rZXJuZWxfcmFuZ2Vfbm9mbHVzaCh2YS0+dmFfc3RhcnQsIHZhLT52YV9lbmQgLSB2YS0+
dmFfc3RhcnQpOwotfQotCiAvKgogICogbGF6eV9tYXhfcGFnZXMgaXMgdGhlIG1heGltdW0gYW1v
dW50IG9mIHZpcnR1YWwgYWRkcmVzcyBzcGFjZSB3ZSBnYXRoZXIgdXAKICAqIGJlZm9yZSBhdHRl
bXB0aW5nIHRvIHB1cmdlIHdpdGggYSBUTEIgZmx1c2guCkBAIC0xNDE2LDcgKzE0MDgsNyBAQCBz
dGF0aWMgdm9pZCBmcmVlX3ZtYXBfYXJlYV9ub2ZsdXNoKHN0cnVjdCB2bWFwX2FyZWEgKnZhKQog
c3RhdGljIHZvaWQgZnJlZV91bm1hcF92bWFwX2FyZWEoc3RydWN0IHZtYXBfYXJlYSAqdmEpCiB7
CiAJZmx1c2hfY2FjaGVfdnVubWFwKHZhLT52YV9zdGFydCwgdmEtPnZhX2VuZCk7Ci0JdW5tYXBf
dm1hcF9hcmVhKHZhKTsKKwl1bm1hcF9rZXJuZWxfcmFuZ2Vfbm9mbHVzaCh2YS0+dmFfc3RhcnQs
IHZhLT52YV9lbmQgLSB2YS0+dmFfc3RhcnQpOwogCWlmIChkZWJ1Z19wYWdlYWxsb2NfZW5hYmxl
ZF9zdGF0aWMoKSkKIAkJZmx1c2hfdGxiX2tlcm5lbF9yYW5nZSh2YS0+dmFfc3RhcnQsIHZhLT52
YV9lbmQpOwogCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
