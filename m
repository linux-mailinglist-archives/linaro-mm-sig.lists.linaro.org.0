Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EED862002AB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 09:23:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B85AC61750
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 07:23:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ABB0461932; Fri, 19 Jun 2020 07:23:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AE12617CF;
	Fri, 19 Jun 2020 07:22:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4875E6087B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 07:22:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2B4C5617CF; Fri, 19 Jun 2020 07:22:23 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id AFA3C6087B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 07:22:21 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id x202so7635209oix.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 00:22:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DqEsfHHZMDjVjBSRzofGz02dqQOVqzrxROmLfkgGgfU=;
 b=gadFy6fPmsDYXMixCLmXVl6+Cgu78GDFon5zqav0/apbZJ2d5DJIl3gsB6T0GUoPzG
 DTjnjTfQwpklbOjO3B1BMOlOMvJlXbmhGH3tgt+KZtzPU4C2eT/LKtkwYrtmCg/OV1xU
 rALBJ+oY7Ced+epXJ/K1a+4xGPDQZWaSWxRtH1CifQc4SXpBX+Dwm3n24Eep8vlZ+3MY
 GnvB+Khj5XbPgAi7wB6UCCNy/8P2c3iHYk2960e3qMa1yRCIrb4XXbBHA/kXyGnVZVOm
 1T1b17SBRsrhDHt13/mqVPuwK91jauNNDwQxiUZBIb0B3PwD/yO8VxDT1bnZiQ4krDOf
 MCSw==
X-Gm-Message-State: AOAM532qi4kGcVZc1R0UfDdm9KjDquOYUbz6nWsjhLm8uZgRVr17Gsyl
 TApPmUA1gIX6bBkNoj7ASBXCdNdlgxnJ0QgLGVGKNw==
X-Google-Smtp-Source: ABdhPJzUUv7A3YRtNgpCeUlEiMcyk3Jq4GEcOu2c5HObmsMsz8k+i9bAqj56TkqNTZ0MhscUp+R1cXMiit1pfYTZUok=
X-Received: by 2002:aca:ad97:: with SMTP id w145mr2091861oie.128.1592551341034; 
 Fri, 19 Jun 2020 00:22:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local> <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
 <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca> <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
