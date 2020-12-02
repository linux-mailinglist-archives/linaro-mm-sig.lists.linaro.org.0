Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA1F2CBEC5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 14:55:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2832D6659B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 13:55:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19E2A66611; Wed,  2 Dec 2020 13:55:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CA4666597;
	Wed,  2 Dec 2020 13:54:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6AAB660999
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 13:54:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5E05266597; Wed,  2 Dec 2020 13:54:38 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 7789360999
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 13:54:37 +0000 (UTC)
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kkSaM-0001t5-RK; Wed, 02 Dec 2020 13:54:23 +0000
Date: Wed, 2 Dec 2020 13:54:22 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Minchan Kim <minchan@kernel.org>
Message-ID: <20201202135422.GB5902@infradead.org>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-5-minchan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201201175144.3996569-5-minchan@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, Brian.Starkey@arm.com,
 linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 linaro-mm-sig@lists.linaro.org, linux-mm <linux-mm@kvack.org>,
 john.stultz@linaro.org, christian.koenig@amd.com, joaodias@google.com,
 hridya@google.com, Andrew Morton <akpm@linux-foundation.org>,
 pullip.cho@samsung.com, surenb@google.com, iamjoonsoo.kim@lge.com,
 vbabka@suse.cz, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v2 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
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

T24gVHVlLCBEZWMgMDEsIDIwMjAgYXQgMDk6NTE6NDRBTSAtMDgwMCwgTWluY2hhbiBLaW0gd3Jv
dGU6Cj4gRnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gCj4gVGhpcyBw
YXRjaCBzdXBwb3J0cyBjaHVuayBoZWFwIHRoYXQgYWxsb2NhdGVzIHRoZSBidWZmZXJzIHRoYXQK
PiBhcnJhbmdlZCBpbnRvIGEgbGlzdCBhIGZpeGVkIHNpemUgY2h1bmtzIHRha2VuIGZyb20gQ01B
Lgo+IAo+IFRoZSBjaHVuayBoZWFwIGRvZXNuJ3QgdXNlIGhlYXAtaGVscGVyIGFsdGhvdWdoIGl0
IGNhbiByZW1vdmUKPiBkdXBsaWNhdGVkIGNvZGUgc2luY2UgaGVhcC1oZWxwZXIgaXMgdW5kZXIg
ZGVwcmVjYXRlZCBwcm9jZXNzLlsxXQo+IAo+IE5PVEU6IFRoaXMgcGF0Y2ggb25seSBhZGRzIHRo
ZSBkZWZhdWx0IENNQSBoZWFwIHRvIGFsbG9jYXRlIGNodW5rCj4gcGFnZXMuIFdlIHdpbGwgYWRk
IGFub3RoZXIgQ01BIG1lbW9yeSByZWdpb25zIHRvIHRoZSBkbWFidWYgaGVhcHMKPiBpbnRlcmZh
Y2Ugd2l0aCBhIGxhdGVyIHBhdGNoICh3aGljaCByZXF1aXJlcyBhIGR0IGJpbmRpbmcpCgpUaGlz
IG5ldyBoZWFwIHNlZW1zIHRvIGxhcmdlbHkgZHVwbGljYXRlIHRoZSBleHN0aW5nIGNtYV9oZWFw
LmMKZmlsZS4gIFdoeSBjYW4ndCB5b3UgcmV1c2UgdGhlIGNvZGUgYW5kIGFsbG93IGNyZWF0aW5n
IGRpZmZlcmVudApoZWFwcyB3aXRoIGRpZmZlcmVudCBjaHVuayBzaXplcyBvciBtYXggbnVtYmVy
cyBvZiBzZWdtZW50cz8KCj4gK2NvbmZpZyBETUFCVUZfSEVBUFNfQ0hVTktfT1JERVIKPiArCWlu
dCAiQ2h1bmsgcGFnZSBvcmRlciBmb3IgZG1hYnVmIGNodW5rIGhlYXAiCj4gKwlkZWZhdWx0IDQK
PiArCWRlcGVuZHMgb24gRE1BQlVGX0hFQVBTX0NIVU5LCj4gKwloZWxwCj4gKwkgIFNldCBwYWdl
IG9yZGVyIG9mIGZpeGVkIGNodW5rIHNpemUgdG8gYWxsb2NhdGUgZnJvbSBDTUEuCgpVc2luZyBh
IGNvbmZpZyBvcHRpb24gZm9yIHRoaXMgaXMganVzdCBicm9rZW4uICBJdCBuZWVkcyB0byBiZSBy
dW50aW1lCm9yIGF0IHZlcnkgbGVhc3QgYm9vdCB0aW1lIC8gRFQgY29udHJvbGxhYmxlLgoKPiAr
ICogSU9OIE1lbW9yeSBBbGxvY2F0b3IgY2h1bmsgaGVhcCBleHBvcnRlcgoKVGhpcyBjb21tZW50
IHNlZW1zIHdyb25nLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
