Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD851B6D7F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:51:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75574619C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:51:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 67E32619CF; Fri, 24 Apr 2020 05:51:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6FD4566553;
	Fri, 24 Apr 2020 05:30:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 565646661F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 49BF866614; Wed,  8 Apr 2020 12:01:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 5954C66614
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:23 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9OC-0005u0-OI; Wed, 08 Apr 2020 12:01:05 +0000
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
Date: Wed,  8 Apr 2020 13:59:25 +0200
Message-Id: <20200408115926.1467567-28-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 27/28] s390: use __vmalloc_node in
	alloc_vm_stack
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

YWxsb2Nfdm1fc3RhY2sgY2FuIHVzZSBhIHNsaWdodGx5IGhpZ2hlciBsZXZlbCB2bWFsbG9jIGZ1
bmN0aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0t
LQogYXJjaC9wb3dlcnBjL2tlcm5lbC9pcnEuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBj
L2tlcm5lbC9pcnEuYyBiL2FyY2gvcG93ZXJwYy9rZXJuZWwvaXJxLmMKaW5kZXggYTI1ZWQ0NzA4
N2VlLi40NTE4ZmIxZDZiZjQgMTAwNjQ0Ci0tLSBhL2FyY2gvcG93ZXJwYy9rZXJuZWwvaXJxLmMK
KysrIGIvYXJjaC9wb3dlcnBjL2tlcm5lbC9pcnEuYwpAQCAtNzM1LDkgKzczNSw4IEBAIHZvaWQg
ZG9fSVJRKHN0cnVjdCBwdF9yZWdzICpyZWdzKQogCiBzdGF0aWMgdm9pZCAqX19pbml0IGFsbG9j
X3ZtX3N0YWNrKHZvaWQpCiB7Ci0JcmV0dXJuIF9fdm1hbGxvY19ub2RlX3JhbmdlKFRIUkVBRF9T
SVpFLCBUSFJFQURfQUxJR04sIFZNQUxMT0NfU1RBUlQsCi0JCQkJICAgIFZNQUxMT0NfRU5ELCBU
SFJFQURJTkZPX0dGUCwgUEFHRV9LRVJORUwsCi0JCQkJICAgICAwLCBOVU1BX05PX05PREUsICh2
b2lkKilfUkVUX0lQXyk7CisJcmV0dXJuIF9fdm1hbGxvY19ub2RlKFRIUkVBRF9TSVpFLCBUSFJF
QURfQUxJR04sIFRIUkVBRElORk9fR0ZQLAorCQkJICAgICAgTlVNQV9OT19OT0RFLCAodm9pZCAq
KV9SRVRfSVBfKTsKIH0KIAogc3RhdGljIHZvaWQgX19pbml0IHZtYXBfaXJxc3RhY2tfaW5pdCh2
b2lkKQotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
