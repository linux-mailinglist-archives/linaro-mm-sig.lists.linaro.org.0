Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 437D12883D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 09:41:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59F026174C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 07:41:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F0BA61778; Fri,  9 Oct 2020 07:41:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36D3266464;
	Fri,  9 Oct 2020 07:40:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5C5CC6174C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 07:40:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4A05B66464; Fri,  9 Oct 2020 07:40:52 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id E40576174C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 07:40:50 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 13so8815044wmf.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 00:40:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=Y3zs5MyaJjxQczfNdG639aNsJL9caNjvPlFIB7wLkR4=;
 b=HxWM6R2ku7Blz8C5IlDB+ToteMvgDSf5/ANBPTddP/ZgUH2aqs9RwvDYgmjLppg1lz
 YB7JIvNqjz8dKH1sF0XXdXrRzYc2avkQ981w/9PsDedmXdRIDV1QfpEkBaIFEYmS/7Z0
 uJHDxYd+Wka2DfDs1Rkn5zb5U1RhmGvLR6PPb+QUP7FgnVDznf9+8LkIdBzdLBYYy/va
 Ha1gN7ZUHAwMogJgbjbVRHx8uIv1rXIpWWag6cCo7gTlHWD2vXE7cuJ8AFjzemUVp/nn
 4EglDf/NfAQJK8PcsDmJUO+QFveptkdcdltz+6rMzg+hBJDsJy9QoA7ZdmbU/KTOGil8
 K43Q==
X-Gm-Message-State: AOAM53160uifDXEQLv7e5Yp1ikZ3y2q/MkdslpB9peLOqjvAaknFa/l1
 GpdeovCzpE5jj55m/zJZB0/8oQ==
X-Google-Smtp-Source: ABdhPJzEZVjAyzHt2mUFBrus7xHA9Fz2PHmYxtWRjXFp1GdZ9Yug82fj27NzQMq9vnHe30s/bBamAQ==
X-Received: by 2002:a7b:c92c:: with SMTP id h12mr12070681wml.134.1602229250051; 
 Fri, 09 Oct 2020 00:40:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n3sm10383741wmn.28.2020.10.09.00.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 00:40:49 -0700 (PDT)
Date: Fri, 9 Oct 2020 09:40:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20201009074047.GM438822@phenom.ffwll.local>
Mail-Followup-To: christian.koenig@amd.com, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk, airlied@redhat.com,
 akpm@linux-foundation.org, sumit.semwal@linaro.org
References: <20201008112342.9394-1-christian.koenig@amd.com>
 <20201008112342.9394-2-christian.koenig@amd.com>
 <20201008140914.GF438822@phenom.ffwll.local>
 <20201008141419.GH438822@phenom.ffwll.local>
 <6cc96549-2724-6849-0f38-0de60ed6989c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6cc96549-2724-6849-0f38-0de60ed6989c@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, airlied@redhat.com,
 akpm@linux-foundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] drm/prime: document that use the
 page array is deprecated
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

