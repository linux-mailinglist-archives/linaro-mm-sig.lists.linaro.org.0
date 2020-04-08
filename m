Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B92131B6D35
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:32:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDC74619C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:32:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D0234619F1; Fri, 24 Apr 2020 05:32:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D960C62BBE;
	Fri, 24 Apr 2020 05:29:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 84BEF665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 11:59:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 75B7C66611; Wed,  8 Apr 2020 11:59:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 26754665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 11:59:55 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Mf-0001Xh-5a; Wed, 08 Apr 2020 11:59:29 +0000
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
Date: Wed,  8 Apr 2020 13:58:58 +0200
Message-Id: <20200408115926.1467567-1-hch@lst.de>
X-Mailer: git-send-email 2.25.1
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
Subject: [Linaro-mm-sig] decruft the vmalloc API
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

SGkgYWxsLAoKUGV0ZXIgbm90aWNlZCB0aGF0IHdpdGggc29tZSBkdW1iIGx1Y2sgeW91IGNhbiB0
b2FzdCB0aGUga2VybmVsIGFkZHJlc3MKc3BhY2Ugd2l0aCBleHBvcnRlZCB2bWFsbG9jIHN5bWJv
bHMuCgpJIHVzZWQgdGhpcyBhcyBhbiBvcHBvcnR1bml0eSB0byBkZWNydWZ0IHRoZSB2bWFsbG9j
LmMgQVBJIGFuZCBtYWtlIGl0Cm11Y2ggbW9yZSBzeXN0ZW1hdGljLiAgVGhpcyBhbHNvIHJlbW92
ZXMgYW55IGNoYW5jZSB0byBjcmVhdGUgdm1hbGxvYwptYXBwaW5ncyBvdXRzaWRlIHRoZSBkZXNp
Z25hdGVkIGFyZWFzIG9yIHVzaW5nIGV4ZWN1dGFibGUgcGVybWlzc2lvbnMKZnJvbSBtb2R1bGVz
LiAgQmVzaWRlcyB0aGF0IGl0IHJlbW92ZXMgbW9yZSB0aGFuIDMwMCBsaW5lcyBvZiBjb2RlLgoK
QSBnaXQgdHJlZSBpcyBhbHNvIGF2YWlsYWJsZSBoZXJlOgoKICAgIGdpdDovL2dpdC5pbmZyYWRl
YWQub3JnL3VzZXJzL2hjaC9taXNjLmdpdCBzYW5pdGl6ZS12bWFsbG9jLWFwaQoKR2l0d2ViOgoK
ICAgIGh0dHA6Ly9naXQuaW5mcmFkZWFkLm9yZy91c2Vycy9oY2gvbWlzYy5naXQvc2hvcnRsb2cv
cmVmcy9oZWFkcy9zYW5pdGl6ZS12bWFsbG9jLWFwaQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
