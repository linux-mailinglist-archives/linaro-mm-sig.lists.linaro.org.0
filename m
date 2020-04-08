Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5C01B6D7D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:51:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0BD96601E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:51:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A1CEB66031; Fri, 24 Apr 2020 05:51:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A03AD6654F;
	Fri, 24 Apr 2020 05:30:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3E99366611
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2FF5E66626; Wed,  8 Apr 2020 12:01:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 49CC166611
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:23 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9O8-0005qa-TW; Wed, 08 Apr 2020 12:01:01 +0000
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
Date: Wed,  8 Apr 2020 13:59:24 +0200
Message-Id: <20200408115926.1467567-27-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 26/28] arm64: use __vmalloc_node in
	arch_alloc_vmap_stack
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

YXJjaF9hbGxvY192bWFwX3N0YWNrIGNhbiB1c2UgYSBzbGlnaHRseSBoaWdoZXIgbGV2ZWwgdm1h
bGxvYyBmdW5jdGlvbi4KClNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0
LmRlPgotLS0KIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vdm1hcF9zdGFjay5oIHwgNiArKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS92bWFwX3N0YWNrLmggYi9hcmNoL2FybTY0L2lu
Y2x1ZGUvYXNtL3ZtYXBfc3RhY2suaAppbmRleCAwYTEyMTE1ZDk2MzguLjBjYzY2MzZlM2YxNSAx
MDA2NDQKLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS92bWFwX3N0YWNrLmgKKysrIGIvYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS92bWFwX3N0YWNrLmgKQEAgLTE5LDEwICsxOSw4IEBAIHN0YXRp
YyBpbmxpbmUgdW5zaWduZWQgbG9uZyAqYXJjaF9hbGxvY192bWFwX3N0YWNrKHNpemVfdCBzdGFj
a19zaXplLCBpbnQgbm9kZSkKIHsKIAlCVUlMRF9CVUdfT04oIUlTX0VOQUJMRUQoQ09ORklHX1ZN
QVBfU1RBQ0spKTsKIAotCXJldHVybiBfX3ZtYWxsb2Nfbm9kZV9yYW5nZShzdGFja19zaXplLCBU
SFJFQURfQUxJR04sCi0JCQkJICAgIFZNQUxMT0NfU1RBUlQsIFZNQUxMT0NfRU5ELAotCQkJCSAg
ICBUSFJFQURJTkZPX0dGUCwgUEFHRV9LRVJORUwsIDAsIG5vZGUsCi0JCQkJICAgIF9fYnVpbHRp
bl9yZXR1cm5fYWRkcmVzcygwKSk7CisJcmV0dXJuIF9fdm1hbGxvY19ub2RlKHN0YWNrX3NpemUs
IFRIUkVBRF9BTElHTiwgVEhSRUFESU5GT19HRlAsIG5vZGUsCisJCQlfX2J1aWx0aW5fcmV0dXJu
X2FkZHJlc3MoMCkpOwogfQogCiAjZW5kaWYgLyogX19BU01fVk1BUF9TVEFDS19IICovCi0tIAoy
LjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
