Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8E127BCE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 May 2019 13:31:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BA5660908
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 May 2019 11:31:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EF6DA609D6; Thu, 23 May 2019 11:31:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E36160F5B;
	Thu, 23 May 2019 11:30:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 15B0C60908
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2019 11:30:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 019A760F5B; Thu, 23 May 2019 11:30:50 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by lists.linaro.org (Postfix) with ESMTPS id ACD9A60908
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2019 11:30:48 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id u64so4092392oib.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2019 04:30:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W8h3Tf0RlBpsQ1a0YQeR0qKJGmBmNjStk3GauhOvxfc=;
 b=SIpaQRWIXuEFUYGOf8RfaLQo/ZQZKzgUTEsrDHk54IVz1aq8NfoyBuK070ddxCxx3I
 dQop1RADyhBQ3aIrcpFBC5inNHKyOvd8dPJwGY7Z2qoxuJ3sDTN5tFq5Dxq9Q02qBLr9
 hzGAuuQgcX+QUAlnox+i10j9qMWGoPriAgXwYIbb2VnYM7a8PuEcErejej5m1s34RkRn
 yN5a/P1Xt4sucBxm1c/qEpeWD9OP6shXBf84HlFXqnAv32N9vtJvBULt+XiDiPu7YE1g
 upnEkfRLL42t6auLYSPW+UmXwe2OwSkOIDao47LmN+jtLYHh81K61Cl1C4NZ8oW2tqTy
 0w6A==
X-Gm-Message-State: APjAAAW2AZy0R2miKJwhU3ohX1th5EuwXr8Iif4z+rnm7asCkabR3FE1
 OawIvcgfeKE8kQEE4GosT9b5XLA02fLAp3GwF5kA8w==
X-Google-Smtp-Source: APXvYqzgWW4QE3al1A+KXCjvwN22k9yT81tHRLi7VGKggF93LUWQZHYr4QLQpl2sBgX03nTP61D98NBJqaWFaIklIDU=
X-Received: by 2002:aca:31cf:: with SMTP id x198mr2294398oix.132.1558611048084; 
 Thu, 23 May 2019 04:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190416183841.1577-1-christian.koenig@amd.com>
 <1556323269-19670-1-git-send-email-lmark@codeaurora.org>
 <CAO_48GGanguXbmYDD+p1kK_VkiWdZSTYAD1y-0JQK7hqL_OPPg@mail.gmail.com>
 <d7fb2a6b-f516-b506-247d-0f3d4d59ec8e@gmail.com>
 <CAKMK7uEaeVW0EMtCUeH+WeUmFnovEySz3kebRUcybLeySb4GSA@mail.gmail.com>
 <cbb1f3a1-6cd1-c231-f1b2-8f20a6bad067@amd.com>
