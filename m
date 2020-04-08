Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 412201B6D9C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:56:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71AAF619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:56:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 625BE66033; Fri, 24 Apr 2020 05:56:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BCA866592;
	Fri, 24 Apr 2020 05:30:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 86F7560F23
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:40:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6DF88665FF; Wed,  8 Apr 2020 15:40:38 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 8034A60F23
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 15:40:37 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0BEE968C65; Wed,  8 Apr 2020 17:40:34 +0200 (CEST)
Date: Wed, 8 Apr 2020 17:40:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hillf Danton <hdanton@sina.com>
Message-ID: <20200408154033.GA28499@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408124833.13032-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408124833.13032-1-hdanton@sina.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, syzkaller-bugs@googlegroups.com,
 bpf@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH 02/28] staging: android: ion: use vmap
 instead of vm_map_ram
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDg6NDg6MzNQTSArMDgwMCwgSGlsbGYgRGFudG9uIHdy
b3RlOgo+ID4gLQl2b2lkICphZGRyID0gdm1fbWFwX3JhbShwYWdlcywgbnVtLCAtMSwgcGdwcm90
KTsKPiA+ICsJdm9pZCAqYWRkciA9IHZtYXAocGFnZXMsIG51bSwgVk1fTUFQKTsKPiAKPiBBIG1l
cmdlIGdsaXRjaD8KPiAKPiB2b2lkICp2bWFwKHN0cnVjdCBwYWdlICoqcGFnZXMsIHVuc2lnbmVk
IGludCBjb3VudCwKPiAJICAgdW5zaWduZWQgbG9uZyBmbGFncywgcGdwcm90X3QgcHJvdCkKClll
cywgdGhhbmtzIGZvciB0aGUgaGVhZHN1cCwgeW91IHdlcmUgYXMgZmFzdCBhcyB0aGUgYnVpbGQg
Ym90IDopCgpGaXhlZCBub3cuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
