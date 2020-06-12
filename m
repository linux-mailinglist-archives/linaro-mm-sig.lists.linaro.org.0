Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 646B41F7356
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2020 07:12:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 923AC6650A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2020 05:11:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7E2CE66513; Fri, 12 Jun 2020 05:11:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08A196650E;
	Fri, 12 Jun 2020 05:11:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4597560E41
 for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2020 05:11:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2E51C6650E; Fri, 12 Jun 2020 05:11:20 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by lists.linaro.org (Postfix) with ESMTPS id 0A97A60E41
 for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2020 05:11:19 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id b8so7667561oic.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 22:11:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8V+bxbj5WCvzCnxozwhnhcY6TUJ/xexRHaQJ/PDvKQU=;
 b=A4JVaWw5anJ+cIetXFn89WsPXVp4ujAEfbue5imk1reuabopH1KiMIYU763sbs/IGe
 47LHECmplXaKlZDB8HSkchBk5zClUAHva7A9XBRN0hK+MpBJbFWyDt0BROmCi2GXGFto
 mCBs5J4kI6S/9iu/ytWU8oA2fvMphlgms6sTHdpHJcy+F+7yAjoy5GNQ2WuW6VHY9B5L
 vEoKYZhUfg7tYBSgRriqK5J0xvSYqmcmZcrOmfM0SpOIC+08cL64xX7DIc1m0TDl2DBt
 s5fOxbxXOwnO2VSb/NS2JCt0zmU9MODqDm4Tk4+hjLsF5vaX3x1+08s4ZUj6PE+w/XIv
 VJhA==
X-Gm-Message-State: AOAM5330hv03QHCFPSlq45k4LBwBFX7sN6nI2YyaVa+VmHntQlwcX7dj
 fSZWP8HLuieJ/Lr/1Vsixm1YYRc2pzqyV79Ilfy/sg==
X-Google-Smtp-Source: ABdhPJzrYoClOB8B8OguvLlFrj2m7W+GxCU2S2r//wrUh7MPNfSE//K6chPjLrBcT0Xc1X5J0GrxFt1X3IqO0jmAaSg=
X-Received: by 2002:a05:6808:6d7:: with SMTP id
 m23mr980424oih.14.1591938678473; 
 Thu, 11 Jun 2020 22:11:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local> <20200611141515.GW6578@ziepe.ca>
 <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
In-Reply-To: <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 12 Jun 2020 07:11:07 +0200
Message-ID: <CAKMK7uFE0uc5GNU49dYYQLNWbMFmQPcz_dAHHQT-dNe+Zzva-A@mail.gmail.com>
To: Felix Kuehling <felix.kuehling@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
	annotations
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

