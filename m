Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 57935204B63
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2020 09:40:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15AE9618B2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2020 07:40:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 00B56664E2; Tue, 23 Jun 2020 07:40:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAA996192B;
	Tue, 23 Jun 2020 07:39:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 85FC0607C7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 07:39:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 74FBC6192B; Tue, 23 Jun 2020 07:39:30 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 28B21607C7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 07:39:29 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id s13so15629984otd.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 00:39:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+92MYnF3Gh08MmStig+tCn2Q/L2yjmneEHZzzW7GGvs=;
 b=dcTiFLjuDV7+m+vPjX4H8VQKtklSTtpj4WIx9ePMyb9cJqYH+odzYkMhX29fT8R8jv
 Af2/ZT0BTlUEG8vlJkC2BfFT6jXgJSysDNFnl26Rywrazkp3exCUITi8HlVqC3zSj2S9
 6NehzO6qYjOOiMHvQLchgV/xC1OWhMT7KDuvtZ/icUZTDG/4avmPSfojFw64BZv+F3vP
 PYaFs41qlTANI6svGbQezHLseOVLdqoxwwxiPn0LpGW3odlb/CJ4OgRj366cg/hs33vF
 Hr3jKOc8Wc8MTU0m4ffwXy7PZmdLeXsNhW1MJb23tftVIMxqEWON5PA8mGkpj794XmXj
 JQtw==
X-Gm-Message-State: AOAM533XaRTJSMDxC2YwhBI+inJ8TPWd1Y3kzNqZZGvLq6lc2MDlz0Y5
 c8hSlS9qbTYnS8/qI9KSKxUiqjGWF60aQ96BfhuP2A==
X-Google-Smtp-Source: ABdhPJyuTPn8gHto3Zj0qvtBWFEZww/Nxosv6E4e67PZOhsc7GOGHkoFk1BcCVm2dLP+f9GAnXbuSF6PpstaZHEQELA=
X-Received: by 2002:a4a:d415:: with SMTP id n21mr17485719oos.89.1592897968519; 
 Tue, 23 Jun 2020 00:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local> <20200611141515.GW6578@ziepe.ca>
 <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
In-Reply-To: <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 23 Jun 2020 09:39:17 +0200
Message-ID: <CAKMK7uHBKrpDWu+DvtYncDK=LOdGJyMK7t6fpOaGovnYFiBUZw@mail.gmail.com>
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
LgoKQ2FuIHlvdSBwbHMgY2MgdGhlc2UgcGF0Y2hlcyB0byBkcmktZGV2ZWwgd2hlbiB0aGV5IHNo
b3cgdXA/IERlcGVuZGluZwp1cG9uIGhvdyB5b3VyIGh3IHdvcmtzIHRoZXJlJ3MgYW5kIGVuZGxl
c3MgYW1vdW50IG9mIGJhZCB0aGluZ3MgdGhhdApjYW4gaGFwcGVuLgoKQWxzbyBJIHRoaW5rIChh
Z2FpbiBkZXBlbmRpbmcgdXBvbiBob3cgdGhlIGh3IGV4YWN0bHkgd29ya3MpIHRoaXMKc3R1ZmYg
d291bGQgYmUgYSBwZXJmZWN0IGV4YW1wbGUgZm9yIHRoZSBkbWFfZmVuY2UgYW5ub3RhdGlvbnMu
CgpUaGUgd29yc3QgY2FzZSBpcyBpZiB5b3VyIGh3IGNhbm5vdCBwcmVlbXB0IHdoaWxlIGEgaHcg
cGFnZSBmYXVsdCBpcwpwZW5kaW5nLiBUaGF0IG1lYW5zIG5vbmUgb2YgdGhlIGRtYV9mZW5jZSB3
aWxsIGV2ZXIgc2lnbmFsICh0aGUgYW1ka2ZkCnByZWVtcHQgY3R4IGZlbmNlcyB3b250LCBhbmQg
dGhlIGNsYXNzaWMgZmVuY2VzIGZyb20gYW1kZ3B1IG1pZ2h0IGJlCmFsc28gc3RhbGwpLiBBdCBs
ZWFzdCB3aGVuIHlvdSdyZSB1bmx1Y2t5IGFuZCB0aGUgZmVuY2UgeW91J3JlIHdhaXRpbmcKb24g
c29tZWhvdyAoYW55d2hlcmUgaW4gaXRzIGRlcGVuZGVuY3kgY2hhaW4gcmVhbGx5KSBuZWVkIHRo
ZSBlbmdpbmUKdGhhdCdzIGN1cnJlbnRseSBibG9ja2VkIHdhaXRpbmcgZm9yIHRoZSBodyBwYWdl
IGZhdWx0LgoKVGhhdCBpbiB0dXJuIG1lYW5zIGFueXRoaW5nIHlvdSBkbyBpbiB5b3VyIGh3IHBh
Z2UgZmF1bHQgaGFuZGxlciBpcyBpbgp0aGUgY3JpdGljYWwgc2VjdGlvbiBmb3IgZG1hIGZlbmNl
IHNpZ25hbGxpbmcsIHdoaWNoIGhhcyBmYXIgcmVhY2hpbmcKaW1wbGljYXRpb25zLgotRGFuaWVs
Cgo+Cj4gUmVnYXJkcywKPiAgIEZlbGl4Cj4KPgo+ID4gUmlnaHQsIG5vciB3aWxsIFJETUEgT0RQ
Lgo+ID4KPiA+IEphc29uCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gYW1kLWdmeCBtYWlsaW5nIGxpc3QKPiA+IGFtZC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2FtZC1nZngKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVs
IENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
