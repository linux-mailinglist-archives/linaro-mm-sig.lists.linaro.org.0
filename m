Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E61E248FBF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 22:56:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 637AB605DA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 20:56:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F1736162C; Tue, 18 Aug 2020 20:56:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C22561718;
	Tue, 18 Aug 2020 20:56:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 07089605D8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 20:56:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E23466162C; Tue, 18 Aug 2020 20:56:11 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id B4C6D605D8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 20:56:10 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id o21so19126002oie.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 13:56:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WVlaqaJEkLaogLxHkb59x+3913QcwhMo1tlZOm9AT0s=;
 b=ubZl5syeiCeQ/IDVuub8vxu9NGMVcwe1gCy7W+wPDGTbUoUA51ApiGXytsTp4q1rYL
 xDW+CiTzkkpkRiKJ+2H0XCMXO4QtZdVUAK/NePHVsT2GqNu3Idru2WhjNs4FxzokcBJT
 dk+kyBYEeP0KH0kD9lkq7I9iUJFggkENiLr7Wic3Tx1CBczW7ajJIilqrpa7vOyZhII/
 u7ourb1e95lwPb3iSc2JM2m4EOo9q+sDxJ4ZPmTJYlO5zjWenx6RN1gZsXJu55zD1/eo
 LQgQSJyu0OOcvyBlVXXchQeGJvVwXbWK7UXSVTAlpDxy5+jnLDTLRCyuYGlJFkfpSvoO
 tBxw==
X-Gm-Message-State: AOAM531QQsyloBJqwa5vtM3IJ97IEo7LzMnCxBOoLjMjj5ppPKdrEl4/
 ODvhZnYbitTwUqozomEgYKyZSoKy9TnH18XRhNQvdmrs
X-Google-Smtp-Source: ABdhPJwbu8MfbO3BaVc7WQtY8gCaYLyN64siinjCbEFyrvhEdhXeVpE86gO8wO6noTbeRWOhZomU5kKcgOZGItaZTUA=
X-Received: by 2002:aca:1117:: with SMTP id 23mr1367198oir.97.1597784170084;
 Tue, 18 Aug 2020 13:56:10 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200818074547epcas2p21e0c2442873d03800c7bc2c3e76405d6@epcas2p2.samsung.com>
 <20200818080415.7531-1-hyesoo.yu@samsung.com>
In-Reply-To: <20200818080415.7531-1-hyesoo.yu@samsung.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 18 Aug 2020 13:55:59 -0700
Message-ID: <CALAqxLWRLOqNrhhpjfqfztsWTib8SQQgeX3jJM+_ij_CvC6hiw@mail.gmail.com>
To: Hyesoo Yu <hyesoo.yu@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Christian Koenig <christian.koenig@amd.com>, Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Rob Herring <robh+dt@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "\(Exiting\) Benjamin Gaignard" <benjamin.gaignard@linaro.org>,
 joaodias@google.com, iamjoonsoo.kim@lge.com,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 vbabka@suse.cz, Brian Starkey <Brian.Starkey@arm.com>
Subject: Re: [Linaro-mm-sig] [PATCH 0/3] Chunk Heap Support on DMA-HEAP
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

