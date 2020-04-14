Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 336CE1B6DC8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:06:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51561619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:06:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3D5BE6602B; Fri, 24 Apr 2020 06:06:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D712766611;
	Fri, 24 Apr 2020 05:30:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A8158616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9629A66047; Tue, 14 Apr 2020 13:15:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 7AF68616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:01 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOi-0006vf-4M; Tue, 14 Apr 2020 13:14:40 +0000
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
Date: Tue, 14 Apr 2020 15:13:33 +0200
Message-Id: <20200414131348.444715-15-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 14/29] mm: rename vmap_page_range to
	map_kernel_range
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

VGhpcyBtYXRjaGVzIHRoZSBtYXBfa2VybmVsX3JhbmdlX25vZmx1c2ggQVBJLiAgQWxzbyBjaGFu
Z2UgdG8gcGFzcwphIHNpemUgaW5zdGVhZCBvZiB0aGUgZW5kLCBzaW1pbGFyIHRvIHRoZSBub2Zs
dXNoIHZlcnNpb24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT4KQWNrZWQtYnk6IFBldGVyIFppamxzdHJhIChJbnRlbCkgPHBldGVyekBpbmZyYWRlYWQub3Jn
PgotLS0KIG1tL3ZtYWxsb2MuYyB8IDExICsrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBi
L21tL3ZtYWxsb2MuYwppbmRleCA1NWRmNWRjNmE5ZmMuLmEzZDgxMGRlZjU2NyAxMDA2NDQKLS0t
IGEvbW0vdm1hbGxvYy5jCisrKyBiL21tL3ZtYWxsb2MuYwpAQCAtMjcyLDEzICsyNzIsMTMgQEAg
aW50IG1hcF9rZXJuZWxfcmFuZ2Vfbm9mbHVzaCh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVk
IGxvbmcgc2l6ZSwKIAlyZXR1cm4gbnI7CiB9CiAKLXN0YXRpYyBpbnQgdm1hcF9wYWdlX3Jhbmdl
KHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVkIGxvbmcgZW5kLAorc3RhdGljIGludCBtYXBf
a2VybmVsX3JhbmdlKHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVkIGxvbmcgc2l6ZSwKIAkJ
CSAgIHBncHJvdF90IHByb3QsIHN0cnVjdCBwYWdlICoqcGFnZXMpCiB7CiAJaW50IHJldDsKIAot
CXJldCA9IG1hcF9rZXJuZWxfcmFuZ2Vfbm9mbHVzaChzdGFydCwgZW5kIC0gc3RhcnQsIHByb3Qs
IHBhZ2VzKTsKLQlmbHVzaF9jYWNoZV92bWFwKHN0YXJ0LCBlbmQpOworCXJldCA9IG1hcF9rZXJu
ZWxfcmFuZ2Vfbm9mbHVzaChzdGFydCwgc2l6ZSwgcHJvdCwgcGFnZXMpOworCWZsdXNoX2NhY2hl
X3ZtYXAoc3RhcnQsIHN0YXJ0ICsgc2l6ZSk7CiAJcmV0dXJuIHJldDsKIH0KIApAQCAtMTg2Niw3
ICsxODY2LDcgQEAgdm9pZCAqdm1fbWFwX3JhbShzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCB1bnNpZ25l
ZCBpbnQgY291bnQsIGludCBub2RlLCBwZ3Byb3RfdCBwcm8KIAogCWthc2FuX3VucG9pc29uX3Zt
YWxsb2MobWVtLCBzaXplKTsKIAotCWlmICh2bWFwX3BhZ2VfcmFuZ2UoYWRkciwgYWRkciArIHNp
emUsIHByb3QsIHBhZ2VzKSA8IDApIHsKKwlpZiAobWFwX2tlcm5lbF9yYW5nZShhZGRyLCBzaXpl
LCBwcm90LCBwYWdlcykgPCAwKSB7CiAJCXZtX3VubWFwX3JhbShtZW0sIGNvdW50KTsKIAkJcmV0
dXJuIE5VTEw7CiAJfQpAQCAtMjAzMCwxMCArMjAzMCw5IEBAIHZvaWQgdW5tYXBfa2VybmVsX3Jh
bmdlKHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBzaXplKQogaW50IG1hcF92bV9h
cmVhKHN0cnVjdCB2bV9zdHJ1Y3QgKmFyZWEsIHBncHJvdF90IHByb3QsIHN0cnVjdCBwYWdlICoq
cGFnZXMpCiB7CiAJdW5zaWduZWQgbG9uZyBhZGRyID0gKHVuc2lnbmVkIGxvbmcpYXJlYS0+YWRk
cjsKLQl1bnNpZ25lZCBsb25nIGVuZCA9IGFkZHIgKyBnZXRfdm1fYXJlYV9zaXplKGFyZWEpOwog
CWludCBlcnI7CiAKLQllcnIgPSB2bWFwX3BhZ2VfcmFuZ2UoYWRkciwgZW5kLCBwcm90LCBwYWdl
cyk7CisJZXJyID0gbWFwX2tlcm5lbF9yYW5nZShhZGRyLCBnZXRfdm1fYXJlYV9zaXplKGFyZWEp
LCBwcm90LCBwYWdlcyk7CiAKIAlyZXR1cm4gZXJyID4gMCA/IDAgOiBlcnI7CiB9Ci0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
