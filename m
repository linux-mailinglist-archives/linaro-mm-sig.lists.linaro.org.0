Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECAC219F8D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:02:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D2726659B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:02:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7196D6657B; Thu,  9 Jul 2020 12:02:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CBB9666F1;
	Thu,  9 Jul 2020 11:34:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AEFFB665B5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 15:15:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 96EC1665BF; Fri, 19 Jun 2020 15:15:55 +0000 (UTC)
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by lists.linaro.org (Postfix) with ESMTPS id D49E0665B6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 15:15:52 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id i16so7424936qtr.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 08:15:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=X2HlrHXMTsUGZp7zXkK0C6ORZXN08Rk3M03svjYzeco=;
 b=hhXmIwWEztvG8M6KeGZJqRfmDwyeyoEVJVi8MJ4hompL8dwU+gO9BOxb5B7+ORs/EV
 tO9CxIMjyzO/ZXM48hweNTGIJ6iyC7IbLNudDSs7aNNts1UHlm5nDm9NUT78gcdzYO05
 +hc5ivV+5/YQwTPdeYGDAd8dBb/g4A8NlKtWrY1kcgDhMs6Hi2YoNiwpX8nBolYjiOmz
 PRXcRdmbBGvzCJtkmjubj0Krs75IiPEEN+aFTEqHGPbDA3kjDl0r2yiID9cOqPMDGkOI
 WqYfP4txV2uSb5ktKgxGCoiFCHhl+O4dqcly75/+iC0begHvyMtML9d4xwQ7CIIUgyei
 uokg==
X-Gm-Message-State: AOAM532CXMM+uNmXjwf3F/RWhPcbAAstcJURRBjN4FB97F9iCTXQrpol
 1BR+SPpyJ2ac8KvyRF9Frhm4zg==
X-Google-Smtp-Source: ABdhPJwyaHoM3658+VLpg+i0sFuo+6OU0FHPK264DOfSFcO/+Xp6yT6eiXXI1R4LmEbcaqkeIQOs/w==
X-Received: by 2002:ac8:2fb0:: with SMTP id l45mr3800795qta.260.1592579752403; 
 Fri, 19 Jun 2020 08:15:52 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id y54sm7195320qtj.28.2020.06.19.08.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 08:15:51 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jmIkB-00Ap5C-Bi; Fri, 19 Jun 2020 12:15:51 -0300
Date: Fri, 19 Jun 2020 12:15:51 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200619151551.GP6578@ziepe.ca>
References: <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
 <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca>
 <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDU6MDY6MDRQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAxOjM5IFBNIEphc29uIEd1bnRob3JwZSA8
