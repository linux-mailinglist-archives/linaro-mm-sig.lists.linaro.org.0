Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 03082248502
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:44:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30B8865FD7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:44:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2282766572; Tue, 18 Aug 2020 12:44:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 526C560428;
	Tue, 18 Aug 2020 12:32:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F25976192C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Jul 2020 09:32:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E73A8665A6; Fri, 31 Jul 2020 09:32:46 +0000 (UTC)
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
 by lists.linaro.org (Postfix) with ESMTP id EB7396192C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Jul 2020 09:32:44 +0000 (UTC)
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 31 Jul 2020 18:32:42 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 4118360060;
 Fri, 31 Jul 2020 18:32:42 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Fri, 31 Jul 2020 18:32:42 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 1A69A40327;
 Fri, 31 Jul 2020 18:32:42 +0900 (JST)
Received: from [10.212.6.48] (unknown [10.212.6.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 79B53120498;
 Fri, 31 Jul 2020 18:32:41 +0900 (JST)
To: John Stultz <john.stultz@linaro.org>
References: <1594948208-4739-1-git-send-email-hayashi.kunihiko@socionext.com>
 <CALAqxLXuJQOCXcpyWwyBFZGFK_dEgG0edEEf2=vOpAw6Ng8mBQ@mail.gmail.com>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <eacfc713-e98a-78fa-b316-3943600813d0@socionext.com>
Date: Fri, 31 Jul 2020 18:32:41 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CALAqxLXuJQOCXcpyWwyBFZGFK_dEgG0edEEf2=vOpAw6Ng8mBQ@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: Christian Koenig <christian.koenig@amd.com>,
 lkml <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Brian Starkey <Brian.Starkey@arm.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Introduce
 dma_heap_add_cma() for non-default CMA heap
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgSm9obiwKVGhhbmsgeW91IGZvciB5b3VyIGNvbW1lbnQuCgpPbiAyMDIwLzA3LzI5IDQ6MTcs
IEpvaG4gU3R1bHR6IHdyb3RlOgo+IE9uIFRodSwgSnVsIDE2LCAyMDIwIGF0IDY6MTAgUE0gS3Vu
aWhpa28gSGF5YXNoaQo+IDxoYXlhc2hpLmt1bmloaWtvQHNvY2lvbmV4dC5jb20+IHdyb3RlOgo+
Pgo+PiBDdXJyZW50IGRtYS1idWYgaGVhcHMgY2FuIGhhbmRsZSBvbmx5IGRlZmF1bHQgQ01BLiBU
aGlzIGludHJvZHVjZXMKPj4gZG1hX2hlYXBfYWRkX2NtYSgpIGZ1bmN0aW9uIHRvIGF0dGFjaCBD
TUEgaGVhcHMgdGhhdCBiZWxvbmdzIHRvIGEgZGV2aWNlLgo+Pgo+PiBBdCBmaXJzdCwgdGhlIGRy
aXZlciBjYWxscyBvZl9yZXNlcnZlZF9tZW1fZGV2aWNlX2luaXQoKSB0byBzZXQKPj4gbWVtb3J5
LXJlZ2lvbiBwcm9wZXJ0eSBhc3NvY2lhdGVkIHdpdGggcmVzZXJ2ZWQtbWVtb3J5IGRlZmluZWQg
YXMgQ01BCj4+IHRvIHRoZSBkZXZpY2UuIEFuZCB3aGVuIHRoZSBkcml2ZXIgY2FsbHMgdGhpcyBk
bWFfaGVhcF9hZGRfY21hKCksCj4+IHRoZSBDTUEgd2lsbCBiZSBhZGRlZCB0byBkbWEtYnVmIGhl
YXBzLgo+Pgo+PiBGb3IgZXhhbXBsZSwgcHJlcGFyZSBDTUEgbm9kZSBuYW1lZCAibGludXgsY21h
QDEwMDAwMDAwIiBhbmQKPj4gc3BlY2lmeSB0aGUgbm9kZSBmb3IgbWVtb3J5LXJlZ2lvbiBwcm9w
ZXJ0eS4gQWZ0ZXIgdGhlIGFib3ZlIGNhbGxzCj4+IGluIHRoZSBkcml2ZXIsIGEgZGV2aWNlIGZp
bGUgIi9kZXYvZG1hX2hlYXAvbGludXgsY21hQDEwMDAwMDAwIgo+PiBhc3NvY2lhdGVkIHdpdGgg
dGhlIENNQSBiZWNvbWUgYXZhaWxhYmxlIGFzIGRtYS1idWYgaGVhcHMuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEt1bmloaWtvIEhheWFzaGkgPGhheWFzaGkua3VuaWhpa29Ac29jaW9uZXh0LmNvbT4K
Pj4gLS0tCj4+ICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgfCAxMiArKysrKysr
KysrKysKPj4gICBpbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmggICAgICAgICB8ICA5ICsrKysrKysr
Kwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQo+IAo+IEhleSEgU29ycnkg
Zm9yIHRoZSBzbG93IHJlc3BvbnNlIG9uIHRoaXMhIEkganVzdCByZWFsaXplZCBJIG5ldmVyIHJl
cGxpZWQhCgpJIHdhaXRlZCBidXQgbm8gcHJvYmxlbS4KCj4gCj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFf
aGVhcC5jCj4+IGluZGV4IDYyNmNmN2YuLjVkMjQ0MmUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9j
bWFfaGVhcC5jCgpbc25pcF0KCj4+IC0tCj4+IDIuNy40Cj4gCj4gTG9va3Mgc2FuZSB0byBtZS4g
IEJlaW5nIGFibGUgdG8gZXhwb3NlIGRpZmZlcmVudCBtdWx0aXBsZSBDTUEgaGVhcHMKPiBpcyBu
ZWVkZWQsIGFuZCBJIGFncmVlIHRoaXMgd2F5IChhcyBvcHBvc2VkIHRvIG15IGVhcmxpZXIgZHRz
Cj4gYXBwcmFvY2gpIGlzIHByb2JhYmx5IHRoZSBiZXN0IGFwcHJvYWNoLiBUaGUgb25seSBiaXQg
SSdtIHNvLXNvIG9uIGlzCj4gYWRkaW5nIHRoZSBDTUEgaGVhcCBzcGVjaWZpYyBjYWxsIGluIHRo
ZSBkbWEtaGVhcC5oLCBidXQgYXQgdGhlIHNhbWUKPiB0aW1lIEkgY2FuJ3QganVzdGlmeSBhZGRp
bmcgYSB3aG9sZSBuZXcgaGVhZGVyIGZvciBhIHNpbmdsZSBmdW5jdGlvbi4KCkknbSBhbHNvIGEg
bGl0dGxlIHdvcnJpZWQgYWJvdXQgd2hldGhlciAiQ01BIHNwZWNpZmljIiBjYWxsIGlzIGluCnRo
ZSBkbWEtaGVhcC5oLCBob3dldmVyIEkgY2FuJ3QgZmluZCBhbm90aGVyIHNvbHV0aW9uLgoKPiBE
byB5b3UgaGF2ZSBhIHVwc3RyZWFtIGRyaXZlciB0aGF0IHlvdSBwbGFuIHRvIG1ha2UgdXNlIHRo
aXMgbmV3IGNhbGw/CgpVbmZvcnR1bmF0ZWx5IEkgZG9uJ3QgaGF2ZSBhbiB1cHN0cmVhbSBkcml2
ZXIgdXNpbmcgdGhpcyBjYWxsLgoKVGhpcyBjYWxsIGlzIGNhbGxlZCBmcm9tIGRtYS1idWYgaGVh
cHMgImltcG9ydGVyIiBvciAiY3VzdG9tZXIiLAphbmQgSSBvbmx5IG1hZGUgYW4gZXhhbXBsZSAo
ZG8gbm90aGluZykgaW1wb3J0ZXIgZHJpdmVyCnRvIHRlc3QgdGhlIGNhbGwuCgo+IFdlIHdhbnQg
dG8gaGF2ZSBpbi10cmVlIHVzZXJzIG9mIGNvZGUgYWRkZWQuCgpJIHRoaW5rIHRoaXMgaXMgYSBn
ZW5lcmljIHdheSB0byB1c2Ugbm9uLWRlZmF1bHQgQ01BIGhlYXBzLCBob3dldmVyLAp3ZSBuZWVk
IGluLXRyZWUgImltcG9ydGVyIiBkcml2ZXJzIHRvIHdhbnQgdG8gdXNlIG5vbi1kZWZhdWx0IENN
QSBoZWFwcy4KSSBkb24ndCBmaW5kIGl0IGZyb20gbm93LgoKPiBCdXQgaWYgc28sIGZlZWwgZnJl
ZSB0byBhZGQgbXk6Cj4gICAgQWNrZWQtYnk6IEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0ekBsaW5h
cm8ub3JnPgo+IFRvIHRoaXMgcGF0Y2ggd2hlbiB5b3Ugc3VibWl0IHRoZSBkcml2ZXIgY2hhbmdl
cy4KClRoYW5rIHlvdSwKCi0tLQpCZXN0IFJlZ2FyZHMKS3VuaWhpa28gSGF5YXNoaQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
