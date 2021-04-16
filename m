Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAE3361E76
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Apr 2021 13:10:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFA94667C5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Apr 2021 11:10:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AF16E667C6; Fri, 16 Apr 2021 11:10:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97D91667C4;
	Fri, 16 Apr 2021 11:10:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 67AEC667BD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Apr 2021 11:10:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3F38F667C4; Fri, 16 Apr 2021 11:10:33 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 35C86667BD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Apr 2021 11:10:32 +0000 (UTC)
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lXMLY-009rOM-P1; Fri, 16 Apr 2021 11:09:13 +0000
Date: Fri, 16 Apr 2021 12:09:12 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Peter Enderborg <peter.enderborg@sony.com>
Message-ID: <20210416110912.GI2531743@casper.infradead.org>
References: <20210416093719.6197-1-peter.enderborg@sony.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416093719.6197-1-peter.enderborg@sony.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Michal Hocko <mhocko@suse.com>, NeilBrown <neilb@suse.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Alexey Dobriyan <adobriyan@gmail.com>, linaro-mm-sig@lists.linaro.org,
 Shakeel Butt <shakeelb@google.com>, Mike Rapoport <rppt@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Muchun Song <songmuchun@bytedance.com>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Roman Gushchin <guro@fb.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Add DmaBufTotal counter in
	meminfo
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

T24gRnJpLCBBcHIgMTYsIDIwMjEgYXQgMTE6Mzc6MTlBTSArMDIwMCwgUGV0ZXIgRW5kZXJib3Jn
IHdyb3RlOgo+IGRpZmYgLS1naXQgYS9mcy9wcm9jL21lbWluZm8uYyBiL2ZzL3Byb2MvbWVtaW5m
by5jCj4gaW5kZXggNmZhNzYxYzljYzc4Li4zYzFhODJiNTFhNmYgMTAwNjQ0Cj4gLS0tIGEvZnMv
cHJvYy9tZW1pbmZvLmMKPiArKysgYi9mcy9wcm9jL21lbWluZm8uYwo+IEBAIC0xNiw2ICsxNiw3
IEBACj4gICNpZmRlZiBDT05GSUdfQ01BCj4gICNpbmNsdWRlIDxsaW51eC9jbWEuaD4KPiAgI2Vu
ZGlmCj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+Cj4gICNpbmNsdWRlIDxhc20vcGFnZS5o
Pgo+ICAjaW5jbHVkZSAiaW50ZXJuYWwuaCIKPiAgCj4gQEAgLTE0NSw2ICsxNDYsNyBAQCBzdGF0
aWMgaW50IG1lbWluZm9fcHJvY19zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdikKPiAg
CXNob3dfdmFsX2tiKG0sICJDbWFGcmVlOiAgICAgICAgIiwKPiAgCQkgICAgZ2xvYmFsX3pvbmVf
cGFnZV9zdGF0ZShOUl9GUkVFX0NNQV9QQUdFUykpOwo+ICAjZW5kaWYKPiArCXNob3dfdmFsX2ti
KG0sICJEbWFCdWZUb3RhbDogICAgIiwgZG1hX2J1Zl9nZXRfc2l6ZSgpKTsKPiAgCj4gIAlodWdl
dGxiX3JlcG9ydF9tZW1pbmZvKG0pOwo+ICAKCi4uLiBhbmQgaWYgQ09ORklHX0RNQV9TSEFSRURf
QlVGRkVSIGlzIG5vdCBzZXQgLi4uPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
