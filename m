Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 465E930E40C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 21:30:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73EC461081
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 20:30:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6131366049; Wed,  3 Feb 2021 20:30:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB53E614FF;
	Wed,  3 Feb 2021 20:30:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 33FA660C30
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 20:30:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 18DC2614FF; Wed,  3 Feb 2021 20:30:06 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by lists.linaro.org (Postfix) with ESMTPS id 7A3A860C30
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 20:30:04 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id n7so1236714oic.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 12:30:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eNYLKrHHFpo2W+MgM64k66uhU/rYD0kH/7hNDtjliGE=;
 b=KiOHGpTv4/NVtyv3sm/56OcFv2deKGfSXC+H/ctLf240toRqK8NptniF+ZVN5wvf8h
 2I+Pdh1LT9yZKLsHzvm9KHYc0x2dV6rkfLBQdidz4c85QKdkfR5Fl3lbt9Y9Z/AaEsHr
 pqGg40vUnc5W/Cq/hbU0b9iQYOkYceJllZ0/gnBH1RdQEQGDuXAx0736IkX58NetME+1
 EyDZ+DgjuoPLJ4Ktdi01SZ9ZJL4+5eySkqxpL001JcgLMTcEPPqlIQ7636lXCgaIejR4
 d0KwJQwj4IkYdzxHUaApH/SR+9tZSlzymuSE5VstskxZAZXECUihMp9QJw+ZvcJtheOO
 fwaA==
X-Gm-Message-State: AOAM532FaWE7fRkzPxAdqAnJPlwPIr3CPZCS/TfRFjVymZisqpEoOgxj
 OZ5zdH1VhqDb7SSEo2Y8tdvwxs5YRYMX3E3nfqfUMA==
X-Google-Smtp-Source: ABdhPJyZhpy+g0VGu5Ql8GRoYkjiipujRTnm3ivUEZ35jHpMHly6+eUAlEp4YwgW+F7ju02Z87k8fcr1y7ezggeHw5s=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr2940752oia.14.1612384203966; 
 Wed, 03 Feb 2021 12:30:03 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
 <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