In-Reply-To: <20200618172338.GM6578@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 19 Jun 2020 09:22:09 +0200
Message-ID: <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgODo1OCBBTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVw
ZS5jYT4gd3JvdGU6Cj4KPiBPbiBUaHUsIEp1biAxOCwgMjAyMCBhdCAwNTowMDo1MVBNICswMjAw
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMTI6Mjg6
MzVQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+ID4gPiBPbiBXZWQsIEp1biAxNywg
MjAyMCBhdCAwODo0ODo1MEFNICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPgo+ID4g
PiA+IE5vdyBteSB1bmRlcnN0YW5kaW5nIGZvciByZG1hIGlzIHRoYXQgaWYgeW91IGRvbid0IGhh
dmUgaHcgcGFnZSBmYXVsdAo+ID4gPiA+IHN1cHBvcnQsCj4gPiA+Cj4gPiA+IFRoZSBSRE1BIE9E
UCBmZWF0dXJlIGlzIHJlc3RhcnRhYmxlIEhXIHBhZ2UgZmF1bHRpbmcganVzdCBsaWtlIG5vdXZl
YXUKPiA+ID4gaGFzLiBUaGUgY2xhc3NpY2FsIE1SIGZlYXR1cmUgZG9lc24ndCBoYXZlIHRoaXMu
IE9ubHkgbWx4NSBIVyBzdXBwb3J0cwo+ID4gPiBPRFAgdG9kYXkuCj4gPiA+Cj4gPiA+ID4gSXQn
cyBvbmx5IGdwdXMgKEkgdGhpbmspIHdoaWNoIGFyZSBpbiB0aGlzIGF3a3dhcmQgaW4tYmV0d2Vl
biBzcG90Cj4gPiA+ID4gd2hlcmUgZHluYW1pYyBtZW1vcnkgbWFuYWdlbWVudCByZWFsbHkgaXMg
bXVjaCB3YW50ZWQsIGJ1dCB0aGUgaHcKPiA+ID4gPiBraW5kYSBzdWNrcy4gQXNpZGUsIGFib3V0
IDEwKyB5ZWFycyBhZ28gd2UgaGFkIGEgc2ltaWxhciBwcm9ibGVtIHdpdGgKPiA+ID4gPiBncHUg
aHcsIGJ1dCBmb3Igc2VjdXJpdHk6IE1hbnkgZ3B1IGRpZG4ndCBoYXZlIGFueSBraW5kcyBvZiBw
YWdlCj4gPiA+ID4gdGFibGVzIHRvIGlzb2xhdGUgZGlmZmVyZW50IGNsaWVudHMgZnJvbSBlYWNo
IGFub3RoZXIuIGRyaXZlcnMvZ3B1Cj4gPiA+ID4gZml4ZWQgdGhpcyBieSBwYXJzaW5nJnZhbGlk
YXRpbmcgd2hhdCB1c2Vyc3BhY2Ugc3VibWl0dGVkIHRvIG1ha2Ugc3VyZQo+ID4gPiA+IGl0J3Mg
b25seSBldmVyeSBhY2Nlc3NpbmcgaXRzIG93biBidWZmZXJzLiBNb3N0IGdwdXMgaGF2ZSBiZWNv
bWUKPiA+ID4gPiByZWFzb25hYmxlIG5vd2FkYXlzIGFuZCBkbyBoYXZlIHByb3BlciBwZXItcHJv
Y2VzcyBwYWdldGFibGVzIChncHUKPiA+ID4gPiBwcm9jZXNzLCBub3QgdGhlIHBhc2lkIHN0dWZm
KSwgYnV0IGV2ZW4gdG9kYXkgdGhlcmUncyBzdGlsbCBzb21lIG9mCj4gPiA+ID4gdGhlIG9sZCBt
b2RlbCBsZWZ0IGluIHNvbWUgb2YgdGhlIHNtYWxsZXN0IFNvQy4KPiA+ID4KPiA+ID4gQnV0IEkg
c3RpbGwgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgYSBkbWEgZmVuY2UgaXMgbmVlZGVkIGluc2lkZSB0
aGUgR1BVCj4gPiA+IGRyaXZlciBpdHNlbGYgaW4gdGhlIG5vdGlmaWVyLgo+ID4gPgo+ID4gPiBT
dXJlbHkgdGhlIEdQVSBkcml2ZXIgY2FuIGJsb2NrIGFuZCByZWxlYXNlIHRoZSBub3RpZmllciBk
aXJlY3RseSBmcm9tCj4gPiA+IGl0cyBvd24gY29tbWFuZCBwcm9jZXNzaW5nIGNoYW5uZWw/Cj4g
PiA+Cj4gPiA+IFdoeSBkb2VzIHRoaXMgZmVuY2UgYW5kIGFsbCBpdCBlbnRhaWxzIG5lZWQgdG8g
bGVhayBvdXQgYWNyb3NzCj4gPiA+IGRyaXZlcnM/Cj4gPgo+ID4gU28gMTAgeWVhcnMgYWdvIHdl
IGhhZCB0aGlzIHdvcmxkIG9mIGV2ZXJ5IGdwdSBkcml2ZXIgaXMgaXRzIG93biBidWNrZXQsCj4g
PiBub3RoaW5nIGxlYWtzIG91dCB0byB0aGUgd29ybGQuIEJ1dCB0aGUgd29ybGQgaGFkIGEgZGlm
ZmVyZW50IGlkZWEgaG93Cj4gPiBncHVzIHdoZXJlIHN1cHBvc2VkIHRvIHdvcmssIHdpdGggc3R1
ZmYgbGlrZToKPgo+IFN1cmUsIEkgdW5kZXJzdGFuZCBETUEgZmVuY2UsIGJ1dCB3aHkgZG9lcyBh
ICpub3RpZmllciogbmVlZCBpdD8KPgo+IFRoZSBqb2Igb2YgdGhlIG5vdGlmaWVyIGlzIHRvIGd1
YXJlbnRlZSB0aGF0IHRoZSBkZXZpY2UgaXQgaXMKPiBjb25uZWN0ZWQgdG8gaXMgbm90IGRvaW5n
IERNQSBiZWZvcmUgaXQgcmV0dXJucy4KPgo+IFRoYXQganVzdCBtZWFucyB5b3UgbmVlZCB0byBw
cm92ZSB0aGF0IGRldmljZSBpcyBkb25lIHdpdGggdGhlIGJ1ZmZlci4KPgo+IEFzIEkndmUgdW5k
ZXJzdG9vZCBHUFUgdGhhdCBtZWFucyB5b3UgbmVlZCB0byBzaG93IHRoYXQgdGhlIGNvbW1hbmRz
Cj4gYXNzb2NpYXRlZCB3aXRoIHRoZSBidWZmZXIgaGF2ZSBjb21wbGV0ZWQuIFRoaXMgaXMgYWxs
IGxvY2FsIHN0dWZmCj4gd2l0aGluIHRoZSBkcml2ZXIsIHJpZ2h0PyBXaHkgdXNlIGZlbmNlIChv
dGhlciB0aGFuIGl0IGFscmVhZHkgZXhpc3RzKQoKQmVjYXVzZSB0aGF0J3MgdGhlIGVuZC1vZi1k
bWEgdGhpbmcuIEFuZCBpdCdzIGNyb3NzLWRyaXZlciBmb3IgdGhlCmFib3ZlIHJlYXNvbnMsIGUu
Zy4KLSBkZXZpY2UgQSByZW5kZXJzIHNvbWUgc3R1ZmYuIFVzZXJzcGFjZSBnZXRzIGRtYV9mZW5j
ZSBBIG91dCBvZiB0aGF0Cih3ZWxsIHN5bmNfZmlsZSBvciBvbmUgb2YgdGhlIG90aGVyIHVhcGkg
aW50ZXJmYWNlcywgYnV0IHlvdSBnZXQgdGhlCmlkZWEpCi0gdXNlcnNwYWNlIChhY3Jvc3MgcHJv
Y2VzcyBvciBqdXN0IGRpZmZlcmVudCBkcml2ZXIpIGlzc3VlcyBtb3JlCnJlbmRlcmluZyBmb3Ig
ZGV2aWNlIEIsIHdoaWNoIGRlcGVuZHMgdXBvbiB0aGUgcmVuZGVyaW5nIGRvbmUgb24KZGV2aWNl
IEEuIFNvIGRtYV9mZW5jZSBBIGlzIGFuIGRlcGVuZGVuY3kgYW5kIHdpbGwgYmxvY2sgdGhpcyBk
bWEKb3BlcmF0aW9uLiBVc2Vyc3BhY2UgKGFuZCB0aGUga2VybmVsKSBnZXRzIGRtYV9mZW5jZSBC
IG91dCBvZiB0aGlzCi0gYmVjYXVzZSB1bmZvcnR1bmF0ZSByZWFzb25zLCB0aGUgc2FtZSByZW5k
ZXJpbmcgb24gZGV2aWNlIEIgYWxzbwpuZWVkcyBhIHVzZXJwdHIgYnVmZmVyLCB3aGljaCBtZWFu
cyB0aGF0IGRtYV9mZW5jZSBCIGlzIGFsc28gdGhlIG9uZQp0aGF0IHRoZSBtbXVfcmFuZ2Vfbm90
aWZpZXIgbmVlZHMgdG8gd2FpdCBvbiBiZWZvcmUgaXQgY2FuIHRlbGwgY29yZQptbSB0aGF0IGl0
IGNhbiBnbyBhaGVhZCBhbmQgcmVsZWFzZSB0aG9zZSBwYWdlcwotIHVuaGFwcGluZXNzIGVuc3Vl
cywgYmVjYXVzZSBub3cgdGhlIG1tdSBub3RpZmllciBmcm9tIGRldmljZSBCIGNhbgpnZXQgaHVu
ZyB1cCBvbiB0aGUgZG1hIG9wZXJhdGlvbiBkZXZpY2UgQSBpcyBkb2luZwoKSWYgeW91IHdhbnQg
dG8gYXZvaWQgdGhpcyBlaXRoZXIgYSkgaGF2ZSBsZXNzIHNoaXR0eSBodyAobm90IGFuCm9wdGlv
biwgZ3B1cyBhcmUgZ3B1cywgaXQgaXMgc2xvd2x5IGdldHRpbmcgYmV0dGVyIHRob3VnaCkgb3Ig
YikgZm9yY2UKdXNlcnNwYWNlIHRvIHN0YWxsIGJlZm9yZSBoYW5kaW5nIG92ZXIgdG8gbmV4dCBk
ZXZpY2UgKGFib3V0IGFzCnVuY29vbCkgb3IgYykganVzdCBwaW4gYWxsIHRoZSBtZW1vcnkgYWx3
YXlzLCB3aG8gY2FyZXMgKGFsc28gcmF0aGVyCnVucG9wdWxhciwgZ3B1cyB0ZW5kIHRvIHVzZSBh
bGwgdGhlIG1lbW9yeSB0aGV5IGNhbiBnZXQpLgoKSSBndWVzcyB0aGUgdGhpbmcgd2l0aCBncHVz
IGlzIHRoYXQgZG1hIG9wZXJhdGlvbnMgYXJlbid0IGxpa2UKcmVhZC93cml0ZXMgZm9yIHByZXR0
eSBtdWNoIGV2ZXJ5dGhpbmcgZWxzZSwgYnV0IGVzc2VudGlhbGx5IGNvbXB1dGUKY29udGV4dHMg
KHVzdWFsbHkgaW1wbGVtZW50ZWQgYXMgcmluZ2J1ZmZlcnMgd2hlcmUgeW91IHN0cmVhbSBzdHVm
ZgppbnRvKSB3aXRoIGNyb3NzIGV2ZXJ5dGhpbmcgZGVwZW5kZW5jaWVzLiBUaGlzIGV2ZW4gaG9s
ZHMgd2l0aGluIGEKc2luZ2xlIGdwdSwgc2luY2UgcHJldHR5IG11Y2ggYWxsIG1vZGVybiBncHVz
IGhhdmUgbXVsdGlwbGUgZGlmZmVyZW50CmVuZ2luZXMgc3BlY2lhbCBvbiBkaWZmZXJlbnQgdGhp
bmdzLiBBbmQgeXVwIHRoYXQncyBkaXJlY3RseSBleHBvc2VkCnRvIHVzZXJzcGFjZSwgZm9yIHZ1
bGthbiBhbmQgb3RoZXIgbG93LWxldmVsIGdwdSBhcGlzIGV2ZW4gZGlyZWN0bHkgdG8KYXBwbGlj
YXRpb25zLiBTbyBkbWEgb3BlcmF0aW9uIGZvciBncHUgaXNuJ3QganVzdCAiZG9uZSB3aGVuIHRo
ZQpyZWFkL3dyaXRlIGZpbmlzaGVzIiwgYnV0IHB1bGxzIGluIGFuIGVudGlyZSBjaGFpbiBvZiBk
ZXBlbmRlbmNpZXMgYW5kCm9yZGVyaW5nIHRoYXQgbmVlZHMgdG8gaGFwcGVuIGJlZm9yZSBpdCBj
YW4gZXZlbiBzdGFydC4KCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5l
ZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
