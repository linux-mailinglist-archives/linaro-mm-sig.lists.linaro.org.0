Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E96412B8A65
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Nov 2020 04:20:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A630166596
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Nov 2020 03:20:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 94874666E6; Thu, 19 Nov 2020 03:20:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDD10666E5;
	Thu, 19 Nov 2020 03:19:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 941A561877
 for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Nov 2020 03:19:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 86468666EF; Thu, 19 Nov 2020 03:19:27 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by lists.linaro.org (Postfix) with ESMTPS id 974E161877
 for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Nov 2020 03:19:19 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id t143so4764155oif.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 19:19:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2H1F3Ka0Ka6X1YRsJFJYW9O6FRzLC0ev/xiBm/ktwsY=;
 b=g/Zio1G0MJI4+udEKT5SBz3HajYV3lijC+iUb4Tf/iaMOLPNuVVySe1vrQiMa4464U
 qk+NiTbcveAhRhN/bvmHRvOvxYNV2DEbgPnSwOp6Wu1Vd72YVP9xwSFiq91YWGlCcUmL
 36E1H/OSho4SPWx2sgUuvU4ruSLTwGSLvSSgBUix6lx8UIMnPVkiX4QilOWMQ1Dtkj+A
 KZjCBGfJGoGCl86nPZTeaULKbLky9T3z/BbJB4DksjcOICO0Kxtk/NIbBvKwRrnH1GAp
 0EggtXSNyvHbsqc2hteD6aJX0EN3CMn59AszKmxMcdIGxcAkMPGJ1Zan/ZMNbmK47/Eh
 uLuQ==
X-Gm-Message-State: AOAM531b/eBw4a1p/YBE6tt0n3ncji2vE4s1o7TabKrisBNZOR26hZY9
 VR4y01tHTKWo3+9MxGqlK52zlvkzpGfhdZ3cGLh4qjUQ
X-Google-Smtp-Source: ABdhPJwiWiMPc8ySQheAiJ+dOGvXYSSllZWJP6v01aEX68C0WjWv5jKCxWcHdCZq8zmoeaKI9163QlcRHy4zl2ArzSg=
X-Received: by 2002:a05:6808:4b:: with SMTP id
 v11mr1511116oic.169.1605755958902; 
 Wed, 18 Nov 2020 19:19:18 -0800 (PST)
MIME-Version: 1.0
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-5-minchan@kernel.org>
 <CGME20201118030110epcas2p1105a09711ea2c123f19f413b32372764@epcas2p1.samsung.com>
 <CALAqxLWqDLHpOHNEayvhDjJeXjEk_uneH2=d9fy8M87EjKfReA@mail.gmail.com>
 <20201119011431.GA136599@KEI>
In-Reply-To: <20201119011431.GA136599@KEI>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 18 Nov 2020 19:19:07 -0800
Message-ID: <CALAqxLV=r-V6u8hq2fTmxq855nT7QPkkjyAYdPeZRkYPBi_CKg@mail.gmail.com>
To: Hyesoo Yu <hyesoo.yu@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-mm <linux-mm@kvack.org>,
 Minchan Kim <minchan@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Christian Koenig <christian.koenig@amd.com>, John Dias <joaodias@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 4/4] dma-heap: Devicetree binding for
	chunk heap
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

