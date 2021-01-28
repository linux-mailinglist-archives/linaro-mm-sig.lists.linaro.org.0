Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4755C307261
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 10:14:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66F4761081
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 09:14:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 585676675F; Thu, 28 Jan 2021 09:14:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0D706674C;
	Thu, 28 Jan 2021 09:14:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 164B061081
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 09:14:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0247E6674C; Thu, 28 Jan 2021 09:14:13 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 3250C61081
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 09:14:11 +0000 (UTC)
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l53N6-008FCm-Sp; Thu, 28 Jan 2021 09:13:49 +0000
Date: Thu, 28 Jan 2021 09:13:48 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <20210128091348.GA1962975@infradead.org>
References: <20210128083817.314315-1-surenb@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128083817.314315-1-surenb@google.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: sspatil@google.com, cgoldswo@codeaurora.org, christian.koenig@amd.com,
 kernel-team@android.com, jajones@nvidia.com, linux-kernel@vger.kernel.org,
 lmark@codeaurora.org, Brian.Starkey@arm.com, linaro-mm-sig@lists.linaro.org,
 minchan@kernel.org, john.stultz@linaro.org, dri-devel@lists.freedesktop.org,
 benjamin.gaignard@linaro.org, hridya@google.com, robin.murphy@arm.com,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/1] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMTI6Mzg6MTdBTSAtMDgwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IEN1cnJlbnRseSBzeXN0ZW0gaGVhcCBtYXBzIGl0cyBidWZmZXJzIHdpdGgg
Vk1fUEZOTUFQIGZsYWcgdXNpbmcKPiByZW1hcF9wZm5fcmFuZ2UuIFRoaXMgcmVzdWx0cyBpbiBz
dWNoIGJ1ZmZlcnMgbm90IGJlaW5nIGFjY291bnRlZAo+IGZvciBpbiBQU1MgY2FsY3VsYXRpb25z
IGJlY2F1c2Ugdm0gdHJlYXRzIHRoaXMgbWVtb3J5IGFzIGhhdmluZyBubwo+IHBhZ2Ugc3RydWN0
cy4gV2l0aG91dCBwYWdlIHN0cnVjdHMgdGhlcmUgYXJlIG5vIGNvdW50ZXJzIHJlcHJlc2VudGlu
Zwo+IGhvdyBtYW55IHByb2Nlc3NlcyBhcmUgbWFwcGluZyBhIHBhZ2UgYW5kIHRoZXJlZm9yZSBQ
U1MgY2FsY3VsYXRpb24KPiBpcyBpbXBvc3NpYmxlLgo+IEhpc3RvcmljYWxseSwgSU9OIGRyaXZl
ciB1c2VkIHRvIG1hcCBpdHMgYnVmZmVycyBhcyBWTV9QRk5NQVAgYXJlYXMKPiBkdWUgdG8gbWVt
b3J5IGNhcnZlb3V0cyB0aGF0IGRpZCBub3QgaGF2ZSBwYWdlIHN0cnVjdHMgWzFdLiBUaGF0Cj4g
aXMgbm90IHRoZSBjYXNlIGFueW1vcmUgYW5kIGl0IHNlZW1zIHRoZXJlIHdhcyBkZXNpcmUgdG8g
bW92ZSBhd2F5Cj4gZnJvbSByZW1hcF9wZm5fcmFuZ2UgWzJdLgo+IERtYWJ1ZiBzeXN0ZW0gaGVh
cCBkZXNpZ24gaW5oZXJpdHMgdGhpcyBJT04gYmVoYXZpb3IgYW5kIG1hcHMgaXRzCj4gcGFnZXMg
dXNpbmcgcmVtYXBfcGZuX3JhbmdlIGV2ZW4gdGhvdWdoIGFsbG9jYXRlZCBwYWdlcyBhcmUgYmFj
a2VkCj4gYnkgcGFnZSBzdHJ1Y3RzLgo+IENsZWFyIFZNX0lPIGFuZCBWTV9QRk5NQVAgZmxhZ3Mg
d2hlbiBtYXBwaW5nIG1lbW9yeSBhbGxvY2F0ZWQgYnkgdGhlCj4gc3lzdGVtIGhlYXAgYW5kIHJl
cGxhY2UgcmVtYXBfcGZuX3JhbmdlIHdpdGggdm1faW5zZXJ0X3BhZ2UsIGZvbGxvd2luZwo+IExh
dXJhJ3Mgc3VnZ2VzdGlvbiBpbiBbMV0uIFRoaXMgd291bGQgYWxsb3cgY29ycmVjdCBQU1MgY2Fs
Y3VsYXRpb24KPiBmb3IgZG1hYnVmcy4KPiAKPiBbMV0gaHR0cHM6Ly9kcml2ZXJkZXYtZGV2ZWwu
bGludXhkcml2ZXJwcm9qZWN0Lm5hcmtpdmUuY29tL3YwZkpHcGFEL3VzaW5nLWlvbi1tZW1vcnkt
Zm9yLWRpcmVjdC1pbwo+IFsyXSBodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvcGlwZXJtYWlsL2RyaXZlcmRldi1kZXZlbC8yMDE4LU9jdG9iZXIvMTI3NTE5Lmh0bWwKPiAo
c29ycnksIGNvdWxkIG5vdCBmaW5kIGxvcmUgbGlua3MgZm9yIHRoZXNlIGRpc2N1c3Npb25zKQo+
IAo+IFN1Z2dlc3RlZC1ieTogTGF1cmEgQWJib3R0IDxsYWJib3R0QGtlcm5lbC5vcmc+Cj4gU2ln
bmVkLW9mZi1ieTogU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCA2ICsrKystLQo+ICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9zeXN0ZW1faGVhcC5jCj4gaW5kZXggMTdlMGU5YTY4YmFmLi4wZTkyZTQyYjIyNTEg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMKPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYwo+IEBAIC0yMDAsMTEgKzIwMCwx
MyBAQCBzdGF0aWMgaW50IHN5c3RlbV9oZWFwX21tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
c3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCj4gIAlzdHJ1Y3Qgc2dfcGFnZV9pdGVyIHBpdGVy
Owo+ICAJaW50IHJldDsKPiAgCj4gKwkvKiBBbGwgcGFnZXMgYXJlIGJhY2tlZCBieSBhICJzdHJ1
Y3QgcGFnZSIgKi8KPiArCXZtYS0+dm1fZmxhZ3MgJj0gflZNX1BGTk1BUDsKCldoeSBkbyB3ZSBj
bGVhciB0aGlzIGZsYWc/ICBJdCBzaG91bGRuJ3QgZXZlbiBiZSBzZXQgaGVyZSBhcyBmYXIgYXMg
SQpjYW4gdGVsbC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