In-Reply-To: <cbb1f3a1-6cd1-c231-f1b2-8f20a6bad067@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 23 May 2019 13:30:35 +0200
Message-ID: <CAKMK7uFghnEHjyOaJyui+8g9gJahhnhNWPruPMqPr6VAN1UvsA@mail.gmail.com>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Liam Mark <lmark@codeaurora.org>, LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 01/12] dma-buf: add dynamic caching of
	sg_table
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMToyMSBQTSBLb2VuaWcsIENocmlzdGlhbgo8Q2hyaXN0
aWFuLktvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDIyLjA1LjE5IHVtIDIwOjMwIHNjaHJp
ZWIgRGFuaWVsIFZldHRlcjoKPiA+IFtTTklQXQo+ID4+IFdlbGwsIGl0IHNlZW1zIHlvdSBhcmUg
bWFraW5nIGluY29ycmVjdCBhc3N1bXB0aW9ucyBhYm91dCB0aGUgY2FjaGUKPiA+PiBtYWludGVu
YW5jZSBvZiBETUEtYnVmIGhlcmUuCj4gPj4KPiA+PiBBdCBsZWFzdCBmb3IgYWxsIERSTSBkZXZp
Y2VzIEknbSBhd2FyZSBvZiBtYXBwaW5nL3VubWFwcGluZyBhbgo+ID4+IGF0dGFjaG1lbnQgZG9l
cyAqTk9UKiBoYXZlIGFueSBjYWNoZSBtYWludGVuYW5jZSBpbXBsaWNhdGlvbnMuCj4gPj4KPiA+
PiBFLmcuIHRoZSB1c2UgY2FzZSB5b3UgZGVzY3JpYmUgYWJvdmUgd291bGQgY2VydGFpbmx5IGZh
aWwgd2l0aCBhbWRncHUsCj4gPj4gcmFkZW9uLCBub3V2ZWF1IGFuZCBpOTE1IGJlY2F1c2UgbWFw
cGluZyBhIERNQS1idWYgZG9lc24ndCBzdG9wIHRoZQo+ID4+IGV4cG9ydGVyIGZyb20gcmVhZGlu
Zy93cml0aW5nIHRvIHRoYXQgYnVmZmVyIChqdXN0IHRoZSBvcHBvc2l0ZSBhY3R1YWxseSkuCj4g
Pj4KPiA+PiBBbGwgb2YgdGhlbSBhc3N1bWUgcGVyZmVjdGx5IGNvaGVyZW50IGFjY2VzcyB0byB0
aGUgdW5kZXJseWluZyBtZW1vcnkuCj4gPj4gQXMgZmFyIGFzIEkga25vdyB0aGVyZSBpcyBubyBk
b2N1bWVudGVkIGNhY2hlIG1haW50ZW5hbmNlIHJlcXVpcmVtZW50cwo+ID4+IGZvciBETUEtYnVm
Lgo+ID4gSSB0aGluayBpdCBpcyBkb2N1bWVudGVkLiBJdCdzIGp1c3QgdGhhdCBvbiB4ODYsIHdl
IGlnbm9yZSB0aGF0Cj4gPiBiZWNhdXNlIHRoZSBkbWEtYXBpIHByZXRlbmRzIHRoZXJlJ3MgbmV2
ZXIgYSBuZWVkIGZvciBjYWNoZSBmbHVzaGluZwo+ID4gb24geDg2LCBhbmQgdGhhdCBldmVyeXRo
aW5nIHNub29wcyB0aGUgY3B1IGNhY2hlcy4gV2hpY2ggaXNuJ3QgdHJ1ZQo+ID4gc2luY2Ugb3Zl
ciAyMCBhZ28gd2hlbiBBR1AgaGFwcGVuZWQuIFRoZSBhY3R1YWwgcnVsZXMgZm9yIHg4NiBkbWEt
YnVmCj4gPiBhcmUgdmVyeSBtdWNoIGFkLWhvYyAoYW5kIHdlIG9jY2FzaW9uYWxseSByZWFwcGx5
IHNvbWUgZHVjdC10YXBlIHdoZW4KPiA+IGNhY2hlbGluZSBub2lzZSBzaG93cyB1cCBzb21ld2hl
cmUpLgo+Cj4gV2VsbCBJIHN0cm9uZ2x5IGRpc2FncmVlIG9uIHRoaXMuIEV2ZW4gb24geDg2IGF0
IGxlYXN0IEFNRCBHUFVzIGFyZSBhbHNvCj4gbm90IGZ1bGx5IGNvaGVyZW50Lgo+Cj4gRm9yIGV4
YW1wbGUgeW91IGhhdmUgdGhlIHRleHR1cmUgY2FjaGUgYW5kIHRoZSBIRFAgcmVhZC93cml0ZSBj
YWNoZS4gU28KPiB3aGVuIGJvdGggYW1kZ3B1IGFzIHdlbGwgYXMgaTkxNSB3b3VsZCB3cml0ZSB0
byB0aGUgc2FtZSBidWZmZXIgYXQgdGhlCj4gc2FtZSB0aW1lIHdlIHdvdWxkIGdldCBhIGNvcnJ1
cHRlZCBkYXRhIGFzIHdlbGwuCj4KPiBUaGUga2V5IHBvaW50IGlzIHRoYXQgaXQgaXMgTk9UIERN
QS1idWYgaW4gaXQncyBtYXAvdW5tYXAgY2FsbCB3aG8gaXMKPiBkZWZpbmluZyB0aGUgY29oZXJl
bmN5LCBidXQgcmF0aGVyIHRoZSByZXNlcnZhdGlvbiBvYmplY3QgYW5kIGl0cwo+IGF0dGFjaGVk
IGRtYV9mZW5jZSBpbnN0YW5jZXMuCj4KPiBTbyBmb3IgZXhhbXBsZSBhcyBsb25nIGFzIGEgZXhj
bHVzaXZlIHJlc2VydmF0aW9uIG9iamVjdCBmZW5jZSBpcyBzdGlsbAo+IG5vdCBzaWduYWxlZCBJ
IGNhbid0IGFzc3VtZSB0aGF0IGFsbCBjYWNoZXMgYXJlIGZsdXNoZWQgYW5kIHNvIGNhbid0Cj4g
c3RhcnQgd2l0aCBteSBvd24gb3BlcmF0aW9uL2FjY2VzcyB0byB0aGUgZGF0YSBpbiBxdWVzdGlv
bi4KClRoZSBkbWEtYXBpIGRvZXNuJ3QgZmx1c2ggZGV2aWNlIGNhY2hlcywgZXZlci4gSXQgbWln
aHQgZmx1c2ggc29tZQppb21tdSBjYWNoZXMgb3Igc29tZSBvdGhlciBidXMgY2FjaGUgc29tZXdo
ZXJlIGluLWJldHdlZW4uIFNvIGl0IGFsc28Kd29uJ3QgZXZlciBtYWtlIHN1cmUgdGhhdCBtdWx0
aXBsZSBkZXZpY2VzIGRvbid0IHRyYW1wbGUgb24gZWFjaAphbm90aGVyLiBGb3IgdGhhdCB5b3Ug
bmVlZCBzb21ldGhpbmcgZWxzZSAobGlrZSByZXNlcnZhdGlvbiBvYmplY3QsCmJ1dCBJIHRoaW5r
IHRoYXQncyBub3QgcmVhbGx5IGZvbGxvd2VkIG91dHNpZGUgb2YgZHJtIG11Y2gpLgoKVGhlIG90
aGVyIGJpdCBpcyB0aGUgY29oZXJlbnQgdnMuIG5vbi1jb2hlcmVudCB0aGluZywgd2hpY2ggaW4g
dGhlCmRtYS1hcGkgbGFuZCBqdXN0IHRhbGtzIGFib3V0IHdoZXRoZXIgY3B1L2RldmljZSBhY2Nl
c3MgbmVlZCBleHRyYQpmbHVzaGluZyBvciBub3QuIE5vdyBpbiBwcmFjdGljZSB0aGF0IGV4dHJh
IGZsdXNoaW5nIGlzIGFsd2F5cyBvbmx5CmNwdSBzaWRlLCBpLmUuIHdpbGwgY3B1IHdyaXRlcy9y
ZWFkcyBnbyB0aHJvdWdoIHRoZSBjcHUgY2FjaGUsIGFuZAp3aWxsIGRldmljZSByZWFkcy93cml0
ZXMgc25vb3AgdGhlIGNwdSBjYWNoZXMuIFRoYXQncyAoYWZhaWsgYXQgbGVhc3QsCmFuIGluIHBy
YWN0aWNlLCBub3QgdGhlIGFic3RyYWN0IHNwZWMpIHRoZSBfb25seV8gdGhpbmcgZG1hLWFwaSdz
CmNhY2hlIG1haW50ZW5hbmNlIGRvZXMuIEZvciAwIGNvcHkgdGhhdCdzIGFsbCBjb21wbGV0ZWx5
IGlycmVsZXZhbnQsCmJlY2F1c2UgYXMgc29vbiBhcyB5b3UgcGljayBhIG1vZGUgd2hlcmUgeW91
IG5lZWQgdG8gZG8gbWFudWFsIGNhY2hlCm1hbmFnZW1lbnQgeW91J3ZlIHNjcmV3ZWQgdXAsIGl0
J3Mgbm90IDAtY29weSBhbnltb3JlIHJlYWxseS4KClRoZSBvdGhlciBoaWxhcmlvdXMgc3R1ZmYg
aXMgdGhhdCBvbiB4ODYgd2UgbGV0IHVzZXJzcGFjZSAoYXQgbGVhc3QKd2l0aCBpOTE1KSBkbyB0
aGF0IGNhY2hlIG1hbmFnZW1lbnQsIHNvIHRoZSBrZXJuZWwgZG9lc24ndCBldmVuIGhhdmUgYQpj
bHVlLiBJIHRoaW5rIHdoYXQgd2UgbmVlZCBpbiBkbWEtYnVmIChhbmQgZG1hLWFwaSBwZW9wbGUg
d2lsbCBzY3JlYW0KYWJvdXQgdGhlICJhYnN0cmFjdGlvbiBsZWFrIikgaXMgc29tZSBub3RpdGlv
biBhYm91dCB3aGV0aGVyIGFuCmltcG9ydGVyIHNob3VsZCBzbm9vcCBvciBub3QgKG9yIGlmIHRo
YXQgZGV2aWNlIGFsd2F5cyB1c2VzIG5vbi1zbm9vcApvciBzbm9vcGVkIHRyYW5zYWN0aW9ucyku
IEJ1dCB0aGF0IHdvdWxkIHNocmVkIHRoZSBpbGx1c2lvbiB0aGUKZG1hLWFwaSB0cmllcyB0byBr
ZWVwIHVwIHRoYXQgYWxsIHRoYXQgbWF0dGVycyBpcyB3aGV0aGVyIGEgbWFwcGluZyBpcwpjb2hl
cmVudCBmcm9tIHRoZSBjcHUncyBwb3Ygb3Igbm90LCBhbmQgeW91IGNhbiBhY2hpZXZlIGNvaGVy
ZW5jZSBib3RoCndpdGggYSBjYWNoZSBjcHUgbWFwcGluZyArIHNub29wZWQgdHJhbnNhY3Rpb25z
LCBvciB3aXRoIHdjIGNwdSBzaWRlCmFuZCBub24tc25vb3BlZCB0cmFuc2FjdGlvbnMuIFRyeWlu
ZyB0byBhZGQgY2FjaGUgbWFuYWdtZW50ICh3aGljaApzb21lIGRtYS1idWYgZXhwb3J0ZXIgZG8g
aW5kZWVkIGF0dGVtcHQgdG8pIHdpbGwgYmUgZXZlbiB3b3JzZS4KCkFnYWluLCBub25lIG9mIHRo
aXMgaXMgYWJvdXQgcHJldmVudGluZyBjb25jdXJyZW50IHdyaXRlcywgb3IgbWFraW5nCnN1cmUg
ZGV2aWNlIGNhY2hlcyBhcmUgZmx1c2hlZCBjb3JyZWN0bHkgYXJvdW5kIGJhdGNoZXMuCi1EYW5p
ZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
Cis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