T24gVHVlLCBBdWcgMTgsIDIwMjAgYXQgMTI6NDUgQU0gSHllc29vIFl1IDxoeWVzb28ueXVAc2Ft
c3VuZy5jb20+IHdyb3RlOgo+Cj4gVGhlc2UgcGF0Y2ggc2VyaWVzIHRvIGludHJvZHVjZSBhIG5l
dyBkbWEgaGVhcCwgY2h1bmsgaGVhcC4KPiBUaGF0IGhlYXAgaXMgbmVlZGVkIGZvciBzcGVjaWFs
IEhXIHRoYXQgcmVxdWlyZXMgYnVsayBhbGxvY2F0aW9uIG9mCj4gZml4ZWQgaGlnaCBvcmRlciBw
YWdlcy4gRm9yIGV4YW1wbGUsIDY0TUIgZG1hLWJ1ZiBwYWdlcyBhcmUgbWFkZSB1cAo+IHRvIGZp
eGVkIG9yZGVyLTQgcGFnZXMgKiAxMDI0Lgo+Cj4gVGhlIGNodW5rIGhlYXAgdXNlcyBhbGxvY19w
YWdlc19idWxrIHRvIGFsbG9jYXRlIGhpZ2ggb3JkZXIgcGFnZS4KPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1tbS8yMDIwMDgxNDE3MzEzMS4yODAzMDAyLTEtbWluY2hhbkBrZXJuZWwu
b3JnCj4KPiBUaGUgY2h1bmsgaGVhcCBpcyByZWdpc3RlcmVkIGJ5IGRldmljZSB0cmVlIHdpdGgg
YWxpZ25tZW50IGFuZCBtZW1vcnkgbm9kZQo+IG9mIGNvbnRpZ3VvdXMgbWVtb3J5IGFsbG9jYXRv
cihDTUEpLiBBbGlnbm1lbnQgZGVmaW5lcyBjaHVuayBwYWdlIHNpemUuCj4gRm9yIGV4YW1wbGUs
IGFsaWdubWVudCAweDFfMDAwMCBtZWFucyBjaHVuayBwYWdlIHNpemUgaXMgNjRLQi4KPiBUaGUg
cGhhbmRsZSB0byBtZW1vcnkgbm9kZSBpbmRpY2F0ZXMgY29udGlndW91cyBtZW1vcnkgYWxsb2Nh
dG9yKENNQSkuCj4gSWYgZGV2aWNlIG5vZGUgZG9lc24ndCBoYXZlIGNtYSwgdGhlIHJlZ2lzdHJh
dGlvbiBvZiBjaHVuayBoZWFwIGZhaWxzLgo+Cj4gVGhlIHBhdGNoc2V0IGluY2x1ZGVzIHRoZSBm
b2xsb3dpbmc6Cj4gIC0gZXhwb3J0IGRtYS1oZWFwIEFQSSB0byByZWdpc3RlciBrZXJuZWwgbW9k
dWxlIGRtYSBoZWFwLgo+ICAtIGFkZCBjaHVuayBoZWFwIGltcGxlbWVudGF0aW9uLgo+ICAtIGRv
Y3VtZW50IG9mIGRldmljZSB0cmVlIHRvIHJlZ2lzdGVyIGNodW5rIGhlYXAKPgo+IEh5ZXNvbyBZ
dSAoMyk6Cj4gICBkbWEtYnVmOiBhZGQgbWlzc2luZyBFWFBPUlRfU1lNQk9MX0dQTCgpIGZvciBk
bWEgaGVhcHMKPiAgIGRtYS1idWY6IGhlYXBzOiBhZGQgY2h1bmsgaGVhcCB0byBkbWFidWYgaGVh
cHMKPiAgIGRtYS1oZWFwOiBEZXZpY2V0cmVlIGJpbmRpbmcgZm9yIGNodW5rIGhlYXAKCkhleSEg
VGhhbmtzIHNvIG11Y2ggZm9yIHNlbmRpbmcgdGhpcyBvdXQhIEknbSByZWFsbHkgZXhjaXRlZCB0
byBzZWUKdGhlc2UgaGVhcHMgYmUgc3VibWl0dGVkIGFuZCByZXZpZXdlZCBvbiB0aGUgbGlzdCEK
ClRoZSBmaXJzdCBnZW5lcmFsIGNvbmNlcm4gSSBoYXZlIHdpdGggeW91ciBzZXJpZXMgaXMgdGhh
dCBpdCBhZGRzIGEgZHQKYmluZGluZyBmb3IgdGhlIGNodW5rIGhlYXAsIHdoaWNoIHdlJ3ZlIGdv
dHRlbiBhIGZhaXIgYW1vdW50IG9mCnB1c2hiYWNrIG9uLgoKQSBwb3NzaWJsZSBhbHRlcm5hdGl2
ZSBtaWdodCBiZSBzb21ldGhpbmcgbGlrZSB3aGF0IEt1bmloaWtvIEhheWFzaGkKcHJvcG9zZWQg
Zm9yIG5vbi1kZWZhdWx0IENNQSBoZWFwczoKICBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21s
LzE1OTQ5NDgyMDgtNDczOS0xLWdpdC1zZW5kLWVtYWlsLWhheWFzaGkua3VuaWhpa29Ac29jaW9u
ZXh0LmNvbS8KClRoaXMgYXBwcm9hY2ggd291bGQgaW5zdGVhbCBhbGxvdyBhIGRyaXZlciB0byBy
ZWdpc3RlciBhIENNQSBhcmVhIHdpdGgKdGhlIGNodW5rIGhlYXAgaW1wbGVtZW50YXRpb24uCgpI
b3dldmVyLCAoYW5kIHRoaXMgd2FzIHRoZSBjYXRjaCBLdW5paGlrbyBIYXlhc2hpJ3MgcGF0Y2gp
IHRoaXMKcmVxdWlyZXMgdGhhdCB0aGUgZHJpdmVyIGFsc28gYmUgdXBzdHJlYW0sIGFzIHdlIG5l
ZWQgYW4gaW4tdHJlZSB1c2VyCm9mIHN1Y2ggY29kZS4KCkFsc28sIGl0IG1pZ2h0IGJlIGdvb2Qg
dG8gcHJvdmlkZSBzb21lIGZ1cnRoZXIgcmF0aW9uYWxlIG9uIHdoeSB0aGlzCmhlYXAgaXMgYmVu
ZWZpY2lhbCBvdmVyIHRoZSBleGlzdGluZyBDTUEgaGVhcD8gIEluIGdlbmVyYWwgZm9jdXNpbmcK
dGhlIGNvbW1pdCBtZXNzYWdlcyBtb3JlIG9uIHRoZSB3aHkgd2UgbWlnaHQgd2FudCB0aGUgcGF0
Y2gsIHJhdGhlcgp0aGFuIHdoYXQgdGhlIHBhdGNoIGRvZXMsIGlzIGhlbHBmdWwuCgoiU3BlY2lh
bCBoYXJkd2FyZSIgdGhhdCBkb2Vzbid0IGhhdmUgdXBzdHJlYW0gZHJpdmVycyBpc24ndCB2ZXJ5
CmNvbXBlbGxpbmcgZm9yIG1vc3QgbWFpbnRhaW5lcnMuCgpUaGF0IHNhaWQsIEknbSB2ZXJ5IGV4
Y2l0ZWQgdG8gc2VlIHRoZXNlIHNvcnRzIG9mIHN1Ym1pc3Npb25zLCBhcyBJCmtub3cgbG90cyBv
ZiB2ZW5kb3JzIGhhdmUgaGlzdG9yaWNhbGx5IGhhZCB2ZXJ5IGN1c3RvbSBvdXQgb2YgdHJlZSBJ
T04KaGVhcHMsIGFuZCBJIHRoaW5rIGl0IHdvdWxkIGJlIGEgZ3JlYXQgYmVuZWZpdCB0byB0aGUg
Y29tbXVuaXR5IHRvCmJldHRlciB1bmRlcnN0YW5kIHRoZSBleHBlcmllbmNlIHZlbmRvcnMgaGF2
ZSBpbiBvcHRpbWl6aW5nCnBlcmZvcm1hbmNlIG9uIHRoZWlyIGRldmljZXMsIHNvIHdlIGNhbiBj
cmVhdGUgZ29vZCBjb21tb24gc29sdXRpb25zCnVwc3RyZWFtLiBTbyBJIGxvb2sgZm9yd2FyZCB0
byB5b3VyIGluc2lnaHRzIG9uIGZ1dHVyZSByZXZpc2lvbnMgb2YKdGhpcyBwYXRjaCBzZXJpZXMh
Cgp0aGFua3MKLWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