T24gV2VkLCBOb3YgMTgsIDIwMjAgYXQgNToyMiBQTSBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1z
dW5nLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE5vdiAxNywgMjAyMCBhdCAwNzowMDo1NFBNIC0w
ODAwLCBKb2huIFN0dWx0eiB3cm90ZToKPiA+IFNvIEkgc3VzcGVjdCBSb2Igd2lsbCBwdXNoIGJh
Y2sgb24gdGhpcyBhcyBoZSBoYXMgZm9yIG90aGVyIGR0Cj4gPiBiaW5kaW5ncyByZWxhdGVkIHRv
IGlvbi9kbWFidWYgaGVhcHMgKEkgdHJpZWQgdG8gcHVzaCBhIHNpbWlsYXIKPiA+IHNvbHV0aW9u
IHRvIGV4cG9ydGluZyBtdWx0aXBsZSBDTUEgYXJlYXMgdmlhIGRtYWJ1ZiBoZWFwcykuCj4gPgo+
ID4gVGhlIHByb3Bvc2FsIGhlIHNlZW1lZCB0byBsaWtlIGJlc3Qgd2FzIGhhdmluZyBhbiBpbi1r
ZXJuZWwgZnVuY3Rpb24KPiA+IHRoYXQgYSBkcml2ZXIgd291bGQgY2FsbCB0byBpbml0aWFsaXpl
IHRoZSBoZWFwIChhc3NvY2lhdGVkIHdpdGggdGhlCj4gPiBDTUEgcmVnaW9uIHRoZSBkcml2ZXIg
aXMgaW50ZXJlc3RlZCBpbikuIFNpbWlsYXIgdG8gS3VuaWhpa28gSGF5YXNoaSdzCj4gPiBwYXRj
aCBoZXJlOgo+ID4gICAtIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMTU5NDk0ODIwOC00
NzM5LTEtZ2l0LXNlbmQtZW1haWwtaGF5YXNoaS5rdW5paGlrb0Bzb2Npb25leHQuY29tLwo+ID4K
PiA+IFRoZSBvbmUgc3RpY2tpbmcgcG9pbnQgZm9yIHRoYXQgcGF0Y2ggKHdoaWNoIEkgdGhpbmsg
aXMgYSBnb29kIG9uZSksCj4gPiBpcyB0aGF0IHdlIGRvbid0IGhhdmUgYW55IGluLXRyZWUgdXNl
cnMsIHNvIGl0IGNvdWxkbid0IGJlIG1lcmdlZCB5ZXQuCj4gPgo+ID4gQSBzaW1pbGFyIGFwcHJv
YWNoIG1pZ2h0IGJlIGdvb2QgaGVyZSwgYnV0IGFnYWluIHdlIHByb2JhYmx5IG5lZWQgdG8KPiA+
IGhhdmUgYXQgbGVhc3Qgb25lIGluLXRyZWUgdXNlciB3aGljaCBjb3VsZCBjYWxsIHN1Y2ggYSBy
ZWdpc3RyYXRpb24KPiA+IGZ1bmN0aW9uLgo+Cj4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4KPgo+
IFRoZSBjaHVuayBoZWFwIGlzIG5vdCBjb25zaWRlcmVkIGZvciBkZXZpY2Utc3BlY2lmaWMgcmVz
ZXJ2ZWQgbWVtb3J5IGFuZCBzcGVjaWZpYyBkcml2ZXIuCj4gSXQgaXMgc2ltaWxhciB0byBzeXN0
ZW0gaGVhcCwgYnV0IGl0IG9ubHkgY29sbGVjdHMgaGlnaC1vcmRlciBwYWdlcyBieSB1c2luZyBz
cGVjaWZpYyBjbWEtYXJlYSBmb3IgcGVyZm9ybWFuY2UuCgpTbywgeWVzIEkgYWdyZWUsIHRoZSBj
aHVuayBoZWFwIGlzbid0IGRldmljZSBzcGVjaWZpYy4gSXQncyBqdXN0IHRoYXQKdGhlIENNQSBy
ZWdpb25zIHVzdWFsbHkgYXJlIHRpZWQgdG8gZGV2aWNlcy4KClRoZSBtYWluIG9iamVjdGlvbiB0
byB0aGlzIHN0eWxlIG9mIHNvbHV0aW9uIGhhcyBiZWVuIGR1ZSB0byB0aGUgZmFjdAp0aGF0IHRo
ZSBEVFMgaXMgc3VwcG9zZWQgdG8gZGVzY3JpYmUgdGhlIHBoeXNpY2FsIGhhcmR3YXJlIChpbiBh
biBPUwphZ25vc3RpYyB3YXkpLCByYXRoZXIgdGhhbiBkZWZpbmUgY29uZmlndXJhdGlvbiBpbmZv
IGZvciBMaW51eApzb2Z0d2FyZSBkcml2ZXJzLgoKT2J2aW91c2x5IHRoaXMgY2FuIGJlIHF1aWJi
bGVkIGFib3V0LCBhcyB0aGUgbm9ybWFsIHdheSBvZiB0eWluZwpkZXZpY2VzIHRvIENNQSBoYXMg
c29tZSBhc3N1bXB0aW9ucyBvZiB3aGF0IHRoZSBkcml2ZXIgd2lsbCB1c2UgdGhhdApyZWdpb24g
Zm9yLCByYXRoZXIgdGhhbiBzb21laG93IHJlcHJlc2VudGluZyBhIHBoeXNpY2FsIHRpZSBiZXR3
ZWVuIGEKbWVtb3J5IHJlc2VydmF0aW9uIGFuZCBhIGRldmljZS4gTm9uZXRoZWxlc3MsIFJvYiBo
YXMgYmVlbiBoZXNpdGFudCB0bwp0YWtlIGFueSBzb3J0IG9mIElPTi9EbWFCdWYgSGVhcCBEVCBk
ZXZpY2VzLCBhbmQgaGFzIGJlZW4gbW9yZQppbnRlcmVzdGVkIGluIHNvbWUgZGV2aWNlIGhhdmlu
ZyB0aGUgbWVtb3J5IHJlc2VydmF0aW9uIHJlZmVyZW5jZSBhbmQKdGhlIGRyaXZlciBmb3IgdGhh
dCBkb2luZyB0aGUgcmVnaXN0cmF0aW9uLgoKPiBJdCBpcyBzdHJhbmdlIHRoYXQgdGhlcmUgaXMg
aW4tdHJlZSB1c2VyIHdobyByZWdpc3RlcnMgY2h1bmsgaGVhcC4KPiAoV291bGRuJ3QgaXQgYmUg
c3RyYW5nZSBmb3Igc29tZSB1c2VycyB0byByZWdpc3RlciB0aGUgc3lzdGVtIGhlYXA/KQoKV2Vs
bCwgYXMgdGhlcmUncyBubyByZXNlcnZhdGlvbi9jb25maWd1cmF0aW9uIG5lZWRlZCwgdGhlIHN5
c3RlbSBoZWFwCmNhbiByZWdpc3RlciBpdHNlbGYuCgpUaGUgQ01BIGhlYXAgY3VycmVudGx5IG9u
bHkgcmVnaXN0ZXJzIHRoZSBkZWZhdWx0IENNQSBoZWFwLCBhcyB3ZQpkaWRuJ3Qgd2FudCB0byBl
eHBvc2UgYWxsIENNQSByZWdpb25zIGFuZCB0aGVyZSdzIG90aGVyd2lzZSBubyB3YXkgdG8KcGlj
ayBhbmQgY2hvb3NlLgoKPiBJcyB0aGVyZSBhIHJlYXNvbiB0byB1c2UgZG1hLWhlYXAgZnJhbWV3
b3JrIHRvIGFkZCBjbWEtYXJlYSBmb3Igc3BlY2lmaWMgZGV2aWNlID8KPgo+IEV2ZW4gaWYgc29t
ZSBpbi10cmVlIHVzZXJzIHJlZ2lzdGVyIGRtYS1oZWFwIHdpdGggY21hLWFyZWEsIHRoZSBidWZm
ZXJzIGNvdWxkIGJlIGFsbG9jYXRlZCBpbiB1c2VyLWxhbmQgYW5kIHRoZXNlIGNvdWxkIGJlIHNo
YXJlZCBhbW9uZyBvdGhlciBkZXZpY2VzLgo+IEZvciBleGNsdXNpdmUgYWNjZXNzLCBJIGd1ZXNz
LCB0aGUgZGV2aWNlIGRvbid0IG5lZWQgdG8gcmVnaXN0ZXIgZG1hLWhlYXAgZm9yIGNtYSBhcmVh
Lgo+CgpJdCdzIG5vdCByZWFsbHkgYWJvdXQgZXhjbHVzaXZlIGFjY2Vzcy4gTW9yZSBqdXN0IHRo
YXQgaWYgeW91IHdhbnQgdG8KYmluZCBhIG1lbW9yeSByZXNlcnZhdGlvbi9yZWdpb24gKGNtYSBv
ciBvdGhlcndpc2UpLCBhdCBsZWFzdCBmb3IgRFRTLAppdCBuZWVkcyB0byBiaW5kIHdpdGggc29t
ZSBkZXZpY2UgaW4gRFQuCgpUaGVuIHRoZSBkZXZpY2UgZHJpdmVyIGNhbiByZWdpc3RlciB0aGF0
IHJlZ2lvbiB3aXRoIGEgaGVhcCBkcml2ZXIuClRoaXMgYXZvaWRzIGFkZGluZyBuZXcgTGludXgt
c3BlY2lmaWMgc29mdHdhcmUgYmluZGluZ3MgdG8gRFQuIEl0CmJlY29tZXMgYSBkcml2ZXIgaW1w
bGVtZW50YXRpb24gZGV0YWlsIGluc3RlYWQuIFRoZSBwcmltYXJ5IHVzZXIgb2YKdGhlIGhlYXAg
dHlwZSB3b3VsZCBwcm9iYWJseSBiZSBhIHByYWN0aWNhbCBwaWNrIChpZSB0aGUgZGlzcGxheSBv
cgppc3AgZHJpdmVyKS4KClRoZSBvdGhlciBwb3RlbnRpYWwgc29sdXRpb24gUm9iIGhhcyBzdWdn
ZXN0ZWQgaXMgdGhhdCB3ZSBjcmVhdGUgc29tZQp0YWcgZm9yIHRoZSBtZW1vcnkgcmVzZXJ2YXRp
b24gKGllOiBsaWtlIHdlIGRvIHdpdGggY21hOiAicmV1c2FibGUiKSwKd2hpY2ggY2FuIGJlIHVz
ZWQgdG8gcmVnaXN0ZXIgdGhlIHJlZ2lvbiB0byBhIGhlYXAuIEJ1dCB0aGlzIGhhcyB0aGUKcHJv
YmxlbSB0aGF0IGVhY2ggdGFnIGhhcyB0byBiZSB3ZWxsIGRlZmluZWQgYW5kIG1hcCB0byBhIGtu
b3duIGhlYXAuCgp0aGFua3MKLWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