In-Reply-To: <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 3 Feb 2021 21:29:52 +0100
Message-ID: <CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com>
To: Suren Baghdasaryan <surenb@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christoph Hellwig <hch@infradead.org>, Sandeep Patil <sspatil@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 Robin Murphy <robin.murphy@arm.com>, James Jones <jajones@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Brian Starkey <Brian.Starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, John Stultz <john.stultz@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gV2VkLCBGZWIgMywgMjAyMSBhdCA5OjIwIFBNIFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5i
QGdvb2dsZS5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBGZWIgMywgMjAyMSBhdCAxMjo1MiBBTSBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+Cj4gPiBPbiBX
ZWQsIEZlYiAzLCAyMDIxIGF0IDI6NTcgQU0gTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVh
ZC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUdWUsIEZlYiAwMiwgMjAyMSBhdCAwNDozMToz
M1BNIC0wODAwLCBTdXJlbiBCYWdoZGFzYXJ5YW4gd3JvdGU6Cj4gPiA+ID4gUmVwbGFjZSBCVUdf
T04odm1hLT52bV9mbGFncyAmIFZNX1BGTk1BUCkgaW4gdm1faW5zZXJ0X3BhZ2Ugd2l0aAo+ID4g
PiA+IFdBUk5fT05fT05DRSBhbmQgcmV0dXJuaW5nIGFuIGVycm9yLiBUaGlzIGlzIHRvIGVuc3Vy
ZSB1c2VycyBvZiB0aGUKPiA+ID4gPiB2bV9pbnNlcnRfcGFnZSB0aGF0IHNldCBWTV9QRk5NQVAg
YXJlIG5vdGlmaWVkIG9mIHRoZSB3cm9uZyBmbGFnIHVzYWdlCj4gPiA+ID4gYW5kIGdldCBhbiBp
bmRpY2F0aW9uIG9mIGFuIGVycm9yIHdpdGhvdXQgcGFuaWNpbmcgdGhlIGtlcm5lbC4KPiA+ID4g
PiBUaGlzIHdpbGwgaGVscCBpZGVudGlmeWluZyBkcml2ZXJzIHRoYXQgbmVlZCB0byBjbGVhciBW
TV9QRk5NQVAgYmVmb3JlCj4gPiA+ID4gdXNpbmcgZG1hYnVmIHN5c3RlbSBoZWFwIHdoaWNoIGlz
IG1vdmluZyB0byB1c2Ugdm1faW5zZXJ0X3BhZ2UuCj4gPiA+Cj4gPiA+IE5BQ0suCj4gPiA+Cj4g
PiA+IFRoZSBzeXN0ZW0gbWF5IG5vdCBfcGFuaWNfLCBidXQgaXQgaXMgY2xlYXJseSBub3cgX2Jy
b2tlbl8uICBUaGUgZGV2aWNlCj4gPiA+IGRvZXNuJ3Qgd29yaywgYW5kIHNvIHRoZSBzeXN0ZW0g
aXMgdXNlbGVzcy4gIFlvdSBoYXZlbid0IHJlYWxseSBpbXByb3ZlZAo+ID4gPiBhbnl0aGluZyBo
ZXJlLiAgSnVzdCBibG9hdGVkIHRoZSBrZXJuZWwgd2l0aCB5ZXQgYW5vdGhlciBfT05DRSB2YXJp
YWJsZQo+ID4gPiB0aGF0IGluIGEgbm9ybWFsIHN5c3RlbSB3aWxsIG5ldmVyIGV2ZXIgZXZlciBi
ZSB0cmlnZ2VyZWQuCj4gPgo+ID4gQWxzbywgd2hhdCB0aGUgaGVjayBhcmUgeW91IGRvaW5nIHdp
dGggeW91ciBkcml2ZXJzPyBkbWEtYnVmIG1tYXAgbXVzdAo+ID4gY2FsbCBkbWFfYnVmX21tYXAo
KSwgZXZlbiBmb3IgZm9yd2FyZGVkL3JlZGlyZWN0ZWQgbW1hcHMgZnJvbSBkcml2ZXIKPiA+IGNo
YXIgbm9kZXMuIElmIHRoYXQgZG9lc24ndCB3b3JrIHdlIGhhdmUgc29tZSBpc3N1ZXMgd2l0aCB0
aGUgY2FsbGluZwo+ID4gY29udHJhY3QgZm9yIHRoYXQgZnVuY3Rpb24sIG5vdCBpbiB2bV9pbnNl
cnRfcGFnZS4KPgo+IFRoZSBwYXJ0aWN1bGFyIGlzc3VlIEkgb2JzZXJ2ZWQgKGRldGFpbHMgd2Vy
ZSBwb3N0ZWQgaW4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTM3
MjQwOSkgaXMgdGhhdCBEUk0gZHJpdmVycwo+IHNldCBWTV9QRk5NQVAgZmxhZyAodmlhIGEgY2Fs
bCB0byBkcm1fZ2VtX21tYXBfb2JqKSBiZWZvcmUgY2FsbGluZwo+IGRtYV9idWZfbW1hcC4gU29t
ZSBkcml2ZXJzIGNsZWFyIHRoYXQgZmxhZyBidXQgc29tZSBkb24ndC4gSSBjb3VsZCBub3QKPiBm
aW5kIHRoZSBhbnN3ZXIgdG8gd2h5IFZNX1BGTk1BUCBpcyByZXF1aXJlZCBmb3IgZG1hYnVmIG1h
cHBpbmdzIGFuZAo+IG1heWJlIHNvbWVvbmUgY2FuIGV4cGxhaW4gdGhhdCBoZXJlPwo+IElmIHRo
ZXJlIGlzIGEgcmVhc29uIHRvIHNldCB0aGlzIGZsYWcgb3RoZXIgdGhhbiBoaXN0b3JpY2FsIHVz
ZSBvZgo+IGNhcnZlb3V0IG1lbW9yeSB0aGVuIHdlIHdhbnRlZCB0byBjYXRjaCBzdWNoIGNhc2Vz
IGFuZCBmaXggdGhlIGRyaXZlcnMKPiB0aGF0IG1vdmVkIHRvIHVzaW5nIGRtYWJ1ZiBoZWFwcy4g
SG93ZXZlciBtYXliZSB0aGVyZSBhcmUgb3RoZXIKPiByZWFzb25zIGFuZCBpZiBzbyBJIHdvdWxk
IGJlIHZlcnkgZ3JhdGVmdWwgaWYgc29tZW9uZSBjb3VsZCBleHBsYWluCj4gdGhlbS4gVGhhdCB3
b3VsZCBoZWxwIG1lIHRvIGNvbWUgdXAgd2l0aCBhIGJldHRlciBzb2x1dGlvbi4KPgo+ID4gRmlu
YWxseSB3aHkgZXhhY3RseSBkbyB3ZSBuZWVkIHRvIG1ha2UgdGhpcyBzd2l0Y2ggZm9yIHN5c3Rl
bSBoZWFwPwo+ID4gSSd2ZSByZWNlbnRseSBsb29rZWQgYXQgZ3VwIHVzYWdlIGJ5IHJhbmRvbSBk
cml2ZXJzLCBhbmQgZm91bmQgYSBsb3QKPiA+IG9mIHdvcnJ5aW5nIHRoaW5ncyB0aGVyZS4gZ3Vw
IG9uIGRtYS1idWYgaXMgcmVhbGx5IGJhZCBpZGVhIGluCj4gPiBnZW5lcmFsLgo+Cj4gVGhlIHJl
YXNvbiBmb3IgdGhlIHN3aXRjaCBpcyB0byBiZSBhYmxlIHRvIGFjY291bnQgZG1hYnVmcyBhbGxv
Y2F0ZWQKPiB1c2luZyBkbWFidWYgaGVhcHMgdG8gdGhlIHByb2Nlc3NlcyB0aGF0IG1hcCB0aGVt
LiBUaGUgbmV4dCBwYXRjaCBpbgo+IHRoaXMgc2VyaWVzIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3BhdGNod29yay9wYXRjaC8xMzc0ODUxCj4gaW1wbGVtZW50aW5nIHRoZSBzd2l0Y2ggY29udGFp
bnMgbW9yZSBkZXRhaWxzIGFuZCB0aGVyZSBpcyBhbiBhY3RpdmUKPiBkaXNjdXNzaW9uIHRoZXJl
LiBXb3VsZCB5b3UgbWluZCBqb2luaW5nIHRoYXQgZGlzY3Vzc2lvbiB0byBrZWVwIGl0IGluCj4g
b25lIHBsYWNlPwoKSG93IG1hbnkgc2VtaS11bnJlbGF0ZWQgYnVmZmVyIGFjY291bnRpbmcgc2No
ZW1lcyBkb2VzIGdvb2dsZSBjb21lIHVwIHdpdGg/CgpXZSdyZSBhdCB0aHJlZSB3aXRoIHRoaXMg
b25lLgoKQW5kIGFsc28gd2UgX2Nhbm5vdF8gcmVxdWlyZWQgdGhhdCBhbGwgZG1hLWJ1ZnMgYXJl
IGJhY2tlZCBieSBzdHJ1Y3QKcGFnZSwgc28gcmVxdWlyaW5nIHN0cnVjdCBwYWdlIHRvIG1ha2Ug
dGhpcyB3b3JrIGlzIGEgbm8tZ28uCgpTZWNvbmQsIHdlIGRvIG5vdCB3YW50IHRvIGFsbCBnZXRf
dXNlcl9wYWdlcyBhbmQgZnJpZW5kcyB0byB3b3JrIG9uCmRtYS1idWYsIGl0IGNhdXNlcyBhbGwg
a2luZHMgb2YgcGFpbi4gWWVzIG9uIFNvQyB3aGVyZSBkbWEtYnVmIGFyZQpleGNsdXNpdmVseSBp
biBzeXN0ZW0gbWVtb3J5IHlvdSBjYW4gbWF5YmUgZ2V0IGF3YXkgd2l0aCB0aGlzLCBidXQKZG1h
LWJ1ZiBpcyBzdXBwb3NlZCB0byB3b3JrIGluIG1vcmUgcGxhY2VzIHRoYW4ganVzdCBBbmRyb2lk
IFNvQ3MuCgpJZiB5b3Ugd2FudCB0byBhY2NvdW50IGRtYS1idWZzLCBhbmQgZ3B1IG1lbW9yeSBp
biBnZW5lcmFsLCBJJ2Qgc2F5CnRoZSBzb2xpZCBzb2x1dGlvbiBpcyBjZ3JvdXBzLiBUaGVyZSdz
IHBhdGNoZXMgZmxvYXRpbmcgYXJvdW5kLiBBbmQKZ2l2ZW4gdGhhdCBHb29nbGUgQW5kcm9pZCBj
YW4ndCBldmVuIGFncmVlIGludGVybmFsbHkgb24gd2hhdCBleGFjdGx5CnlvdSB3YW50IEknZCBz
YXkgd2UganVzdCBuZWVkIHRvIGN1dCBvdmVyIHRvIHRoYXQgYW5kIG1ha2UgaXQgaGFwcGVuLgoK
Q2hlZXJzLCBEYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVs
IENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