T24gRnJpLCBKdW4gMTIsIDIwMjAgYXQgMTozNSBBTSBGZWxpeCBLdWVobGluZyA8ZmVsaXgua3Vl
aGxpbmdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBBbSAyMDIwLTA2LTExIHVtIDEwOjE1IGEubS4gc2No
cmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gPiBPbiBUaHUsIEp1biAxMSwgMjAyMCBhdCAxMDozNDoz
MEFNICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4+PiBJIHN0aWxsIGhhdmUgbXkgZG91
YnRzIGFib3V0IGFsbG93aW5nIGZlbmNlIHdhaXRpbmcgZnJvbSB3aXRoaW4gc2hyaW5rZXJzLgo+
ID4+PiBJTU8gaWRlYWxseSB0aGV5IHNob3VsZCB1c2UgYSB0cnl3YWl0IGFwcHJvYWNoLCBpbiBv
cmRlciB0byBhbGxvdyBtZW1vcnkKPiA+Pj4gYWxsb2NhdGlvbiBkdXJpbmcgY29tbWFuZCBzdWJt
aXNzaW9uIGZvciBkcml2ZXJzIHRoYXQKPiA+Pj4gcHVibGlzaCBmZW5jZXMgYmVmb3JlIGNvbW1h
bmQgc3VibWlzc2lvbi4gKFNpbmNlIGVhcmx5IHJlc2VydmF0aW9uIG9iamVjdAo+ID4+PiByZWxl
YXNlIHJlcXVpcmVzIHRoYXQpLgo+ID4+IFllYWggaXQgaXMgYSBiaXQgYW5ub3lpbmcsIGUuZy4g
Zm9yIGRybS9zY2hlZHVsZXIgSSB0aGluayB3ZSdsbCBlbmQgdXAKPiA+PiB3aXRoIGEgbWVtcG9v
bCB0byBtYWtlIHN1cmUgaXQgY2FuIGhhbmRsZSBpdCdzIGFsbG9jYXRpb25zLgo+ID4+Cj4gPj4+
IEJ1dCBzaW5jZSBkcml2ZXJzIGFyZSBhbHJlYWR5IHdhaXRpbmcgZnJvbSB3aXRoaW4gc2hyaW5r
ZXJzIGFuZCBJIHRha2UgeW91cgo+ID4+PiB3b3JkIGZvciBITU0gcmVxdWlyaW5nIHRoaXMsCj4g
Pj4gWWVhaCB0aGUgYmlnIHRyb3VibGUgaXMgSE1NIGFuZCBtbXUgbm90aWZpZXJzLiBUaGF0J3Mg
dGhlIHJlYWxseSBhd2t3YXJkCj4gPj4gb25lLCB0aGUgc2hyaW5rZXIgb25lIGlzIGEgbG90IGxl
c3MgZXN0YWJsaXNoZWQuCj4gPiBJIHJlYWxseSBxdWVzdGlvbiBpZiBIVyB0aGF0IG5lZWRzIHNv
bWV0aGluZyBsaWtlIERNQSBmZW5jZSBzaG91bGQKPiA+IGV2ZW4gYmUgdXNpbmcgbW11IG5vdGlm
aWVycyAtIHRoZSBiZXN0IHVzZSBpcyBIVyB0aGF0IGNhbiBmZW5jZSB0aGUKPiA+IERNQSBkaXJl
Y3RseSB3aXRob3V0IGhhdmluZyB0byBnZXQgaW52b2x2ZWQgd2l0aCBzb21lIGNvbW1hbmQgc3Ry
ZWFtCj4gPiBwcm9jZXNzaW5nLgo+ID4KPiA+IE9yIGF0IHRoZSB2ZXJ5IGxlYXN0IGl0IHNob3Vs
ZCBub3QgYmUgYSBnZW5lcmljIERNQSBmZW5jZSBidXQgYQo+ID4gbmFycm93ZWQgY29tcGxldGlv
biB0aWVkIG9ubHkgaW50byB0aGUgc2FtZSBHUFUgZHJpdmVyJ3MgY29tbWFuZAo+ID4gY29tcGxl
dGlvbiBwcm9jZXNzaW5nIHdoaWNoIHNob3VsZCBiZSBhYmxlIHRvIHByb2dyZXNzIHdpdGhvdXQK
PiA+IGJsb2NraW5nLgo+ID4KPiA+IFRoZSBpbnRlbnQgb2Ygbm90aWZpZXJzIHdhcyBuZXZlciB0
byBlbmRsZXNzbHkgYmxvY2sgd2hpbGUgdmFzdAo+ID4gYW1vdW50cyBvZiBTVyBkb2VzIHdvcmsu
Cj4gPgo+ID4gR29pbmcgYXJvdW5kIGFuZCBzd2l0Y2hpbmcgZXZlcnl0aGluZyBpbiBhIEdQVSB0
byBHRlBfQVRPTUlDIHNlZW1zCj4gPiBsaWtlIGJhZCBpZGVhLgo+ID4KPiA+PiBJJ3ZlIHBpbmdl
ZCBhIGJ1bmNoIG9mIGFybXNvYyBncHUgZHJpdmVyIHBlb3BsZSBhbmQgYXNrIHRoZW0gaG93IG11
Y2ggdGhpcwo+ID4+IGh1cnRzLCBzbyB0aGF0IHdlIGhhdmUgYSBjbGVhciBhbnN3ZXIuIE9uIHg4
NiBJIGRvbid0IHRoaW5rIHdlIGhhdmUgbXVjaAo+ID4+IG9mIGEgY2hvaWNlIG9uIHRoaXMsIHdp
dGggdXNlcnB0ciBpbiBhbWQgYW5kIGk5MTUgYW5kIGhtbSB3b3JrIGluIG5vdXZlYXUKPiA+PiAo
YnV0IG5vdXZlYXUgSSB0aGluayBkb2Vzbid0IHVzZSBkbWFfZmVuY2UgaW4gdGhlcmUpLgo+Cj4g
U29vbiBub3V2ZWF1IHdpbGwgZ2V0IGNvbXBhbnkuIFdlJ3JlIHdvcmtpbmcgb24gYSByZWNvdmVy
YWJsZSBwYWdlIGZhdWx0Cj4gaW1wbGVtZW50YXRpb24gZm9yIEhNTSBpbiBhbWRncHUgd2hlcmUg
d2UnbGwgbmVlZCB0byB1cGRhdGUgcGFnZSB0YWJsZXMKPiB1c2luZyB0aGUgR1BVcyBTRE1BIGVu
Z2luZSBhbmQgd2FpdCBmb3IgY29ycmVzcG9uZGluZyBmZW5jZXMgaW4gTU1VCj4gbm90aWZpZXJz
LgoKV2VsbCBhbWRncHUgYWxyZWFkeSBoYXMgZG1hX2ZlbmNlIHdhaXRzIGluIHRoZSBobW0gY2Fs
bGJhY2tzLCBzbwpub3RoaW5nIG5ldy4gQnV0IHNpbmNlIHlvdSBzdGFydCB1c2luZyB0aGVzZSBp
biBhbWRrZmQgLi4uIHBlcmZlY3QKb3Bwb3J0dW5pdHkgdG8gYW5ub3RhdGUgdGhlIGFtZGtmZCBw
YXRocyBmb3IgZmVuY2Ugc2lnbmFsbGluZyBjcml0aWNhbApzZWN0aW9ucz8gRXNwZWNpYWxseSB0
aGUgcHJlZW1wdC1jdHggZmVuY2Ugc2hvdWxkIGJlIGFuIGludGVyZXN0aW5nCmNhc2UgdG8gYW5u
b3RhdGUgYW5kIHNlZSB3aGV0aGVyIGxvY2tkZXAgZmluZHMgYW55dGhpbmcuIE5vdCBzdXJlIHdo
YXQKZWxzZSB0aGVyZSBpcy4KLURhbmllbAoKPgo+IFJlZ2FyZHMsCj4gICBGZWxpeAo+Cj4KPiA+
IFJpZ2h0LCBub3Igd2lsbCBSRE1BIE9EUC4KPiA+Cj4gPiBKYXNvbgo+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IGFtZC1nZnggbWFpbGluZyBs
aXN0Cj4gPiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9hbWQtZ2Z4Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0
Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgoKCi0tIApEYW5pZWwgVmV0dGVy
ClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5j
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
