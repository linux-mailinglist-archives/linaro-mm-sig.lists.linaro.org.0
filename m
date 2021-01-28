Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEB3307DB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:19:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DB9B6171B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 18:19:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 80DE46674C; Thu, 28 Jan 2021 18:19:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB48B6675F;
	Thu, 28 Jan 2021 18:19:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 98DF261816
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:19:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8B90A6675F; Thu, 28 Jan 2021 18:19:11 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by lists.linaro.org (Postfix) with ESMTPS id 2ED1D61816
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:19:10 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id e19so4528081pfh.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 10:19:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=96bIRJoBt4Fg0MIsvCdpoDvBroS32Sj8ac+QlGQ3Ctc=;
 b=oKXJQ/lRgZkd0sXCemm/OM38R86+LTNuyDfjgZ3qyU0SbAiq+P962D6cenoGeDRJzu
 ly308kVtEPzh5+r9IFLPPElwKPE2LogKHxMmoOqNCzUAcE+VD8dJFrKRGflX78slMIVJ
 QVGXafdeZA7Fwt0IQFFpJt5FK15t95w5gOm/Zz2NHveccRvPzHkvudtdpdEh4apFZ9VG
 x5k2sl6md40LFL8ENCs0l13J2LoEIjn59UarsvVcUaYpqh6xhwOpznmTal2pk2XeoGH6
 m1QIT2lEPSSbxtTDFLdsn7sdilml+URp6wG97RsQf8zVVnh58RIHUEqSK42JlZcs3jxo
 hwBw==
X-Gm-Message-State: AOAM530RDHVCnbfemSHdczN9pivSbLihtbz508C0ApKIx+LESh+H2AZ0
 zjgIvJCGuv/wImJzpn5n8yA=
X-Google-Smtp-Source: ABdhPJykKM4AHlWVLXCO9yclwmwZpMr1Tz8dxr0rJ04tpfl04eKInSCoyO0EXkxZnN2DfKwy0fi37w==
X-Received: by 2002:a63:fc48:: with SMTP id r8mr701708pgk.300.1611857949397;
 Thu, 28 Jan 2021 10:19:09 -0800 (PST)
Received: from google.com ([2620:15c:211:201:885b:c20e:b832:f82])
 by smtp.gmail.com with ESMTPSA id w11sm6436748pge.28.2021.01.28.10.19.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 10:19:08 -0800 (PST)
Date: Thu, 28 Jan 2021 10:19:05 -0800
From: Minchan Kim <minchan@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <YBMAGRIwcbPF17cU@google.com>
References: <20210128083817.314315-1-surenb@google.com>
 <20210128091348.GA1962975@infradead.org>
 <CAJuCfpFUhJozS98WJpH0KQKBzyGXvqS1fitu-mgSyhaJ1xL8SQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJuCfpFUhJozS98WJpH0KQKBzyGXvqS1fitu-mgSyhaJ1xL8SQ@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>, christian.koenig@amd.com,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>, Christoph Hellwig <hch@infradead.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 benjamin.gaignard@linaro.org, Hridya Valsaraju <hridya@google.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/1] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMDk6NTI6NTlBTSAtMDgwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IE9uIFRodSwgSmFuIDI4LCAyMDIxIGF0IDE6MTMgQU0gQ2hyaXN0b3BoIEhl
