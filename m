Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4562CB0F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 00:38:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EE1260BE0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 23:38:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 81D7F6659B; Tue,  1 Dec 2020 23:38:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 214A065FD7;
	Tue,  1 Dec 2020 23:38:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9D6CD6065A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 23:38:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8B5BA65FD7; Tue,  1 Dec 2020 23:38:28 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id 8F3F36065A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 23:38:27 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id n12so9409otk.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 15:38:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AcUljttS1/Kv9szBrro01vh8YqqJASGgC7Alt3BmlWo=;
 b=FItnPb+QvvHu78+6wmGBafPIjYHhQvRBz/kEnrUHzMKcV6QS/FToBDTCP2XdImAMm+
 GcpNNSqDnsZcCNMC1p0IO9a9S0rt1BUtOpxsjb8W1EOZfQdkoNDhD95dAfQ5nhLF1SLw
 c0wEzvZdkGezhGo7ufNLehpIAx7qGST7qkqf3e3D6JIkr61lzbkHMtNMFO5ImiqLC69y
 HEOkYNCT/gw8iK5KAJ7dUMxnR+w6Q+41qs6YUJHUqdx3Xv+AjlgweYhGViG7Ct47t2Sp
 ATLbart37cN7msHBwiuak6NhpHDfmibYIW/rUbO/vbUMAwkvzmkfzHmOCVTibB/4NbLW
 vpFQ==
X-Gm-Message-State: AOAM531UJaZVnYerNakaoCmG6q+hnHAOdigjxn+uhOR1E4Qqu7rdy/me
 1OKvOkf//U2XsNFilpGc+k0mH1n7N/kv29gExYO5nBud
X-Google-Smtp-Source: ABdhPJzqg9/cJFXzsEKuui5LLQmcVlIxqfx8S0xbUl9UXyu4UIrtiWJuNliEU6VKkP4JD9lJJVAJhVhQ6gN0sNwiUhw=
X-Received: by 2002:a9d:851:: with SMTP id 75mr3804830oty.102.1606865906861;
 Tue, 01 Dec 2020 15:38:26 -0800 (PST)
MIME-Version: 1.0
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-5-minchan@kernel.org>
 <CALAqxLXFeUStaJ8Mtm5v3kSxmeqnjzLTsyathkrKF0ke3fYGiQ@mail.gmail.com>
 <20201201225554.GA3968963@google.com>
In-Reply-To: <20201201225554.GA3968963@google.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 1 Dec 2020 15:38:14 -0800
Message-ID: <CALAqxLW-n4-VSd9dj=KXS4WRDrPmKOShAwP9tCfCZnk+4kxW-w@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Christian Koenig <christian.koenig@amd.com>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, Hyesoo Yu <hyesoo.yu@samsung.com>
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

