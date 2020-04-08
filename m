Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 147CF1B6D82
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:52:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BB1F619EA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:52:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2FCED6602B; Fri, 24 Apr 2020 05:52:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DBF9664EB;
	Fri, 24 Apr 2020 05:30:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4666666611
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 36CEC665FF; Wed,  8 Apr 2020 12:01:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 1A4CF665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:27 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9OG-0005yR-5M; Wed, 08 Apr 2020 12:01:08 +0000
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
Date: Wed,  8 Apr 2020 13:59:26 +0200
Message-Id: <20200408115926.1467567-29-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 28/28] s390: use __vmalloc_node in
	stack_alloc
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

c3RhY2tfYWxsb2MgY2FuIHVzZSBhIHNsaWdodGx5IGhpZ2hlciBsZXZlbCB2bWFsbG9jIGZ1bmN0
aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQog
YXJjaC9zMzkwL2tlcm5lbC9zZXR1cC5jIHwgOSArKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9zMzkwL2tl
cm5lbC9zZXR1cC5jIGIvYXJjaC9zMzkwL2tlcm5lbC9zZXR1cC5jCmluZGV4IDM2NDQ1ZGQ0MGZk
Yi4uMGYwYjE0MGI1NTU4IDEwMDY0NAotLS0gYS9hcmNoL3MzOTAva2VybmVsL3NldHVwLmMKKysr
IGIvYXJjaC9zMzkwL2tlcm5lbC9zZXR1cC5jCkBAIC0zMDUsMTIgKzMwNSw5IEBAIHZvaWQgKnJl
c3RhcnRfc3RhY2sgX19zZWN0aW9uKC5kYXRhKTsKIHVuc2lnbmVkIGxvbmcgc3RhY2tfYWxsb2Mo
dm9pZCkKIHsKICNpZmRlZiBDT05GSUdfVk1BUF9TVEFDSwotCXJldHVybiAodW5zaWduZWQgbG9u
ZykKLQkJX192bWFsbG9jX25vZGVfcmFuZ2UoVEhSRUFEX1NJWkUsIFRIUkVBRF9TSVpFLAotCQkJ
CSAgICAgVk1BTExPQ19TVEFSVCwgVk1BTExPQ19FTkQsCi0JCQkJICAgICBUSFJFQURJTkZPX0dG
UCwKLQkJCQkgICAgIFBBR0VfS0VSTkVMLCAwLCBOVU1BX05PX05PREUsCi0JCQkJICAgICBfX2J1
aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOworCXJldHVybiAodW5zaWduZWQgbG9uZylfX3ZtYWxs
b2Nfbm9kZShUSFJFQURfU0laRSwgVEhSRUFEX1NJWkUsCisJCQlUSFJFQURJTkZPX0dGUCwgTlVN
QV9OT19OT0RFLAorCQkJX19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKICNlbHNlCiAJcmV0
dXJuIF9fZ2V0X2ZyZWVfcGFnZXMoR0ZQX0tFUk5FTCwgVEhSRUFEX1NJWkVfT1JERVIpOwogI2Vu
ZGlmCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
