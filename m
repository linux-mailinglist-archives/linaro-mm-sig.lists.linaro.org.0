Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9A7147EDA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jan 2020 11:39:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9E8860E75
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jan 2020 10:39:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BE69E617B3; Fri, 24 Jan 2020 10:39:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9674A619CC;
	Fri, 24 Jan 2020 10:37:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA41A60749
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jan 2020 10:21:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BECAC60E75; Fri, 24 Jan 2020 10:21:07 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 1B80F60749
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jan 2020 10:21:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19992557-1500050 for multiple; Fri, 24 Jan 2020 10:20:58 +0000
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200124101311.drryaegcdc7d4x7e@kili.mountain>
References: <20200124101311.drryaegcdc7d4x7e@kili.mountain>
Message-ID: <157986125623.2524.13979010293671565726@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 Jan 2020 10:20:56 +0000
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: fix locking in sync_print_obj()
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDIwLTAxLTI0IDEwOjEzOjEyKQo+IFRoaXMgaXMgYWx3
YXlzIGNhbGxlZCB3aXRoIElSUXMgZGlzYWJsZWQgYW5kIHdlIGRvbid0IGFjdHVhbGx5IHdhbnQg
dG8KPiBlbmFibGUgSVJRcyBhdCB0aGUgZW5kLgo+IAo+IEZpeGVzOiBhNmFhOGZjYTRkNzkgKCJk
bWEtYnVmL3N3LXN5bmM6IFJlZHVjZSBpcnFzYXZlL2lycXJlc3RvcmUgZnJvbSBrbm93biBjb250
ZXh0IikKPiBTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNs
ZS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMgfCA1ICsrKy0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMgYi9kcml2ZXJzL2RtYS1idWYv
c3luY19kZWJ1Zy5jCj4gaW5kZXggMTAxMzk0ZjE2OTMwLi45NTIzMzEzNDRiMWMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9zeW5jX2RlYnVnLmMKPiBAQCAtMTA3LDE1ICsxMDcsMTYgQEAgc3RhdGljIHZvaWQgc3luY19w
cmludF9mZW5jZShzdHJ1Y3Qgc2VxX2ZpbGUgKnMsCj4gIHN0YXRpYyB2b2lkIHN5bmNfcHJpbnRf
b2JqKHN0cnVjdCBzZXFfZmlsZSAqcywgc3RydWN0IHN5bmNfdGltZWxpbmUgKm9iaikKPiAgewo+
ICAgICAgICAgc3RydWN0IGxpc3RfaGVhZCAqcG9zOwo+ICsgICAgICAgdW5zaWduZWQgbG9uZyBm
bGFnczsKPiAgCj4gICAgICAgICBzZXFfcHJpbnRmKHMsICIlczogJWRcbiIsIG9iai0+bmFtZSwg
b2JqLT52YWx1ZSk7Cj4gIAo+IC0gICAgICAgc3Bpbl9sb2NrX2lycSgmb2JqLT5sb2NrKTsKPiAr
ICAgICAgIHNwaW5fbG9ja19pcnFzYXZlKCZvYmotPmxvY2ssIGZsYWdzKTsKCkV4YWN0bHksIGl0
IGNhbiBiZSBqdXN0IHNwaW5fbG9jaygpIGFzIHRoZSBpcnEgc3RhdGUgaXMga25vd24uCgpPbmNl
IGFnYWluIEkgcXVlc3Rpb24gd2h5IHRoaXMgW3N5bmNfZGVidWcuY10gY29kZSBldmVuIGV4aXN0
cy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
