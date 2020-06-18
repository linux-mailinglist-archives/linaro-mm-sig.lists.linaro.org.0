Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E54219F65
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:56:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35D6E66538
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:56:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2840C6657B; Thu,  9 Jul 2020 11:56:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2160E666DF;
	Thu,  9 Jul 2020 11:34:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4397866576
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 17:23:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 29AA46658C; Thu, 18 Jun 2020 17:23:42 +0000 (UTC)
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by lists.linaro.org (Postfix) with ESMTPS id 0C3AF66576
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 17:23:41 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id cv17so3111270qvb.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 10:23:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=C9fZMsXo2SZ80We4hmJmwmW4hWECtoNb2OioHXlz4pQ=;
 b=GcaGck3SZ6MgHrbI+4STh6TfR0pH2KXDyuwWYR6H0wMa0AJf89ji3Kz1qscyPkjdA9
 0hE061QzuYEpmniYHbHc+7CoJqECJGA6RtabFX6zlSMusoWQcaU2XEsRRwaOLMu2nG++
 zEfPxss2P7MhqboawxpLrPwCjo1nB/3GJT+DtsK17kzYzooxncdADOGn7Qyl+A2Y3V8k
 d8MW8ZTfbW5v1twdzUPqMUuSdprvUaZumEmtdV8cZRoxxeFZKggd4eyURAplShgD8FAY
 21MKshistb2czvNDfAppjlRbRKcq3e6ICT4bSR6G86w7vMhhrrbllRuNJg6+QXH8ZzDu
 xGNQ==
X-Gm-Message-State: AOAM531UFieRjfCrelWV+Bj0Zw/wNtbirERWhFXOLjbGd/6OZGU9xzDF
 MomsOSqKkUp21EvS/ko3Kst1sQ==
X-Google-Smtp-Source: ABdhPJwk2YUvEzLHMclGfpDEafJPYyQ0A/CvUD7gNhvGjyNa2/WErZ+AilnbN9Hdt0RsaqZHbhBdmA==
X-Received: by 2002:a05:6214:1705:: with SMTP id
 db5mr4740498qvb.14.1592501020440; 
 Thu, 18 Jun 2020 10:23:40 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id r7sm2644175qtm.66.2020.06.18.10.23.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 10:23:39 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jlyGI-00AEEp-Qj; Thu, 18 Jun 2020 14:23:38 -0300
Date: Thu, 18 Jun 2020 14:23:38 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Thomas =?utf-8?B?SGVsbHN0csO2bSAoSW50ZWwp?= <thomas_os@shipmail.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Message-ID: <20200618172338.GM6578@ziepe.ca>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
 <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca>
 <20200618150051.GS20149@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618150051.GS20149@phenom.ffwll.local>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
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

