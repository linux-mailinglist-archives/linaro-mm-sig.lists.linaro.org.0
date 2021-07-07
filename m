Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D27A3BE86E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jul 2021 14:54:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C71C60AE3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jul 2021 12:54:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 656726695B; Wed,  7 Jul 2021 12:54:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09174632DE;
	Wed,  7 Jul 2021 12:54:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1DE3B611F5
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jul 2021 12:54:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1B92E632DE; Wed,  7 Jul 2021 12:54:49 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by lists.linaro.org (Postfix) with ESMTPS id 11F88611F5
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jul 2021 12:54:47 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id r29so3179563oiw.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Jul 2021 05:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZwucK/hcyFDLDJ5ulbYeHz4jdgbFEMTjqApCtmNqV+E=;
 b=H6eMViN7cPvcwTKvKheJG9sJFRXo5t5JSta3Q1bmZUkcKlz8vytBXOCNkU/JqVul+d
 VWFc0jOPzvxDOs8qb/ame/veAS9kfUmpd5auGGz/pmDHZ8QpQHUzgiUxkOX4oM1JFoyd
 r7W1zE/iC95PtQdaLEgxF2Mm+Yb/KXz4c6Ing=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZwucK/hcyFDLDJ5ulbYeHz4jdgbFEMTjqApCtmNqV+E=;
 b=EWneQ+rGxseV/jvafYMDr0etZi1GpbBLWnU8/TWFcETBaHz5/7UOMAEIh49XD01tZP
 KAS2ttrpV7dqZVMsitZziS7akAdyBphhhf2ylQBwXjbGfWMBlFKrgNd1e8Mo9pBh+g2D
 4BlXMTi5dKrT4xO/oaR1DpQscVAbmu7rkA/jDxCYyzjUxoguovSkpSRLcUMqwS8NT/uG
 2N+LZLZMNHD0tzBT8FCH+2NDeWTC5fnNySEMAMUboju4KpD7jsQEQeXNH7QghU1FgMa2
 hohe9nQlQfNTRk23FeKz+2SZ6zwcENG9enGpEuTVkbsYysuzLYzvUNdQ4TSxe2bbvUKc
 9Cqw==
X-Gm-Message-State: AOAM530fZ5DZdmqEu58MxHNR6jSF9Ig4lFSHkyThHxTXWlLsOLNnVDgw
 IA2VzDQhyvge4SXVqFq4WM4wNMQ4MZJyDpVuH3JWfg==
X-Google-Smtp-Source: ABdhPJygqGkF27WMKuRCc+HJjxSUE80qhZpY36/0xSlWlXRYoPY3q/cIXPhcyfDPJ3DAKsV7rDaa38qZXXQaPcpAD/Y=
X-Received: by 2002:aca:eb43:: with SMTP id j64mr4775645oih.101.1625662486066; 
 Wed, 07 Jul 2021 05:54:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <20210706122110.GA18273@lst.de> <YORLTmyoXDtoM9Ta@phenom.ffwll.local>
 <9af554b1-e4d8-4dd4-5a6a-830f3112941d@gmail.com>
