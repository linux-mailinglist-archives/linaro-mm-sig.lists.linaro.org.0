Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1853F1B6DC9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:07:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A2ED619E9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:07:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 22E06619CF; Fri, 24 Apr 2020 06:07:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8CDC966626;
	Fri, 24 Apr 2020 05:30:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 94182616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8869061997; Tue, 14 Apr 2020 13:15:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 1E28766048
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:04 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOl-0006yj-6V; Tue, 14 Apr 2020 13:14:43 +0000
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
Date: Tue, 14 Apr 2020 15:13:34 +0200
Message-Id: <20200414131348.444715-16-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 15/29] mm: don't return the number of pages
	from map_kernel_range{, _noflush}
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

Tm9uZSBvZiB0aGUgY2FsbGVycyBuZWVkcyB0aGUgbnVtYmVyIG9mIHBhZ2VzLCBhbmQgYSAwIC8g
LWVycm5vIHJldHVybgp2YWx1ZSBpcyBhIGxvdCBtb3JlIGludHVpdGl2ZS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpBY2tlZC1ieTogUGV0ZXIgWmlqbHN0
cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Ci0tLQogbW0vdm1hbGxvYy5jIHwgNCAr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYwppbmRleCBhM2Q4MTBkZWY1Njcu
LmNhOGRjNWQ0MjU4MCAxMDA2NDQKLS0tIGEvbW0vdm1hbGxvYy5jCisrKyBiL21tL3ZtYWxsb2Mu
YwpAQCAtMjQ5LDcgKzI0OSw3IEBAIHN0YXRpYyBpbnQgdm1hcF9wNGRfcmFuZ2UocGdkX3QgKnBn
ZCwgdW5zaWduZWQgbG9uZyBhZGRyLAogICogZnVuY3Rpb24uCiAgKgogICogUkVUVVJOUzoKLSAq
IFRoZSBudW1iZXIgb2YgcGFnZXMgbWFwcGVkIG9uIHN1Y2Nlc3MsIC1lcnJubyBvbiBmYWlsdXJl
LgorICogMCBvbiBzdWNjZXNzLCAtZXJybm8gb24gZmFpbHVyZS4KICAqLwogaW50IG1hcF9rZXJu
ZWxfcmFuZ2Vfbm9mbHVzaCh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgc2l6ZSwK
IAkJCSAgICAgcGdwcm90X3QgcHJvdCwgc3RydWN0IHBhZ2UgKipwYWdlcykKQEAgLTI2OSw3ICsy
NjksNyBAQCBpbnQgbWFwX2tlcm5lbF9yYW5nZV9ub2ZsdXNoKHVuc2lnbmVkIGxvbmcgYWRkciwg
dW5zaWduZWQgbG9uZyBzaXplLAogCQkJcmV0dXJuIGVycjsKIAl9IHdoaWxlIChwZ2QrKywgYWRk
ciA9IG5leHQsIGFkZHIgIT0gZW5kKTsKIAotCXJldHVybiBucjsKKwlyZXR1cm4gMDsKIH0KIAog
c3RhdGljIGludCBtYXBfa2VybmVsX3JhbmdlKHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVk
IGxvbmcgc2l6ZSwKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