T24gVGh1LCBKdW4gMTgsIDIwMjAgYXQgMDU6MDA6NTFQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBXZWQsIEp1biAxNywgMjAyMCBhdCAxMjoyODozNVBNIC0wMzAwLCBKYXNvbiBH
dW50aG9ycGUgd3JvdGU6Cj4gPiBPbiBXZWQsIEp1biAxNywgMjAyMCBhdCAwODo0ODo1MEFNICsw
MjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gCj4gPiA+IE5vdyBteSB1bmRlcnN0YW5kaW5n
IGZvciByZG1hIGlzIHRoYXQgaWYgeW91IGRvbid0IGhhdmUgaHcgcGFnZSBmYXVsdAo+ID4gPiBz
dXBwb3J0LAo+ID4gCj4gPiBUaGUgUkRNQSBPRFAgZmVhdHVyZSBpcyByZXN0YXJ0YWJsZSBIVyBw
YWdlIGZhdWx0aW5nIGp1c3QgbGlrZSBub3V2ZWF1Cj4gPiBoYXMuIFRoZSBjbGFzc2ljYWwgTVIg
ZmVhdHVyZSBkb2Vzbid0IGhhdmUgdGhpcy4gT25seSBtbHg1IEhXIHN1cHBvcnRzCj4gPiBPRFAg
dG9kYXkuCj4gPiAKPiA+ID4gSXQncyBvbmx5IGdwdXMgKEkgdGhpbmspIHdoaWNoIGFyZSBpbiB0
aGlzIGF3a3dhcmQgaW4tYmV0d2VlbiBzcG90Cj4gPiA+IHdoZXJlIGR5bmFtaWMgbWVtb3J5IG1h
bmFnZW1lbnQgcmVhbGx5IGlzIG11Y2ggd2FudGVkLCBidXQgdGhlIGh3Cj4gPiA+IGtpbmRhIHN1
Y2tzLiBBc2lkZSwgYWJvdXQgMTArIHllYXJzIGFnbyB3ZSBoYWQgYSBzaW1pbGFyIHByb2JsZW0g
d2l0aAo+ID4gPiBncHUgaHcsIGJ1dCBmb3Igc2VjdXJpdHk6IE1hbnkgZ3B1IGRpZG4ndCBoYXZl
IGFueSBraW5kcyBvZiBwYWdlCj4gPiA+IHRhYmxlcyB0byBpc29sYXRlIGRpZmZlcmVudCBjbGll
bnRzIGZyb20gZWFjaCBhbm90aGVyLiBkcml2ZXJzL2dwdQo+ID4gPiBmaXhlZCB0aGlzIGJ5IHBh
cnNpbmcmdmFsaWRhdGluZyB3aGF0IHVzZXJzcGFjZSBzdWJtaXR0ZWQgdG8gbWFrZSBzdXJlCj4g
PiA+IGl0J3Mgb25seSBldmVyeSBhY2Nlc3NpbmcgaXRzIG93biBidWZmZXJzLiBNb3N0IGdwdXMg
aGF2ZSBiZWNvbWUKPiA+ID4gcmVhc29uYWJsZSBub3dhZGF5cyBhbmQgZG8gaGF2ZSBwcm9wZXIg
cGVyLXByb2Nlc3MgcGFnZXRhYmxlcyAoZ3B1Cj4gPiA+IHByb2Nlc3MsIG5vdCB0aGUgcGFzaWQg
c3R1ZmYpLCBidXQgZXZlbiB0b2RheSB0aGVyZSdzIHN0aWxsIHNvbWUgb2YKPiA+ID4gdGhlIG9s
ZCBtb2RlbCBsZWZ0IGluIHNvbWUgb2YgdGhlIHNtYWxsZXN0IFNvQy4KPiA+IAo+ID4gQnV0IEkg
c3RpbGwgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgYSBkbWEgZmVuY2UgaXMgbmVlZGVkIGluc2lkZSB0
aGUgR1BVCj4gPiBkcml2ZXIgaXRzZWxmIGluIHRoZSBub3RpZmllci4KPiA+IAo+ID4gU3VyZWx5
IHRoZSBHUFUgZHJpdmVyIGNhbiBibG9jayBhbmQgcmVsZWFzZSB0aGUgbm90aWZpZXIgZGlyZWN0
bHkgZnJvbQo+ID4gaXRzIG93biBjb21tYW5kIHByb2Nlc3NpbmcgY2hhbm5lbD8KPiA+IAo+ID4g
V2h5IGRvZXMgdGhpcyBmZW5jZSBhbmQgYWxsIGl0IGVudGFpbHMgbmVlZCB0byBsZWFrIG91dCBh
Y3Jvc3MKPiA+IGRyaXZlcnM/Cj4gCj4gU28gMTAgeWVhcnMgYWdvIHdlIGhhZCB0aGlzIHdvcmxk
IG9mIGV2ZXJ5IGdwdSBkcml2ZXIgaXMgaXRzIG93biBidWNrZXQsCj4gbm90aGluZyBsZWFrcyBv
dXQgdG8gdGhlIHdvcmxkLiBCdXQgdGhlIHdvcmxkIGhhZCBhIGRpZmZlcmVudCBpZGVhIGhvdwo+
IGdwdXMgd2hlcmUgc3VwcG9zZWQgdG8gd29yaywgd2l0aCBzdHVmZiBsaWtlOgoKU3VyZSwgSSB1
bmRlcnN0YW5kIERNQSBmZW5jZSwgYnV0IHdoeSBkb2VzIGEgKm5vdGlmaWVyKiBuZWVkIGl0PwoK
VGhlIGpvYiBvZiB0aGUgbm90aWZpZXIgaXMgdG8gZ3VhcmVudGVlIHRoYXQgdGhlIGRldmljZSBp
dCBpcwpjb25uZWN0ZWQgdG8gaXMgbm90IGRvaW5nIERNQSBiZWZvcmUgaXQgcmV0dXJucy4KClRo
YXQganVzdCBtZWFucyB5b3UgbmVlZCB0byBwcm92ZSB0aGF0IGRldmljZSBpcyBkb25lIHdpdGgg
dGhlIGJ1ZmZlci4KCkFzIEkndmUgdW5kZXJzdG9vZCBHUFUgdGhhdCBtZWFucyB5b3UgbmVlZCB0
byBzaG93IHRoYXQgdGhlIGNvbW1hbmRzCmFzc29jaWF0ZWQgd2l0aCB0aGUgYnVmZmVyIGhhdmUg
Y29tcGxldGVkLiBUaGlzIGlzIGFsbCBsb2NhbCBzdHVmZgp3aXRoaW4gdGhlIGRyaXZlciwgcmln
aHQ/IFdoeSB1c2UgZmVuY2UgKG90aGVyIHRoYW4gaXQgYWxyZWFkeSBleGlzdHMpCgpKYXNvbgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