In-Reply-To: <9af554b1-e4d8-4dd4-5a6a-830f3112941d@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 7 Jul 2021 14:54:34 +0200
Message-ID: <CAKMK7uG2LnceUqst7VeA7+zhyJJoY5FReuDPfJu67tuTv60WeQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 0/2] Add p2p via dmabuf to habanalabs
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: sleybo@amazon.com, Gal Pressman <galpress@amazon.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Oded Gabbay <ogabbay@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Christoph Hellwig <hch@lst.de>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Doug Ledford <dledford@redhat.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>, Leon Romanovsky <leonro@nvidia.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gV2VkLCBKdWwgNywgMjAyMSBhdCAyOjE3IFBNIENocmlzdGlhbiBLw7ZuaWcKPGNrb2VuaWcu
bGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPiBBbSAwNi4wNy4yMSB1bSAxNDoyMyBz
Y2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBPbiBUdWUsIEp1bCAwNiwgMjAyMSBhdCAwMjoyMTox
MFBNICswMjAwLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiA+PiBPbiBUdWUsIEp1bCAwNiwg
MjAyMSBhdCAxMDo0MDozN0FNICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4+Pj4gR3Jl
ZywgSSBob3BlIHRoaXMgd2lsbCBiZSBnb29kIGVub3VnaCBmb3IgeW91IHRvIG1lcmdlIHRoaXMg
Y29kZS4KPiA+Pj4gU28gd2UncmUgb2ZmaWNpYWxseSBnb2luZyB0byB1c2UgZHJpLWRldmVsIGZv
ciB0ZWNobmljYWwgZGV0YWlscyByZXZpZXcKPiA+Pj4gYW5kIHRoZW4gR3JlZyBmb3IgbWVyZ2lu
ZyBzbyB3ZSBkb24ndCBoYXZlIHRvIGRlYWwgd2l0aCBvdGhlciBtZXJnZQo+ID4+PiBjcml0ZXJp
YSBkcmktZGV2ZWwgZm9sa3MgaGF2ZT8KPiA+Pj4KPiA+Pj4gSSBkb24ndCBleHBlY3QgYW55dGhp
bmcgbGVzcyBieSBub3csIGJ1dCBpdCBkb2VzIG1ha2UgdGhlIG9yaWdpbmFsIGNsYWltCj4gPj4+
IHRoYXQgZHJpdmVycy9taXNjIHdpbGwgbm90IHN0ZXAgYWxsIG92ZXIgYWNjZWxlcmF0b3JzIGZv
bGtzIGEgY29tcGxldGUKPiA+Pj4gZmFyY2UgdW5kZXIgdGhlIHRvdGFsbHktbm90LWEtZ3B1IGJh
bm5lci4KPiA+Pj4KPiA+Pj4gVGhpcyBlc3NlbnRpYWxseSBtZWFucyB0aGF0IGZvciBhbnkgb3Ro
ZXIgYWNjZWxlcmF0b3Igc3RhY2sgdGhhdCBkb2Vzbid0Cj4gPj4+IGZpdCB0aGUgZHJpLWRldmVs
IG1lcmdlIGNyaXRlcmlhLCBldmVuIGlmIGl0J3MgYWN0aW5nIGxpa2UgYSBncHUgYW5kIHVzZXMK
PiA+Pj4gb3RoZXIgZ3B1IGRyaXZlciBzdHVmZiwgeW91IGNhbiBqdXN0IHNlbmQgaXQgdG8gR3Jl
ZyBhbmQgaXQncyBnb29kIHRvIGdvLgo+ID4+Pgo+ID4+PiBUaGVyZSdzIHF1aXRlIGEgbG90IG9m
IHRoZXNlIGZsb2F0aW5nIGFyb3VuZCBhY3R1YWxseSAoYW5kIG1hbnkgZG8gaGF2ZQo+ID4+PiBz
ZW1pLW9wZW4gcnVudGltZXMsIGxpa2UgaGFiYW5hbGFicyBoYXZlIG5vdyB0b28sIGp1c3Qgbm90
IG9wZW4gZW5vdWdoIHRvCj4gPj4+IGJlIGFjdHVhbGx5IHVzZWZ1bCkuIEl0J3MgZ29pbmcgdG8g
YmUgYWJzb2x1dGVseSBsb3ZlbHkgaGF2aW5nIHRvIGV4cGxhaW4KPiA+Pj4gdG8gdGhlc2UgY29t
cGFuaWVzIGluIGJhY2tncm91bmQgY2hhdHMgd2h5IGhhYmFuYWxhYnMgZ2V0cyBhd2F5IHdpdGgg
dGhlaXIKPiA+Pj4gc3RhY2sgYW5kIHRoZXkgZG9uJ3QuCj4gPj4gRllJLCBJIGZ1bGx5IGFncmVl
IHdpdGggRGFuaWVsIGhlcmUuICBIYWJhbmxhYnMgbmVlZHMgdG8gb3BlbiB1cCB0aGVpcgo+ID4+
IHJ1bnRpbWUgaWYgdGhleSB3YW50IHRvIHB1c2ggYW55IGFkZGl0aW9uYWwgZmVhdHVyZSBpbiB0
aGUga2VybmVsLgo+ID4+IFRoZSBjdXJyZW50IHNpdHVhdGlvbiBpcyBub3Qgc3VzdGFpbmFibGUu
Cj4gPiBCZWZvcmUgYW55b25lIHJlcGxpZXM6IFRoZSBydW50aW1lIGlzIG9wZW4sIHRoZSBjb21w
aWxlciBpcyBzdGlsbCBjbG9zZWQuCj4gPiBUaGlzIGhhcyBiZWNvbWUgdGhlIG5ldyBkZWZhdWx0
IGZvciBhY2NlbCBkcml2ZXIgc3VibWlzc2lvbnMsIEkgdGhpbmsKPiA+IG1vc3RseSBiZWNhdXNl
IGFsbCB0aGUgaW50ZXJlc3RpbmcgYml0cyBmb3Igbm9uLTNkIGFjY2VsZXJhdG9ycyBhcmUgaW4g
dGhlCj4gPiBhY2NlbCBJU0EsIGFuZCBubyBsb25nZXIgaW4gdGhlIHJ1bnRpbWUuIFNvIHZlbmRv
cnMgYXJlIGZhaXJseSBoYXBweSB0bwo+ID4gdGhyb3cgaW4gdGhlIHJ1bnRpbWUgYXMgYSBmcmVl
YmllLgo+Cj4gV2VsbCBhIGNvbXBpbGVyIGFuZCBydW50aW1lIG1ha2VzIHRoaW5ncyBlYXNpZXIs
IGJ1dCB0aGUgcmVhbCBxdWVzdGlvbgo+IGlzIGlmIHRoZXkgYXJlIHJlYWxseSByZXF1aXJlZCBm
b3IgdXBzdHJlYW1pbmcgYSBrZXJuZWwgZHJpdmVyPwo+Cj4gSSBtZWFuIHdoYXQgd2UgbmVlZCBp
cyB0byBiZSBhYmxlIHRvIGV4ZXJjaXNlIHRoZSBmdW5jdGlvbmFsaXR5LiBTbwo+IHdvdWxkbid0
IChmb3IgZXhhbXBsZSkgYW4gYXNzZW1ibGVyIGJlIHN1ZmZpY2llbnQ/CgpTbyBubyBvbmUgaGFz
IHRyaWVkIHRoaXMgeWV0LCBidXQgSSB0aGluayBhbiBhc3NlbWJsZXIsIG9yIG1heWJlIGV2ZW4K
anVzdCB0aGUgZnVsbCBQUk0gZm9yIHRoZSBJU0EgaXMgYWxzbyBnb29kIGVub3VnaCBJIHRoaW5r
LgoKSSBndWVzcyBpbiBwcmFjdGljZSBldmVyeW9uZSBqdXN0IGNvbWVzIHdpdGggdGhlIGNvbXBp
bGVyIGZvciBhIGZldyByZWFzb25zOgotIEFNRCBhbmQgSW50ZWwgYXJlIGdyZWF0IGFuZCByZWxl
YXNlIGZ1bGwgUFJNcyBmb3IgdGhlIGdwdSwgYnV0CnByZXBhcmluZyB0aG9zZSB0YWtlcyBhIGxv
dCBvZiB0aW1lLiBPZnRlbiB0aGF0J3MgZG9uZSBhcyBwYXJ0IG9mCmJyaW5nIHVwLCB0byBtYWtl
IHN1cmUgZXZlcnl0aGluZyBpcyBhbm5vdGF0ZWQgcHJvcGVybHksIHNvIHRoYXQgYWxsCnRoZSBu
ZWNlc3NhcnkgYml0cyBhcmUgaW5jbHVkZWQsIGJ1dCBub25lIG9mIHRoZSBmdXR1cmUgc3R1ZmYs
IG9yCnNpbGljb24gYnJpbmctdXAgcGllY2VzLiBTbyBpbiByZWFsaXR5IHlvdSBoYXZlIHRoZSBj
b21waWxlciBiZWZvcmUKeW91IGhhdmUgdGhlIGlzYSBkb2NzLgoKLSByZXZlcnNlLWVuZ2luZWVy
ZWQgZHJpdmVycyBhbHNvIHRlbmQgdG8gaGF2ZSBkZW1vIGNvbXBpbGVycyBiZWZvcmUKYW55dGhp
bmcgbGlrZSBmdWxsIElTQSBkb2NzIHNob3cgdXAgOi0pIEJ1dCBhbHNvIHRoZSBkb2NzIHRvb2xp
bmcgdGhleQpoYXZlIGFyZSBncmVhdC4KCi0gdGhlbiB0aGVyZSdzIHRoZSBjYXNlIG9mIGRldmVs
b3BpbmcgYSBkcml2ZXIgd2l0aCBOREEnZCBkb2NzLiBBZ2Fpbgp5b3UnbGwgaGF2ZSBhIGNvbXBp
bGVyIGFzIHRoZSBvbmx5IHJlYWwgb3V0cHV0LCB0aGVyZSdzIG5vdCBnb2luZyB0bwpiZSBhbnkg
ZG9jcyBvciBhbnl0aGluZyBsaWtlIHRoYXQuCgo+ID4gSXQncyBzdGlsbCBpbmNvbXBsZXRlLCBh
bmQgaXQncyBzdGlsbCB1c2VsZXNzIGlmIHlvdSB3YW50IHRvIGFjdHVhbGx5IGhhY2sKPiA+IG9u
IHRoZSBkcml2ZXIgc3RhY2suCj4KPiBZZWFoLCB3aGVuIHlvdSB3YW50IHRvIGhhY2sgb24gaXQg
aW4gdGhlIHNlbnNlIG9mIGV4dGVuZGluZyBpdCB0aGVuIHRoaXMKPiByZXF1aXJlbWVudCBpcyBj
ZXJ0YWlubHkgdHJ1ZS4KPgo+IEJ1dCBhcyBmYXIgYXMgSSBjYW4gc2VlIHVzZXJzcGFjZSBkb24n
dCBuZWVkIHRvIGJlIGV4dGVuZGFibGUgdG8ganVzdGlmeQo+IGEga2VybmVsIGRyaXZlci4gSXQg
anVzdCBuZWVkcyB0byBoYXZlIGVub3VnaCBnbHVlIHRvIHRob3VnaHRmdWxseQo+IGV4ZXJjaXNl
IHRoZSByZWxldmFudCBrZXJuZWwgaW50ZXJmYWNlcy4KPgo+IEFwcGx5aW5nIHRoYXQgdG8gR1BV
cyBJIHRoaW5rIHdoYXQgeW91IG5lZWQgdG8gYmUgYWJsZSB0byBpcyB0byB3cml0ZQo+IHNoYWRl
cnMsIGJ1dCB0aGF0IGRvZXNuJ3QgbmVlZCB0byBiZSBpbiBhIGhpZ2hlciBsYW5ndWFnZSByZXF1
aXJpbmcgYQo+IGNvbXBpbGVyIGFuZCBydW50aW1lLiBSZWxlYXNlZCBvcGNvZGVzIGFuZCBhIGxv
dyBsZXZlbCBhc3NlbWJsZXIgc2hvdWxkCj4gYmUgc3VmZmljaWVudC4KClllYWggSSB0aGluayBp
biB0aGVvcnkgSVNBIGRvY3MgKyBhc3NlbWJsZXIgdGVzdGNhc2Ugb3Igd2hhdGV2ZXIgaXMKcGVy
ZmVjdGx5IGZpbmUuIEluIHJlYWxpdHkgYW55b25lIHdobyBjYXJlcyBlbm91Z2ggdG8gZG8gdGhp
cyBwcm9wZXJseQpnZXRzIHRvIHRoZSBkZW1vIHF1YWxpdHkgY29tcGlsZXIgc3RhZ2UgZmlyc3Qs
IGFuZCBzbyB0aGF0J3Mgd2hhdCB3ZQp0YWtlIGZvciBtZXJnaW5nIGEgbmV3IHN0YWNrLgoKSSBk
byBkaXNhZ3JlZSB0aGF0IHdlJ3JlIG9ubHkgZXZlciBhc2tpbmcgZm9yIHRoaXMgYW5kIG5vdCBt
b3JlLCBlLmcuCmlmIHlvdSBjb21lIHdpdGggYSBuZXcgM2QgYWNjZWxhdG9yIGFuZCBpdCdzIG5v
dCBjb21pbmcgd2l0aCBhCnVzZXJzcGFjZSBkcml2ZXIgYXMgYSBtZXNhIE1SLCB5b3UgaGF2ZSB0
byBkbyBzb21lIHZlcnkgc2VyaW91cwpleHBsYWluaW5nIGFib3V0IHd0ZiB5b3UncmUgZG9pbmcg
LSBtZXNhM2Qgd29uLCBwcmV0dHkgbXVjaCBhY3Jvc3MgdGhlCmJvYXJkLCBhcyBhIGNvbW1vbiBw
cm9qZWN0IGZvciBib3RoIHZ1bGthbiBhbmQgb3BlbmdsLCBhbmQgdGhlCmp1c3RpZmljYXRpb25z
IGZvciByZWludmVudGluZyB3aGVlbHMgYmV0dGVyIGJlIHJlYWxseSBnb29kIGhlcmUuIEFsc28K
YnkgdGhlIHRpbWUgeW91J3ZlIHdyaXR0ZW4gZW5vdWdoIHNjYWZmb2xkaW5nIHRvIHNob3cgaXQg
aW50ZWdyYXRlcyBpbgpub24tc3R1cGlkIHdheXMgaW50byBtZXNhLCB5b3UgcHJhY3RpY2FsbHkg
aGF2ZSBhIGRlbW8tcXVhbGl0eSBkcml2ZXIKc3RhY2sgYW55d2F5LgoKU2ltaWxhciBvbiB0aGUg
ZGlzcGxheSBzaWRlIG9mIHRoaW5ncywgb3ZlciB0aGUgcGFzdCB5ZWFyIGNvbnNlbnN1cwpmb3Ig
bWVyZ2UgY3JpdGVyaWEgaGF2ZSBnb25lIHVwIHF1aXRlIGEgYml0LCBlLmcuIHRoZXJlJ3MgYSBw
YXRjaApmbG9hdGluZyBhcm91bmQgdG8gbWFrZSB0aGF0IGNsZWFyZXI6CgpodHRwczovL2xvcmUu
a2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMTA3MDYxNjEyNDQuMTAzODU5Mi0xLW1heGltZUBjZXJu
by50ZWNoLwoKT2YgY291cnNlIHRoaXMgZG9lc24ndCBpbmNsdWRlIGFueXRoaW5nIGdyYW5kZmF0
aGVyZWQgaW4gKCpjb3VnaCoKYW1kdmxrICpjb3VnaCopLCBhbmQgYWxzbyBvdXRzaWRlIG9mIDNk
IHRoZXJlJ3MgY2xlYXJseSBubwpjcm9zcy12ZW5kb3IgcHJvamVjdCB0aGF0J3MgZXN0YWJsaXNo
ZWQgZW5vdWdoLCBtZWRpYSwgY29tcHV0ZSwgQUkvTk4Kc3R1ZmYgaXMgYWxsIHZlcnkgYmFkbHkg
ZnJhZ21lbnRlZC4gVGhhdCdzIG1heWJlIGxhbWVudGFibGUsIGJ1dCBsaWtlCnlvdSBzYWlkIG5v
dCByZWFsbHkgYSByZWFzb24gdG8gcmVqZWN0IGEga2VybmVsIGRyaXZlci4KLURhbmllbAotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDov
L2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