bGx3aWcgPGhjaEBpbmZyYWRlYWQub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUaHUsIEphbiAyOCwg
MjAyMSBhdCAxMjozODoxN0FNIC0wODAwLCBTdXJlbiBCYWdoZGFzYXJ5YW4gd3JvdGU6Cj4gPiA+
IEN1cnJlbnRseSBzeXN0ZW0gaGVhcCBtYXBzIGl0cyBidWZmZXJzIHdpdGggVk1fUEZOTUFQIGZs
YWcgdXNpbmcKPiA+ID4gcmVtYXBfcGZuX3JhbmdlLiBUaGlzIHJlc3VsdHMgaW4gc3VjaCBidWZm
ZXJzIG5vdCBiZWluZyBhY2NvdW50ZWQKPiA+ID4gZm9yIGluIFBTUyBjYWxjdWxhdGlvbnMgYmVj
YXVzZSB2bSB0cmVhdHMgdGhpcyBtZW1vcnkgYXMgaGF2aW5nIG5vCj4gPiA+IHBhZ2Ugc3RydWN0
cy4gV2l0aG91dCBwYWdlIHN0cnVjdHMgdGhlcmUgYXJlIG5vIGNvdW50ZXJzIHJlcHJlc2VudGlu
Zwo+ID4gPiBob3cgbWFueSBwcm9jZXNzZXMgYXJlIG1hcHBpbmcgYSBwYWdlIGFuZCB0aGVyZWZv
cmUgUFNTIGNhbGN1bGF0aW9uCj4gPiA+IGlzIGltcG9zc2libGUuCj4gPiA+IEhpc3RvcmljYWxs
eSwgSU9OIGRyaXZlciB1c2VkIHRvIG1hcCBpdHMgYnVmZmVycyBhcyBWTV9QRk5NQVAgYXJlYXMK
PiA+ID4gZHVlIHRvIG1lbW9yeSBjYXJ2ZW91dHMgdGhhdCBkaWQgbm90IGhhdmUgcGFnZSBzdHJ1
Y3RzIFsxXS4gVGhhdAo+ID4gPiBpcyBub3QgdGhlIGNhc2UgYW55bW9yZSBhbmQgaXQgc2VlbXMg
dGhlcmUgd2FzIGRlc2lyZSB0byBtb3ZlIGF3YXkKPiA+ID4gZnJvbSByZW1hcF9wZm5fcmFuZ2Ug
WzJdLgo+ID4gPiBEbWFidWYgc3lzdGVtIGhlYXAgZGVzaWduIGluaGVyaXRzIHRoaXMgSU9OIGJl
aGF2aW9yIGFuZCBtYXBzIGl0cwo+ID4gPiBwYWdlcyB1c2luZyByZW1hcF9wZm5fcmFuZ2UgZXZl
biB0aG91Z2ggYWxsb2NhdGVkIHBhZ2VzIGFyZSBiYWNrZWQKPiA+ID4gYnkgcGFnZSBzdHJ1Y3Rz
Lgo+ID4gPiBDbGVhciBWTV9JTyBhbmQgVk1fUEZOTUFQIGZsYWdzIHdoZW4gbWFwcGluZyBtZW1v
cnkgYWxsb2NhdGVkIGJ5IHRoZQo+ID4gPiBzeXN0ZW0gaGVhcCBhbmQgcmVwbGFjZSByZW1hcF9w
Zm5fcmFuZ2Ugd2l0aCB2bV9pbnNlcnRfcGFnZSwgZm9sbG93aW5nCj4gPiA+IExhdXJhJ3Mgc3Vn
Z2VzdGlvbiBpbiBbMV0uIFRoaXMgd291bGQgYWxsb3cgY29ycmVjdCBQU1MgY2FsY3VsYXRpb24K
PiA+ID4gZm9yIGRtYWJ1ZnMuCj4gPiA+Cj4gPiA+IFsxXSBodHRwczovL2RyaXZlcmRldi1kZXZl
bC5saW51eGRyaXZlcnByb2plY3QubmFya2l2ZS5jb20vdjBmSkdwYUQvdXNpbmctaW9uLW1lbW9y
eS1mb3ItZGlyZWN0LWlvCj4gPiA+IFsyXSBodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvcGlwZXJtYWlsL2RyaXZlcmRldi1kZXZlbC8yMDE4LU9jdG9iZXIvMTI3NTE5Lmh0
bWwKPiA+ID4gKHNvcnJ5LCBjb3VsZCBub3QgZmluZCBsb3JlIGxpbmtzIGZvciB0aGVzZSBkaXNj
dXNzaW9ucykKPiA+ID4KPiA+ID4gU3VnZ2VzdGVkLWJ5OiBMYXVyYSBBYmJvdHQgPGxhYmJvdHRA
a2VybmVsLm9yZz4KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJl
bmJAZ29vZ2xlLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lz
dGVtX2hlYXAuYyB8IDYgKysrKy0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hl
YXAuYwo+ID4gPiBpbmRleCAxN2UwZTlhNjhiYWYuLjBlOTJlNDJiMjI1MSAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMKPiA+ID4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMKPiA+ID4gQEAgLTIwMCwxMSArMjAwLDEz
IEBAIHN0YXRpYyBpbnQgc3lzdGVtX2hlYXBfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiA+ID4gICAgICAgc3RydWN0IHNnX3BhZ2VfaXRl
ciBwaXRlcjsKPiA+ID4gICAgICAgaW50IHJldDsKPiA+ID4KPiA+ID4gKyAgICAgLyogQWxsIHBh
Z2VzIGFyZSBiYWNrZWQgYnkgYSAic3RydWN0IHBhZ2UiICovCj4gPiA+ICsgICAgIHZtYS0+dm1f
ZmxhZ3MgJj0gflZNX1BGTk1BUDsKPiA+Cj4gPiBXaHkgZG8gd2UgY2xlYXIgdGhpcyBmbGFnPyAg
SXQgc2hvdWxkbid0IGV2ZW4gYmUgc2V0IGhlcmUgYXMgZmFyIGFzIEkKPiA+IGNhbiB0ZWxsLgo+
IAo+IFRoYW5rcyBmb3IgdGhlIHF1ZXN0aW9uLCBDaHJpc3RvcGguCj4gSSB0cmFja2VkIGRvd24g
dGhhdCBmbGFnIGJlaW5nIHNldCBieSBkcm1fZ2VtX21tYXBfb2JqKCkgd2hpY2ggRFJNCj4gZHJp
dmVycyB1c2UgdG8gIlNldCB1cCB0aGUgVk1BIHRvIHByZXBhcmUgbWFwcGluZyBvZiB0aGUgR0VN
IG9iamVjdCIKPiAoYWNjb3JkaW5nIHRvIGRybV9nZW1fbW1hcF9vYmogY29tbWVudHMpLiBJIGFs
c28gc2VlIGEgcGF0dGVybiBpbgo+IHNldmVyYWwgRE1SIGRyaXZlcnMgdG8gY2FsbCBkcm1fZ2Vt
X21tYXBfb2JqKCkvZHJtX2dlbV9tbWFwKCksIHRoZW4KPiBjbGVhciBWTV9QRk5NQVAgYW5kIHRo
ZW4gbWFwIHRoZSBWTUEgKGZvciBleGFtcGxlIGhlcmU6Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxp
bi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX2dlbS5jI0wyNDYpLgo+IEkgdGhvdWdodCB0aGF0IGRtYWJ1ZiBhbGxvY2F0b3IgKGlu
IHRoaXMgY2FzZSB0aGUgc3lzdGVtIGhlYXApIHdvdWxkCj4gYmUgdGhlIHJpZ2h0IHBsYWNlIHRv
IHNldCB0aGVzZSBmbGFncyBiZWNhdXNlIGl0IGNvbnRyb2xzIGhvdyBtZW1vcnkKPiBpcyBhbGxv
Y2F0ZWQgYmVmb3JlIG1hcHBpbmcuIEhvd2V2ZXIgaXQncyBxdWl0ZSBwb3NzaWJsZSB0aGF0IEkn
bQoKSG93ZXZlciwgeW91J3JlIG5vdCBzZXR0aW5nIGJ1dCByZW1vdmluZyBhIGZsYWcgdW5kZXIg
dGhlIGNhbGxlci4KSXQncyBkaWZmZXJlbnQgd2l0aCBhcHBlbmRpbmcgbW9yZSBmbGFncyhlLmcu
LCByZW1vdmluZyBjb25kaXRpb24KdnMgYWRkaW5nIG1vcmUgY29uZGl0aW9ucykuIElmIHdlIHNo
b3VsZCByZW1vdmUgdGhlIGZsYWcsIGNhbGxlcgpkaWRuJ3QgbmVlZCB0byBzZXQgaXQgZnJvbSB0
aGUgYmVnaW5uaW5nLiBIaWRpbmcgaXQgdW5kZXIgdGhpcyBBUEkKY29udGludWUgdG8gbWFrZSB3
cm9uZyB1c2VjYXNlIGluIGZ1dHVyZS4KCj4gbWlzc2luZyB0aGUgcmVhbCByZWFzb24gZm9yIFZN
X1BGTk1BUCBiZWluZyBzZXQgaW4gZHJtX2dlbV9tbWFwX29iaigpCj4gYmVmb3JlIGRtYV9idWZf
bW1hcCgpIGlzIGNhbGxlZC4gSSBjb3VsZCBub3QgZmluZCB0aGUgYW5zd2VyIHRvIHRoYXQsCj4g
c28gSSBob3BlIHNvbWVvbmUgaGVyZSBjYW4gY2xhcmlmeSB0aGF0LgoKR3Vlc3MgRFJNIGhhZCB1
c2VkIGNhcnZlZCBvdXQgcHVyZSBQRk4gbWVtb3J5IGxvbmcgdGltZSBhZ28gYW5kCmNoYW5nZWQg
dG8gdXNlIGRtYWJ1ZiBzaW5jZSBzb21lcG9pbnQuCldoYXRldmVyIHRoZXJlIGlzIGEgaGlzdG9y
eSwgcmF0aGVyIHRoYW4gcmVtb3ZpbmcgdGhlIGZsYWcKdW5kZXIgdGhlbSwgbGV0J3MgYWRkIFdB
Uk5fT04odm1hLT52bV9mbGFncyAmIFZNX1BGTk1BUCkgc28Kd2UgY291bGQgY2xlYW4gdXAgY2F0
Y2hpbmcgdGhlbSBhbmQgc3RhcnQgZGlzY3Vzc2lvbi4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
