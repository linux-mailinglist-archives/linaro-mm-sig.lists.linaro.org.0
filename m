Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F16361B6D71
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:46:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06059619B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:46:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E412D619C4; Fri, 24 Apr 2020 05:46:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE,TVD_SUBJ_WIPE_DEBT autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 521B866502;
	Fri, 24 Apr 2020 05:29:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E5C66665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D8A3266611; Wed,  8 Apr 2020 12:01:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 4946066611
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:04 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Nn-0005S9-I6; Wed, 08 Apr 2020 12:00:40 +0000
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
Date: Wed,  8 Apr 2020 13:59:17 +0200
Message-Id: <20200408115926.1467567-20-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 19/28] gpu/drm: remove the powerpc hack in
	drm_legacy_sg_alloc
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

SWYgdGhpcyBjb2RlIHdhcyBicm9rZW4gZm9yIG5vbi1jb2hlcmVudCBjYWNoZXMgYSBjcnVkZSBw
b3dlcnBjIGhhY2sKaXNuJ3QgZ29pbmcgdG8gaGVscCBhbnlvbmUgZWxzZS4gIFJlbW92ZSB0aGUg
aGFjayBhcyBpdCBpcyB0aGUgbGFzdAp1c2VyIG9mIF9fdm1hbGxvYyBwYXNzaW5nIGEgcGFnZSBw
cm90ZWN0aW9uIGZsYWcgb3RoZXIgdGhhbiBQQUdFX0tFUk5FTC4KClNpZ25lZC1vZmYtYnk6IENo
cmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fc2Nh
dHRlci5jIHwgMTEgKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3NjYXR0ZXIuYwppbmRleCBjYTUyMDAyOGIyY2IuLmY0
ZTYxODRkMTg3NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKQEAgLTQzLDE1ICs0Myw2IEBACiAKICNk
ZWZpbmUgREVCVUdfU0NBVFRFUiAwCiAKLXN0YXRpYyBpbmxpbmUgdm9pZCAqZHJtX3ZtYWxsb2Nf
ZG1hKHVuc2lnbmVkIGxvbmcgc2l6ZSkKLXsKLSNpZiBkZWZpbmVkKF9fcG93ZXJwY19fKSAmJiBk
ZWZpbmVkKENPTkZJR19OT1RfQ09IRVJFTlRfQ0FDSEUpCi0JcmV0dXJuIF9fdm1hbGxvYyhzaXpl
LCBHRlBfS0VSTkVMLCBwZ3Byb3Rfbm9uY2FjaGVkX3djKFBBR0VfS0VSTkVMKSk7Ci0jZWxzZQot
CXJldHVybiB2bWFsbG9jXzMyKHNpemUpOwotI2VuZGlmCi19Ci0KIHN0YXRpYyB2b2lkIGRybV9z
Z19jbGVhbnVwKHN0cnVjdCBkcm1fc2dfbWVtICogZW50cnkpCiB7CiAJc3RydWN0IHBhZ2UgKnBh
Z2U7CkBAIC0xMjYsNyArMTE3LDcgQEAgaW50IGRybV9sZWdhY3lfc2dfYWxsb2Moc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJcmV0dXJuIC1FTk9NRU07CiAJfQogCi0JZW50
cnktPnZpcnR1YWwgPSBkcm1fdm1hbGxvY19kbWEocGFnZXMgPDwgUEFHRV9TSElGVCk7CisJZW50
cnktPnZpcnR1YWwgPSB2bWFsbG9jXzMyKHBhZ2VzIDw8IFBBR0VfU0hJRlQpOwogCWlmICghZW50
cnktPnZpcnR1YWwpIHsKIAkJa2ZyZWUoZW50cnktPmJ1c2FkZHIpOwogCQlrZnJlZShlbnRyeS0+
cGFnZWxpc3QpOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
