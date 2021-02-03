Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E8630D13D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 03:08:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9339966534
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 02:08:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 856CB617F5; Wed,  3 Feb 2021 02:08:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49F03619D7;
	Wed,  3 Feb 2021 02:07:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E29561786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 02:07:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 81F7E619D7; Wed,  3 Feb 2021 02:07:52 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by lists.linaro.org (Postfix) with ESMTPS id C18F961786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 02:07:50 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id b2so31113844lfq.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 18:07:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ayzfcSfxCvzlRbstGP9hGkgIcQ5hx1YuU1pxX+bWuHs=;
 b=EPBqgFPEHppGptR6I4itsPFlZoQLQJursgW472iRLJlwg2L+ujMlt+aC0uSQSWvfIu
 JNqWgtJVMv7Ur90eXcmgSrotdjKJqP4pR9sikUaJ1y9TqL63XaOpq4kEBXMWLTK5EjRT
 OFche6LiYrsk72BVLSK8qdw4e7S862LMaFeFyNCHSzfsPPRV0PEEojcV8qIsHSkLfVQw
 ezBpSf4q6YOsAvYKh2smbRLhdVKEee5dIMzNRvUWOdRvDtZXAFIPke52CVg+FBH4zB00
 vxzt+dypcU5rkx4i31XxhGO1uFlkE8vXtpqQtGOIYiSGsaHVh8ZX9lHli0Pa8Z8NFnp0
 dGHg==
X-Gm-Message-State: AOAM533lAVhoftxJhwGZfgis3kgNIGWoEvzfK1isSqQfiiXuVZ7X5it6
 CfI5r46M4OXRkBe2un5WkBI5zODBQelAYBqRae/qSAwp
X-Google-Smtp-Source: ABdhPJz/zm1PeC2ZluNB85wRkNtw1G6dZzG/v+ZbpRoZh6RdqPs9LSsJ6rK/g2cd13qi3PrT9YkluWDRlb8ciDHM4uI=
X-Received: by 2002:ac2:5590:: with SMTP id v16mr454568lfg.626.1612318069555; 
 Tue, 02 Feb 2021 18:07:49 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203003134.2422308-2-surenb@google.com>
In-Reply-To: <20210203003134.2422308-2-surenb@google.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 2 Feb 2021 18:07:38 -0800
Message-ID: <CALAqxLWJNDDx_MFvYHszFXy=aV9bZGi50L3zDtuGaiYUbHKHSA@mail.gmail.com>
To: Suren Baghdasaryan <surenb@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Android Kernel Team <kernel-team@android.com>,
 James Jones <jajones@nvidia.com>, lkml <linux-kernel@vger.kernel.org>,
 Liam Mark <lmark@codeaurora.org>, Brian Starkey <Brian.Starkey@arm.com>,
 Christoph Hellwig <hch@infradead.org>, Minchan Kim <minchan@kernel.org>,
 linux-mm <linux-mm@kvack.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: heaps: Map system heap
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

T24gVHVlLCBGZWIgMiwgMjAyMSBhdCA0OjMxIFBNIFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5i
QGdvb2dsZS5jb20+IHdyb3RlOgo+IEN1cnJlbnRseSBzeXN0ZW0gaGVhcCBtYXBzIGl0cyBidWZm
ZXJzIHdpdGggVk1fUEZOTUFQIGZsYWcgdXNpbmcKPiByZW1hcF9wZm5fcmFuZ2UuIFRoaXMgcmVz
dWx0cyBpbiBzdWNoIGJ1ZmZlcnMgbm90IGJlaW5nIGFjY291bnRlZAo+IGZvciBpbiBQU1MgY2Fs
Y3VsYXRpb25zIGJlY2F1c2Ugdm0gdHJlYXRzIHRoaXMgbWVtb3J5IGFzIGhhdmluZyBubwo+IHBh
Z2Ugc3RydWN0cy4gV2l0aG91dCBwYWdlIHN0cnVjdHMgdGhlcmUgYXJlIG5vIGNvdW50ZXJzIHJl
cHJlc2VudGluZwo+IGhvdyBtYW55IHByb2Nlc3NlcyBhcmUgbWFwcGluZyBhIHBhZ2UgYW5kIHRo
ZXJlZm9yZSBQU1MgY2FsY3VsYXRpb24KPiBpcyBpbXBvc3NpYmxlLgo+IEhpc3RvcmljYWxseSwg
SU9OIGRyaXZlciB1c2VkIHRvIG1hcCBpdHMgYnVmZmVycyBhcyBWTV9QRk5NQVAgYXJlYXMKPiBk
dWUgdG8gbWVtb3J5IGNhcnZlb3V0cyB0aGF0IGRpZCBub3QgaGF2ZSBwYWdlIHN0cnVjdHMgWzFd
LiBUaGF0Cj4gaXMgbm90IHRoZSBjYXNlIGFueW1vcmUgYW5kIGl0IHNlZW1zIHRoZXJlIHdhcyBk
ZXNpcmUgdG8gbW92ZSBhd2F5Cj4gZnJvbSByZW1hcF9wZm5fcmFuZ2UgWzJdLgo+IERtYWJ1ZiBz
eXN0ZW0gaGVhcCBkZXNpZ24gaW5oZXJpdHMgdGhpcyBJT04gYmVoYXZpb3IgYW5kIG1hcHMgaXRz
Cj4gcGFnZXMgdXNpbmcgcmVtYXBfcGZuX3JhbmdlIGV2ZW4gdGhvdWdoIGFsbG9jYXRlZCBwYWdl
cyBhcmUgYmFja2VkCj4gYnkgcGFnZSBzdHJ1Y3RzLgo+IFJlcGxhY2UgcmVtYXBfcGZuX3Jhbmdl
IHdpdGggdm1faW5zZXJ0X3BhZ2UsIGZvbGxvd2luZyBMYXVyYSdzIHN1Z2dlc3Rpb24KPiBpbiBb
MV0uIFRoaXMgd291bGQgYWxsb3cgY29ycmVjdCBQU1MgY2FsY3VsYXRpb24gZm9yIGRtYWJ1ZnMu
Cj4KPiBbMV0gaHR0cHM6Ly9kcml2ZXJkZXYtZGV2ZWwubGludXhkcml2ZXJwcm9qZWN0Lm5hcmtp
dmUuY29tL3YwZkpHcGFEL3VzaW5nLWlvbi1tZW1vcnktZm9yLWRpcmVjdC1pbwo+IFsyXSBodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvcGlwZXJtYWlsL2RyaXZlcmRldi1k
ZXZlbC8yMDE4LU9jdG9iZXIvMTI3NTE5Lmh0bWwKPiAoc29ycnksIGNvdWxkIG5vdCBmaW5kIGxv
cmUgbGlua3MgZm9yIHRoZXNlIGRpc2N1c3Npb25zKQo+Cj4gU3VnZ2VzdGVkLWJ5OiBMYXVyYSBB
YmJvdHQgPGxhYmJvdHRAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTdXJlbiBCYWdoZGFz
YXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgoKRm9yIGNvbnNpc3RlbmN5LCBkbyB3ZSBuZWVkIHNv
bWV0aGluZyBzaW1pbGFyIGZvciB0aGUgY21hIGhlYXAgYXMgd2VsbD8KCnRoYW5rcwotam9obgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