amdnQHppZXBlLmNhPiB3cm90ZToKPiA+Cj4gPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAwOToy
MjowOUFNICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPiA+IEFzIEkndmUgdW5kZXJz
dG9vZCBHUFUgdGhhdCBtZWFucyB5b3UgbmVlZCB0byBzaG93IHRoYXQgdGhlIGNvbW1hbmRzCj4g
PiA+ID4gYXNzb2NpYXRlZCB3aXRoIHRoZSBidWZmZXIgaGF2ZSBjb21wbGV0ZWQuIFRoaXMgaXMg
YWxsIGxvY2FsIHN0dWZmCj4gPiA+ID4gd2l0aGluIHRoZSBkcml2ZXIsIHJpZ2h0PyBXaHkgdXNl
IGZlbmNlIChvdGhlciB0aGFuIGl0IGFscmVhZHkgZXhpc3RzKQo+ID4gPgo+ID4gPiBCZWNhdXNl
IHRoYXQncyB0aGUgZW5kLW9mLWRtYSB0aGluZy4gQW5kIGl0J3MgY3Jvc3MtZHJpdmVyIGZvciB0
aGUKPiA+ID4gYWJvdmUgcmVhc29ucywgZS5nLgo+ID4gPiAtIGRldmljZSBBIHJlbmRlcnMgc29t
ZSBzdHVmZi4gVXNlcnNwYWNlIGdldHMgZG1hX2ZlbmNlIEEgb3V0IG9mIHRoYXQKPiA+ID4gKHdl
bGwgc3luY19maWxlIG9yIG9uZSBvZiB0aGUgb3RoZXIgdWFwaSBpbnRlcmZhY2VzLCBidXQgeW91
IGdldCB0aGUKPiA+ID4gaWRlYSkKPiA+ID4gLSB1c2Vyc3BhY2UgKGFjcm9zcyBwcm9jZXNzIG9y
IGp1c3QgZGlmZmVyZW50IGRyaXZlcikgaXNzdWVzIG1vcmUKPiA+ID4gcmVuZGVyaW5nIGZvciBk
ZXZpY2UgQiwgd2hpY2ggZGVwZW5kcyB1cG9uIHRoZSByZW5kZXJpbmcgZG9uZSBvbgo+ID4gPiBk
ZXZpY2UgQS4gU28gZG1hX2ZlbmNlIEEgaXMgYW4gZGVwZW5kZW5jeSBhbmQgd2lsbCBibG9jayB0
aGlzIGRtYQo+ID4gPiBvcGVyYXRpb24uIFVzZXJzcGFjZSAoYW5kIHRoZSBrZXJuZWwpIGdldHMg
ZG1hX2ZlbmNlIEIgb3V0IG9mIHRoaXMKPiA+ID4gLSBiZWNhdXNlIHVuZm9ydHVuYXRlIHJlYXNv
bnMsIHRoZSBzYW1lIHJlbmRlcmluZyBvbiBkZXZpY2UgQiBhbHNvCj4gPiA+IG5lZWRzIGEgdXNl
cnB0ciBidWZmZXIsIHdoaWNoIG1lYW5zIHRoYXQgZG1hX2ZlbmNlIEIgaXMgYWxzbyB0aGUgb25l
Cj4gPiA+IHRoYXQgdGhlIG1tdV9yYW5nZV9ub3RpZmllciBuZWVkcyB0byB3YWl0IG9uIGJlZm9y
ZSBpdCBjYW4gdGVsbCBjb3JlCj4gPiA+IG1tIHRoYXQgaXQgY2FuIGdvIGFoZWFkIGFuZCByZWxl
YXNlIHRob3NlIHBhZ2VzCj4gPgo+ID4gSSB3YXMgYWZyYWlkIHlvdSdkIHNheSB0aGlzIC0gdGhp
cyBpcyBjb21wbGV0ZSBtYWRuZXNzIGZvciBvdGhlciBETUEKPiA+IGRldmljZXMgdG8gYm9ycm93
IHRoZSBub3RpZmllciBob29rIG9mIHRoZSBmaXJzdCBkZXZpY2UhCj4gCj4gVGhlIGZpcnN0IGRl
dmljZSBtaWdodCBub3QgZXZlbiBoYXZlIGEgbm90aWZpZXIuIFRoaXMgaXMgdGhlIDJuZAo+IGRl
dmljZSwgd2FpdGluZyBvbiBhIGRtYV9mZW5jZSBvZiBpdHMgb3duLCBidXQgd2hpY2ggaGFwcGVu
cyB0byBiZQo+IHF1ZXVlZCB1cCBhcyBhIGRtYSBvcGVyYXRpb24gYmVoaW5kIHNvbWV0aGluZyBl
bHNlLgo+IAo+ID4gV2hhdCBpZiB0aGUgZmlyc3QgZGV2aWNlIGlzIGEgcGFnZSBmYXVsdGluZyBk
ZXZpY2UgYW5kIGRvZXNuJ3QgY2FsbAo+ID4gZG1hX2ZlbmNlPz8KPiAKPiBOb3Qgc3VyZSB3aGF0
IHlvdSBtZWFuIHdpdGggdGhpcyAuLi4gZXZlbiBpZiBpdCBkb2VzIHBhZ2UtZmF1bHRpbmcgZm9y
Cj4gc29tZSBvdGhlciByZWFzb25zLCBpdCdsbCBlbWl0IGEgZG1hX2ZlbmNlIHdoaWNoIHRoZSAy
bmQgZGV2aWNlIGNhbgo+IGNvbnN1bWUgYXMgYSBkZXBlbmRlbmN5LgoKQXQgc29tZSBwb2ludCB0
aGUgcGFnZXMgdW5kZXIgdGhlIGJ1ZmZlciBoYXZlIHRvIGJlIGVpdGhlciBwaW5uZWQKb3IgcHJv
dGVjdGVkIGJ5IG1tdSBub3RpZmllci4gU28gZWFjaCBhbmQgZXZlcnkgc2luZ2xlIGRldmljZSBk
b2luZwpETUEgdG8gdGhlc2UgcGFnZXMgbXVzdCBlaXRoZXIgcGluLCBvciB1c2UgbW11IG5vdGlm
aWVyLgoKRHJpdmVyIEEgc2hvdWxkIG5ldmVyICdib3Jyb3cnIGEgbm90aWZpZXIgZnJvbSBCCgpJ
ZiBlYWNoIGRyaXZlciBjb250cm9scyBpdHMgb3duIGxpZmV0aW1lIG9mIHRoZSBidWZmZXJzLCB3
aHkgY2FuJ3QgdGhlCmRyaXZlciBsb2NhbGx5IHdhaXQgZm9yIGl0cyBkZXZpY2UgdG8gZmluaXNo
PwoKQ2FuJ3QgdGhlIEdQVXMgY2FuY2VsIHdvcmsgdGhhdCBpcyB3YWl0aW5nIG9uIGEgRE1BIGZl
bmNlPyBJZSBpZgpEcml2ZXIgQSBkZXRlY3RzIHRoYXQgd29yayBjb21wbGV0ZWQgYW5kIHdhbnRz
IHRvIHRyaWdnZXIgYSBETUEgZmVuY2UsCmJ1dCBpdCBub3cga25vd3MgdGhlIGJ1ZmZlciBpcyBp
bnZhbGlkYXRlZCwgY2FuJ3QgaXQgdGVsbCBkcml2ZXIgQiB0bwpnaXZlIHVwPwoKPiBUaGUgcHJv
YmxlbSBpcyB0aGF0IHRoZXJlJ3MgcGlsZXMgb2Ygb3RoZXIgZGVwZW5kZW5jaWVzIGZvciBhIGRt
YSBqb2IuCj4gR1BVIGRvZXNuJ3QganVzdCBjb25zdW1lIGEgc2luZ2xlIGJ1ZmZlciBlYWNoIHRp
bWUsIGl0IGNvbnN1bWVzIGVudGlyZQo+IGxpc3RzIG9mIGJ1ZmZlcnMgYW5kIG1peGVzIHRoZW0g
YWxsIHVwIGluIGZ1bm55IHdheXMuIFNvbWUgb2YgdGhlc2UKPiBidWZmZXJzIGFyZSB1c2VycHRy
LCBlbnRpcmVseSBsb2NhbCB0byB0aGUgZGV2aWNlLiBPdGhlciBidWZmZXJzIGFyZQo+IGp1c3Qg
bm9ybWFsIGRldmljZSBkcml2ZXIgYWxsb2NhdGlvbnMgKGFuZCBtYW5hZ2VkIHdpdGggc29tZSBz
aHJpbmtlcgo+IHRvIGtlZXAgdGhlbSBpbiBjaGVjaykuIEFuZCB0aGVuIHRoZXJlJ3MgdGhlIGFj
dHVhbGx5IHNoYXJlZCBkbWEtYnVmCj4gd2l0aCBvdGhlciBkZXZpY2VzLiBUaGUgdHJvdWJsZSBp
cyB0aGF0IHRoZXkncmUgYWxsIGJ1bmRsZWQgdXAKPiB0b2dldGhlci4KCkJ1dCB3aHkgZG9lcyB0
aGlzIG1hdHRlcj8gRG9lcyB0aGUgR1BVIGl0c2VsZiBjb25zdW1lIHNvbWUgd29yayBhbmQKdGhl
biBzdGFsbCBpbnRlcm5hbGx5IHdhaXRpbmcgZm9yIGFuIGV4dGVybmFsIERNQSBmZW5jZT8KCk90
aGVyd2lzZSBJIHdvdWxkIGV4cGVjdCB0aGlzIGRlcGVuZGVuY3kgY2hhaW4gc2hvdWxkIGJlIGJy
ZWFrYWJsZSBieQphYm9ydGluZyB3b3JrIHdhaXRpbmcgb24gZmVuY2VzIHVwb24gaW52YWxpZGF0
aW9uICh3aXRob3V0IHN0YWxsaW5nKQoKPiA+IERvIG5vdCBuZWVkIHRvIHdhaXQgb24gZG1hX2Zl
bmNlIGluIG5vdGlmaWVycy4KPiAKPiBNYXliZSA6LSkgVGhlIGdvYWwgb2YgdGhpcyBzZXJpZXMg
aXMgbW9yZSB0byBkb2N1bWVudCBjdXJyZW50IHJ1bGVzCj4gYW5kIG1ha2UgdGhlbSBtb3JlIGNv
bnNpc3RlbnQuIEZpeGluZyB0aGVtIGlmIHdlIGRvbid0IGxpa2UgdGhlbSBtaWdodAo+IGJlIGEg
Zm9sbG93LXVwIHRhc2ssIGJ1dCB0aGF0IHdvdWxkIGxpa2VseSBiZSBhIHBpbGUgbW9yZSB3b3Jr
LiBGaXJzdAo+IHdlIG5lZWQgdG8ga25vdyB3aGF0IHRoZSBleGFjdCBzaGFwZSBvZiB0aGUgcHJv
YmxlbSBldmVuIGlzLgoKRmFpciBlbm91Z2gKCkphc29uCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
