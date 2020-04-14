Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7641B6E20
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:25:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25224619BF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:25:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 109D0619C4; Fri, 24 Apr 2020 06:25:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A58E9666FE;
	Fri, 24 Apr 2020 05:30:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 62C1861997
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:16:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 53836616DC; Tue, 14 Apr 2020 13:16:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id BE2D1616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:52 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLPX-0001qd-UV; Tue, 14 Apr 2020 13:15:32 +0000
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
Date: Tue, 14 Apr 2020 15:13:48 +0200
Message-Id: <20200414131348.444715-30-hch@lst.de>
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
 Robin Murphy <robin.murphy@arm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 29/29] s390: use __vmalloc_node in
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
aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkFja2Vk
LWJ5OiBDaHJpc3RpYW4gQm9ybnRyYWVnZXIgPGJvcm50cmFlZ2VyQGRlLmlibS5jb20+CkFja2Vk
LWJ5OiBQZXRlciBaaWpsc3RyYSAoSW50ZWwpIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KLS0tCiBh
cmNoL3MzOTAva2VybmVsL3NldHVwLmMgfCA5ICsrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3MzOTAva2Vy
bmVsL3NldHVwLmMgYi9hcmNoL3MzOTAva2VybmVsL3NldHVwLmMKaW5kZXggMzY0NDVkZDQwZmRi
Li4wZjBiMTQwYjU1NTggMTAwNjQ0Ci0tLSBhL2FyY2gvczM5MC9rZXJuZWwvc2V0dXAuYworKysg
Yi9hcmNoL3MzOTAva2VybmVsL3NldHVwLmMKQEAgLTMwNSwxMiArMzA1LDkgQEAgdm9pZCAqcmVz
dGFydF9zdGFjayBfX3NlY3Rpb24oLmRhdGEpOwogdW5zaWduZWQgbG9uZyBzdGFja19hbGxvYyh2
b2lkKQogewogI2lmZGVmIENPTkZJR19WTUFQX1NUQUNLCi0JcmV0dXJuICh1bnNpZ25lZCBsb25n
KQotCQlfX3ZtYWxsb2Nfbm9kZV9yYW5nZShUSFJFQURfU0laRSwgVEhSRUFEX1NJWkUsCi0JCQkJ
ICAgICBWTUFMTE9DX1NUQVJULCBWTUFMTE9DX0VORCwKLQkJCQkgICAgIFRIUkVBRElORk9fR0ZQ
LAotCQkJCSAgICAgUEFHRV9LRVJORUwsIDAsIE5VTUFfTk9fTk9ERSwKLQkJCQkgICAgIF9fYnVp
bHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7CisJcmV0dXJuICh1bnNpZ25lZCBsb25nKV9fdm1hbGxv
Y19ub2RlKFRIUkVBRF9TSVpFLCBUSFJFQURfU0laRSwKKwkJCVRIUkVBRElORk9fR0ZQLCBOVU1B
X05PX05PREUsCisJCQlfX2J1aWx0aW5fcmV0dXJuX2FkZHJlc3MoMCkpOwogI2Vsc2UKIAlyZXR1
cm4gX19nZXRfZnJlZV9wYWdlcyhHRlBfS0VSTkVMLCBUSFJFQURfU0laRV9PUkRFUik7CiAjZW5k
aWYKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
