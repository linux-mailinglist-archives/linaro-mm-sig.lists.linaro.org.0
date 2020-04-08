Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E549D1A224F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 14:49:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E18166645
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 12:49:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 117426663F; Wed,  8 Apr 2020 12:49:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MAILING_LIST_MULTI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 056BC66631;
	Wed,  8 Apr 2020 12:48:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E2B26661F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:48:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5769766631; Wed,  8 Apr 2020 12:48:54 +0000 (UTC)
Received: from r3-19.sinamail.sina.com.cn (r3-19.sinamail.sina.com.cn
 [202.108.3.19]) by lists.linaro.org (Postfix) with SMTP id 19C756661F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:48:50 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([114.246.227.120])
 by sina.com with ESMTP
 id 5E8DC8290002A7AA; Wed, 8 Apr 2020 20:48:45 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 82000715073508
From: Hillf Danton <hdanton@sina.com>
To: Christoph Hellwig <hch@lst.de>
Date: Wed,  8 Apr 2020 20:48:33 +0800
Message-Id: <20200408124833.13032-1-hdanton@sina.com>
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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

Ck9uIFdlZCwgIDggQXByIDIwMjAgMTM6NTk6MDAgKzAyMDAKPiAKPiB2bV9tYXBfcmFtIGNhbiBr
ZWVwIG1hcHBpbmdzIGFyb3VuZCBhZnRlciB0aGUgdm1fdW5tYXBfcmFtLiAgVXNpbmcgdGhhdAo+
IHdpdGggbm9uLVBBR0VfS0VSTkVMIG1hcHBpbmdzIGNhbiBsZWFkIHRvIGFsbCBraW5kcyBvZiBh
bGlhc2luZyBpc3N1ZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhj
aEBsc3QuZGU+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVhcC5j
IHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVh
cC5jIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMKPiBpbmRleCA0NzNi
NDY1NzI0ZjEuLmEyZDVjNmRmNGI5NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvYW5k
cm9pZC9pb24vaW9uX2hlYXAuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9p
b25faGVhcC5jCj4gQEAgLTk5LDEyICs5OSwxMiBAQCBpbnQgaW9uX2hlYXBfbWFwX3VzZXIoc3Ry
dWN0IGlvbl9oZWFwICpoZWFwLCBzdHJ1Y3QgaW9uX2J1ZmZlciAqYnVmZmVyLAo+ICAKPiAgc3Rh
dGljIGludCBpb25faGVhcF9jbGVhcl9wYWdlcyhzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCBpbnQgbnVt
LCBwZ3Byb3RfdCBwZ3Byb3QpCj4gIHsKPiAtCXZvaWQgKmFkZHIgPSB2bV9tYXBfcmFtKHBhZ2Vz
LCBudW0sIC0xLCBwZ3Byb3QpOwo+ICsJdm9pZCAqYWRkciA9IHZtYXAocGFnZXMsIG51bSwgVk1f
TUFQKTsKCkEgbWVyZ2UgZ2xpdGNoPwoKdm9pZCAqdm1hcChzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCB1
bnNpZ25lZCBpbnQgY291bnQsCgkgICB1bnNpZ25lZCBsb25nIGZsYWdzLCBwZ3Byb3RfdCBwcm90
KQo+ICAKPiAgCWlmICghYWRkcikKPiAgCQlyZXR1cm4gLUVOT01FTTsKPiAgCW1lbXNldChhZGRy
LCAwLCBQQUdFX1NJWkUgKiBudW0pOwo+IC0Jdm1fdW5tYXBfcmFtKGFkZHIsIG51bSk7Cj4gKwl2
dW5tYXAoYWRkcik7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAtLSAKPiAyLjI1LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