T24gVHVlLCBEZWMgMSwgMjAyMCBhdCAyOjU1IFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5l
bC5vcmc+IHdyb3RlOgo+IE9uIFR1ZSwgRGVjIDAxLCAyMDIwIGF0IDExOjQ4OjE1QU0gLTA4MDAs
IEpvaG4gU3R1bHR6IHdyb3RlOgo+ID4gT24gVHVlLCBEZWMgMSwgMjAyMCBhdCA5OjUxIEFNIE1p
bmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IFRoYW5rcyBmb3Ig
cmV3b3JraW5nIGFuZCByZXNlbmRpbmcgdGhpcyEKPiA+Cj4gPiAuLi4KPiA+ID4gK3N0YXRpYyBp
bnQgX19pbml0IGNodW5rX2hlYXBfaW5pdCh2b2lkKQo+ID4gPiArewo+ID4gPiArICAgICAgIHN0
cnVjdCBjbWEgKmRlZmF1bHRfY21hID0gZGV2X2dldF9jbWFfYXJlYShOVUxMKTsKPiA+ID4gKyAg
ICAgICBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gZXhwX2luZm87Cj4gPiA+ICsgICAgICAg
c3RydWN0IGNodW5rX2hlYXAgKmNodW5rX2hlYXA7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBpZiAo
IWRlZmF1bHRfY21hKQo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiA+ICsKPiA+
ID4gKyAgICAgICBjaHVua19oZWFwID0ga3phbGxvYyhzaXplb2YoKmNodW5rX2hlYXApLCBHRlBf
S0VSTkVMKTsKPiA+ID4gKyAgICAgICBpZiAoIWNodW5rX2hlYXApCj4gPiA+ICsgICAgICAgICAg
ICAgICByZXR1cm4gLUVOT01FTTsKPiA+ID4gKwo+ID4gPiArICAgICAgIGNodW5rX2hlYXAtPm9y
ZGVyID0gQ0hVTktfSEVBUF9PUkRFUjsKPiA+ID4gKyAgICAgICBjaHVua19oZWFwLT5jbWEgPSBk
ZWZhdWx0X2NtYTsKPiA+ID4gKwo+ID4gPiArICAgICAgIGV4cF9pbmZvLm5hbWUgPSBjbWFfZ2V0
X25hbWUoZGVmYXVsdF9jbWEpOwo+ID4KPiA+IFNvLCB0aGlzIHdvdWxkIGNyZWF0ZSBhIGNodW5r
IGhlYXAgbmFtZSB3aXRoIHRoZSBkZWZhdWx0IENNQSBuYW1lLAo+ID4gd2hpY2ggd291bGQgYmUg
aW5kaXN0aW5ndWlzaGFibGUgZnJvbSB0aGUgaGVhcCBuYW1lIHVzZWQgZm9yIHRoZSBwbGFpbgo+
ID4gQ01BIGhlYXAuCj4gPgo+ID4gUHJvYmFibHkgYSBnb29kIGlkZWEgdG8gcHJlZml4IGl0IHdp
dGggImNodW5rLSIgc28gdGhlIGhlYXAgZGV2aWNlCj4gPiBuYW1lcyBhcmUgdW5pcXVlPwo+Cj4g
VGhhdCB3aWxsIGdpdmUgYW4gaW1wcmVzc2lvbiB0byB1c2VyIHRoYXQgdGhleSBhcmUgdXNpbmcg
ZGlmZmVyZW50IENNQQo+IGFyZWEgYnV0IHRoYXQncyBub3QgdHJ1ZS4gSU1ITywgbGV0J3MgYmUg
aG9uZXN0IGF0IHRoaXMgbW9tZW50LgoKSSBkaXNhZ3JlZS4gIFRoZSBkbWFidWYgaGVhcHMgcHJv
dmlkZSBhbiBhYnN0cmFjdGlvbiBmb3IgYWxsb2NhdGluZyBhCnR5cGUgb2YgbWVtb3J5LCBhbmQg
d2hpbGUgeW91ciBoZWFwIGlzIHB1bGxpbmcgZnJvbSBDTUEsIHlvdSBhcmVuJ3QKImp1c3QiIGFs
bG9jYXRpbmcgQ01BIGFzIHRoZSBleGlzdGluZyBDTUEgaGVhcCB3b3VsZCBzdWZmaWNlIGZvciB0
aGF0LgoKU2luY2UgeW91IG5lZWQgYSBzbGlnaHRseSBkaWZmZXJlbnQgbWV0aG9kIHRvIGFsbG9j
YXRlIGhpZ2ggb3JkZXIKcGFnZXMgaW4gYnVsaywgd2UgcmVhbGx5IHNob3VsZCBoYXZlIGEgdW5p
cXVlIHdheSB0byBuYW1lIHRoZQphbGxvY2F0b3IgaW50ZXJmYWNlLiBUaGF0J3Mgd2h5IEknZCBz
dWdnZXN0IHRoZSAiY2h1bmstIiBwcmVmaXggdG8gdGhlCmhlYXAgbmFtZS4KCnRoYW5rcwotam9o
bgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
