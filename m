Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6BC1B6E1E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:23:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B7AB66033
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:23:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0C74E66030; Fri, 24 Apr 2020 06:23:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4513B66702;
	Fri, 24 Apr 2020 05:30:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6CECB66048
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5D2B96604B; Tue, 14 Apr 2020 13:15:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 2A2CE66072
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:42 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLPR-0001kS-T9; Tue, 14 Apr 2020 13:15:26 +0000
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
Date: Tue, 14 Apr 2020 15:13:46 +0200
Message-Id: <20200414131348.444715-28-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 27/29] arm64: use __vmalloc_node in
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
LmRlPgpBY2tlZC1ieTogUGV0ZXIgWmlqbHN0cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJhZGVhZC5v
cmc+Ci0tLQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS92bWFwX3N0YWNrLmggfCA2ICsrLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3ZtYXBfc3RhY2suaCBiL2FyY2gvYXJtNjQvaW5j
bHVkZS9hc20vdm1hcF9zdGFjay5oCmluZGV4IDBhMTIxMTVkOTYzOC4uMGNjNjYzNmUzZjE1IDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3ZtYXBfc3RhY2suaAorKysgYi9hcmNo
L2FybTY0L2luY2x1ZGUvYXNtL3ZtYXBfc3RhY2suaApAQCAtMTksMTAgKzE5LDggQEAgc3RhdGlj
IGlubGluZSB1bnNpZ25lZCBsb25nICphcmNoX2FsbG9jX3ZtYXBfc3RhY2soc2l6ZV90IHN0YWNr
X3NpemUsIGludCBub2RlKQogewogCUJVSUxEX0JVR19PTighSVNfRU5BQkxFRChDT05GSUdfVk1B
UF9TVEFDSykpOwogCi0JcmV0dXJuIF9fdm1hbGxvY19ub2RlX3JhbmdlKHN0YWNrX3NpemUsIFRI
UkVBRF9BTElHTiwKLQkJCQkgICAgVk1BTExPQ19TVEFSVCwgVk1BTExPQ19FTkQsCi0JCQkJICAg
IFRIUkVBRElORk9fR0ZQLCBQQUdFX0tFUk5FTCwgMCwgbm9kZSwKLQkJCQkgICAgX19idWlsdGlu
X3JldHVybl9hZGRyZXNzKDApKTsKKwlyZXR1cm4gX192bWFsbG9jX25vZGUoc3RhY2tfc2l6ZSwg
VEhSRUFEX0FMSUdOLCBUSFJFQURJTkZPX0dGUCwgbm9kZSwKKwkJCV9fYnVpbHRpbl9yZXR1cm5f
YWRkcmVzcygwKSk7CiB9CiAKICNlbmRpZiAvKiBfX0FTTV9WTUFQX1NUQUNLX0ggKi8KLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