T24gRnJpLCBPY3QgMDksIDIwMjAgYXQgMDk6MzY6NDFBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAwOC4xMC4yMCB1bSAxNjoxNCBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4g
PiBPbiBUaHUsIE9jdCAwOCwgMjAyMCBhdCAwNDowOToxNFBNICswMjAwLCBEYW5pZWwgVmV0dGVy
IHdyb3RlOgo+ID4gPiBPbiBUaHUsIE9jdCAwOCwgMjAyMCBhdCAwMToyMzo0MFBNICswMjAwLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4gPiA+IFdlIGhhdmUgcmVvY2N1cnJpbmcgcmVxdWVz
dHMgb24gdGhpcyBzbyBiZXR0ZXIgZG9jdW1lbnQgdGhhdAo+ID4gPiA+IHRoaXMgYXBwcm9hY2gg
ZG9lc24ndCB3b3JrIGFuZCBkbWFfYnVmX21tYXAoKSBuZWVkcyB0byBiZSB1c2VkIGluc3RlYWQu
Cj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jIHwgNyArKysrKystCj4gPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwo+
ID4gPiA+IGluZGV4IDQ5MTBjNDQ2ZGI4My4uMTZmYTJiZmMyNzFlIDEwMDY0NAo+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fcHJpbWUuYwo+ID4gPiA+IEBAIC05NTYsNyArOTU2LDcgQEAgRVhQT1JUX1NZTUJP
TChkcm1fZ2VtX3ByaW1lX2ltcG9ydCk7Cj4gPiA+ID4gICAvKioKPiA+ID4gPiAgICAqIGRybV9w
cmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzIC0gY29udmVydCBhbiBzZyB0YWJsZSBpbnRvIGEg
cGFnZSBhcnJheQo+ID4gPiA+ICAgICogQHNndDogc2NhdHRlci1nYXRoZXIgdGFibGUgdG8gY29u
dmVydAo+ID4gPiA+IC0gKiBAcGFnZXM6IG9wdGlvbmFsIGFycmF5IG9mIHBhZ2UgcG9pbnRlcnMg
dG8gc3RvcmUgdGhlIHBhZ2UgYXJyYXkgaW4KPiA+ID4gPiArICogQHBhZ2VzOiBkZXByZWNhdGVk
IGFycmF5IG9mIHBhZ2UgcG9pbnRlcnMgdG8gc3RvcmUgdGhlIHBhZ2UgYXJyYXkgaW4KPiA+ID4g
PiAgICAqIEBhZGRyczogb3B0aW9uYWwgYXJyYXkgdG8gc3RvcmUgdGhlIGRtYSBidXMgYWRkcmVz
cyBvZiBlYWNoIHBhZ2UKPiA+ID4gPiAgICAqIEBtYXhfZW50cmllczogc2l6ZSBvZiBib3RoIHRo
ZSBwYXNzZWQtaW4gYXJyYXlzCj4gPiA+ID4gICAgKgo+ID4gPiA+IEBAIC05NjUsNiArOTY1LDEx
IEBAIEVYUE9SVF9TWU1CT0woZHJtX2dlbV9wcmltZV9pbXBvcnQpOwo+ID4gPiA+ICAgICoKPiA+
ID4gPiAgICAqIERyaXZlcnMgY2FuIHVzZSB0aGlzIGluIHRoZWlyICZkcm1fZHJpdmVyLmdlbV9w
cmltZV9pbXBvcnRfc2dfdGFibGUKPiA+ID4gPiAgICAqIGltcGxlbWVudGF0aW9uLgo+ID4gPiA+
ICsgKgo+ID4gPiA+ICsgKiBTcGVjaWZ5aW5nIHRoZSBwYWdlcyBhcnJheSBpcyBkZXByZWNhdGVk
IGFuZCBzdHJvbmdseSBkaXNjb3VyYWdlZCBmb3IgbmV3Cj4gPiA+ID4gKyAqIGRyaXZlcnMuIFRo
ZSBwYWdlcyBhcnJheSBpcyBvbmx5IHVzZWZ1bCBmb3IgcGFnZSBmYXVsdHMgYW5kIHRob3NlIGNh
bgo+ID4gPiA+ICsgKiBjb3JydXB0IGZpZWxkcyBpbiB0aGUgc3RydWN0IHBhZ2UgaWYgdGhleSBh
cmUgbm90IGhhbmRsZWQgYnkgdGhlIGV4cG9ydGluZwo+ID4gPiA+ICsgKiBkcml2ZXIuCj4gPiA+
ID4gICAgKi8KPiA+ID4gSSdkIG1ha2UgdGhpcyBhIF9sb3RfIHN0cm9uZ2VyOiBBc2lkZSBmcm9t
IGFtZGdwdSBhbmQgcmFkZW9uIGFsbCBkcml2ZXJzCj4gPiA+IHVzaW5nIHRoaXMgb25seSBuZWVk
IGl0IGZvciB0aGUgcGFnZXMgYXJyYXkuIEltbyBqdXN0IG9wZW4tY29kZSB0aGUgc2cKPiA+ID4g
dGFibGUgd2Fsa2luZyBsb29wIGluIGFtZGdwdS9yYWRlb24gKGl0J3MgcmVhbGx5IG5vdCBtdWNo
IGNvZGUpLCBhbmQgdGhlbgo+ID4gPiBkcm9wIHRoZSBkbWFfYWRkcl90IHBhcmFtZXRlciBmcm9t
IHRoaXMgZnVuY3Rpb24gaGVyZSAoaXQncyBzZXQgdG8gTlVMTCBieQo+ID4gPiBldmVyeW9uZSBl
bHNlKS4KPiA+ID4gCj4gPiA+IEFuZCB0aGVuIGRlcHJlY2F0ZSB0aGlzIGVudGlyZSBmdW5jdGlv
biBoZXJlIHdpdGggYSBiaWcgd2FybmluZyB0aGF0IGEpCj4gPiA+IGRtYV9idWZfbWFwX2F0dGFj
aG1lbnQgaXMgYWxsb3dlZCB0byBsZWF2ZSB0aGUgc3RydWN0IHBhZ2UgcG9pbnRlcnMgTlVMTAo+
ID4gPiBhbmQgYikgdGhpcyBicmVha3MgbW1hcCwgdXNlcnMgbXVzdCBjYWxsIGRtYV9idWZfbW1h
cCBpbnN0ZWFkLgo+ID4gPiAKPiA+ID4gQWxzbyBtYXliZSBtYWtlIGl0IGFuIHVwcGVyY2FzZSBE
RVBSRUNBVEVEIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQgOi0pCj4gPiBPSyBJIGp1c3QgcmVhbGl6
ZWQgSSBtaXNzZWQgbm91dmVhdS4gVGhhdCB3b3VsZCBiZSAzIHBsYWNlcyB3aGVyZSB3ZSBuZWVk
Cj4gPiB0byBzdHVmZiB0aGUgZG1hX2FkZHJfdCBsaXN0IGludG8gc29tZXRoaW5nIHR0bSBjYW4g
dGFrZS4gU3RpbGwgZmVlbHMKPiA+IGJldHRlciB0aGFuIHRoaXMgaGFsZi1kZXByZWNhdGVkIGZ1
bmN0aW9uIGtsdWRnZSAuLi4KPiAKPiBNaG0sIEkgZG9uJ3Qgc2VlIGEgcmVhc29uIHdoeSBub3V2
ZWF1IHdvdWxkIG5lZWQgdGhlIHN0cnVjdCBwYWdlIGVpdGhlci4KPiAKPiBIb3cgYWJvdXQgd2Ug
c3BsaXQgdGhhdCB1cCBpbnRvIHR3byBmdW5jdGlvbj8KPiAKPiBPbmUgZm9yIGNvbnZlcnRpbmcg
dGhlIHNnX3RhYmxlIGludG8gYSBsaW5lYXIgZG1hX2FkZHIgYXJyYXkuCj4gCj4gQW5kIG9uZSBm
b3IgY29udmVydGluZyB0aGUgc2dfdGFibGUgaW50byBhIGxpbmVhciBzdHJ1Y3QgcGFnZSBhcnJh
eSB3aXRoIGEKPiBfX2RlcHJlY2F0ZWQgYXR0cmlidXRlIG9uIGl0PwoKWWVhaCBtYWtlcyBzZW5z
ZSwgc2luY2UgY29udmVydGluZyB0dG0gdG8ganVzdCB1c2Ugc2d0IGl0ZXJhdGlvbnMgZGlyZWN0
bHkKZXZlcnl3aGVyZSBpcyBwcm9iYWJseSBhIGJpdCB0b28gbXVjaC4gTWF5YmUga2VlcCB0aGF0
IGNvbnZlcnRlciBpbiB0dG0KY29kZSwgc2luY2Ugb3V0c2lkZSBvZiB0dG0gdGhlIHJvdWdoIGNv
bnNlbnN1cyBpcyB0byBjb252ZXJnZSBvbiBzZ3QgZm9yCmhhbmRsaW5nIGJ1ZmZlcnMuIFdlbGws
IGZvciB0aG9zZSBkcml2ZXJzIG5vdCBzdHVjayBvbiBzdHJ1Y3QgcGFnZSBhcnJheXMKOi0pCi1E
YW5pZWwKCj4gCj4gQ2hyaXN0aWFuLgo+IAo+ID4gLURhbmllbAo+ID4gCj4gPiA+IC1EYW5pZWwK
PiA+ID4gCj4gPiA+ID4gICBpbnQgZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoc3Ry
dWN0IHNnX3RhYmxlICpzZ3QsIHN0cnVjdCBwYWdlICoqcGFnZXMsCj4gPiA+ID4gICAJCQkJICAg
ICBkbWFfYWRkcl90ICphZGRycywgaW50IG1heF9lbnRyaWVzKQo+ID4gPiA+IC0tIAo+ID4gPiA+
IDIuMTcuMQo+ID4gPiA+IAo+ID4gPiAtLSAKPiA+ID4gRGFuaWVsIFZldHRlcgo+ID4gPiBTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KPiA+ID4gaHR0cDovL2Jsb2cuZmZ3bGwu
Y2gKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2
ZWwKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
