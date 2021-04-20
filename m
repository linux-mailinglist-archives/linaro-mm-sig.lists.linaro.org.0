Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B69B4365753
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 13:15:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA2F061877
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 11:15:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B823F61932; Tue, 20 Apr 2021 11:15:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4831667A4;
	Tue, 20 Apr 2021 11:14:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0245C61877
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 11:14:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DE00E667A4; Tue, 20 Apr 2021 11:14:21 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by lists.linaro.org (Postfix) with ESMTPS id EE02861877
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 11:14:19 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id r20so7914311ejo.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 04:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=Typh3MhSkbyPMTThE0U2Q1ZO/12rDfMhvhLaVI/d1e8=;
 b=WIa1lyiUnuvtXXj1tgK/utjaEvWsAaTvts4w6uDPWdg+pMHGU0CY1HfIxZ2DowW/O8
 uCOvRDvGP5CcRYn/iFwmn7MiIb55j9JbFkIjRrTE0QLDVcfiwSO3a/EJBh95unyZe1dm
 oPvoSB2qW576AB8o7Bo6/nrABzwtvqnwfcT7/51hrKLq/okVPf1VGWfmszr19nBpaFmR
 BkKUjX9cdVLN+mNTvDFb7zWz2HdD5i5NBGZcNTu4OxYaS38/z4okwi7roLrpnMxuUWTT
 D7E/llwF+6A1fdxUhDncpi3ghTtdCwPeYH6ZNcjx19c/vlpLmk4GrzHZCgEKcCACJNJg
 Ko+g==
X-Gm-Message-State: AOAM531bFJK4f3SXzw/SxqWIvwxy9vBGwtuJnd70XfumW3pprUXApAGW
 GkEUu0ynCNrHGKWnwKDz8dfqQw==
X-Google-Smtp-Source: ABdhPJy8I04sLJ6rISKUbY8p7EIy7J+0ccdspYtYAIEZfvYtprT2Z23ngxTun+fd5qbntXzHzXLbDA==
X-Received: by 2002:a17:906:7fd3:: with SMTP id
 r19mr27643200ejs.286.1618917259038; 
 Tue, 20 Apr 2021 04:14:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f1sm10639067edz.60.2021.04.20.04.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Apr 2021 04:14:18 -0700 (PDT)
Date: Tue, 20 Apr 2021 13:14:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Peter.Enderborg@sony.com
Message-ID: <YH63iPzbGWzb676T@phenom.ffwll.local>
Mail-Followup-To: Peter.Enderborg@sony.com, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, sumit.semwal@linaro.org,
 christian.koenig@amd.com, adobriyan@gmail.com,
 akpm@linux-foundation.org, songmuchun@bytedance.com, guro@fb.com,
 shakeelb@google.com, mhocko@suse.com, neilb@suse.de,
 samitolvanen@google.com, rppt@kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, willy@infradead.org
References: <20210417163835.25064-1-peter.enderborg@sony.com>
 <YH6Xv00ddYfMA3Lg@phenom.ffwll.local>
 <176e7e71-59b7-b288-9483-10e0f42a7a3f@sony.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <176e7e71-59b7-b288-9483-10e0f42a7a3f@sony.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: mhocko@suse.com, willy@infradead.org, neilb@suse.de,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 adobriyan@gmail.com, linaro-mm-sig@lists.linaro.org, shakeelb@google.com,
 rppt@kernel.org, samitolvanen@google.com, songmuchun@bytedance.com,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 christian.koenig@amd.com, guro@fb.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v5] dma-buf: Add DmaBufTotal counter in
	meminfo
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

T24gVHVlLCBBcHIgMjAsIDIwMjEgYXQgMDk6MjY6MDBBTSArMDAwMCwgUGV0ZXIuRW5kZXJib3Jn
QHNvbnkuY29tIHdyb3RlOgo+IE9uIDQvMjAvMjEgMTA6NTggQU0sIERhbmllbCBWZXR0ZXIgd3Jv
dGU6Cj4gPiBPbiBTYXQsIEFwciAxNywgMjAyMSBhdCAwNjozODozNVBNICswMjAwLCBQZXRlciBF
bmRlcmJvcmcgd3JvdGU6Cj4gPj4gVGhpcyBhZGRzIGEgdG90YWwgdXNlZCBkbWEtYnVmIG1lbW9y
eS4gRGV0YWlscwo+ID4+IGNhbiBiZSBmb3VuZCBpbiBkZWJ1Z2ZzLCBob3dldmVyIGl0IGlzIG5v
dCBmb3IgZXZlcnlvbmUKPiA+PiBhbmQgbm90IGFsd2F5cyBhdmFpbGFibGUuIGRtYS1idWYgYXJl
IGluZGlyZWN0IGFsbG9jYXRlZCBieQo+ID4+IHVzZXJzcGFjZS4gU28gd2l0aCB0aGlzIHZhbHVl
IHdlIGNhbiBtb25pdG9yIGFuZCBkZXRlY3QKPiA+PiB1c2Vyc3BhY2UgYXBwbGljYXRpb25zIHRo
YXQgaGF2ZSBwcm9ibGVtcy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEVuZGVyYm9y
ZyA8cGV0ZXIuZW5kZXJib3JnQHNvbnkuY29tPgo+ID4gU28gdGhlcmUgaGF2ZSBiZWVuIHRvbnMg
b2YgZGlzY3Vzc2lvbnMgYXJvdW5kIGhvdyB0byB0cmFjayBkbWEtYnVmIGFuZAo+ID4gd2h5LCBh
bmQgSSByZWFsbHkgbmVlZCB0byB1bmRlcnN0YW5kIHRoZSB1c2UtY2FzcyBoZXJlIGZpcnN0IEkg
dGhpbmsuIHByb2MKPiA+IHVhcGkgaXMgYXMgbXVjaCBmb3JldmVyIGFzIGFueXRoaW5nIGVsc2Us
IGFuZCBkZXBlbmRpbmcgd2hhdCB5b3UncmUgZG9pbmcKPiA+IHRoaXMgZG9lc24ndCBtYWtlIGFu
eSBzZW5zZSBhdCBhbGw6Cj4gPgo+ID4gLSBvbiBtb3N0IGxpbnV4IHN5c3RlbXMgZG1hLWJ1ZiBh
cmUgb25seSBpbnN0YW50aWF0ZWQgZm9yIHNoYXJlZCBidWZmZXIuCj4gPiAgIFNvIHRoZXJlIHRo
aXMgZ2l2ZXMgeW91IGEgZmFpcmx5IG1lYW5pbmdsZXNzIG51bWJlciBhbmQgbm90IGFueXRoaW5n
Cj4gPiAgIHJlZmxlY3RpbmcgZ3B1IG1lbW9yeSB1c2FnZSBhdCBhbGwuCj4gPgo+ID4gLSBvbiBB
bmRyb2lkIGFsbCBidWZmZXJzIGFyZSBhbGxvY2F0ZWQgdGhyb3VnaCBkbWEtYnVmIGFmYWlrLiBC
dXQgdGhlcmUKPiA+ICAgd2UndmUgcmVjZW50bHkgaGFkIHNvbWUgZGlzY3Vzc2lvbnMgYWJvdXQg
aG93IGV4YWN0bHkgd2Ugc2hvdWxkIHRyYWNrCj4gPiAgIGFsbCB0aGlzLCBhbmQgdGhlIGNvbmNs
dXNpb24gd2FzIHRoYXQgbW9zdCBvZiB0aGlzIHNob3VsZCBiZSBzb2x2ZWQgYnkKPiA+ICAgY2dy
b3VwcyBsb25nIHRlcm0uIFNvIGlmIHRoaXMgaXMgZm9yIEFuZHJvaWQsIHRoZW4gSSBkb24ndCB0
aGluayBhZGRpbmcKPiA+ICAgcmFuZG9tIHF1aWNrIHN0b3AtZ2FwcyB0byB1cHN0cmVhbSBpcyBh
IGdvb2QgaWRlYSAoYmVjYXVzZSBpdCdzIGEgcHJldHR5Cj4gPiAgIGxvbmcgbGlzdCBvZiBwYXRj
aGVzIHRoYXQgaGF2ZSBjb21lIHVwIG9uIHRoaXMpLgo+ID4KPiA+IFNvIHdoYXQgaXMgdGhpcyBm
b3I/Cj4gCj4gRm9yIHRoZSBvdmVydmlldy4gZG1hLWJ1ZiB0b2RheSBvbmx5IGhhdmUgZGVidWdm
cyBmb3IgaW5mby4gRGVidWdmcwo+IGlzIG5vdCBhbGxvd2VkIGJ5IGdvb2dsZSB0byB1c2UgaW4g
YW5kb2lkLiBTbyB0aGlzIGFnZ3JlZ2F0ZSB0aGUgaW5mb3JtYXRpb24KPiBzbyB3ZSBjYW4gZ2V0
IGluZm9ybWF0aW9uIG9uIHdoYXQgZ29pbmcgb24gb24gdGhlIHN5c3RlbS7CoAo+IAo+IEFuZCB0
aGUgTEtNTCBzdGFuZGFyZCByZXNwb25kIHRvIHRoYXQgaXMgIlNIT1cgTUUgVEhFIENPREUiLgoK
WWVzLiBFeGNlcHQgdGhpcyBleHRlbmRzIHRvIGhvdyBleGFjdGx5IHRoaXMgaXMgc3VwcG9zZWQg
dG8gYmUgdXNlZCBpbgp1c2Vyc3BhY2UgYW5kIGFjdGVkIHVwb24uCgo+IFdoZW4gdGhlIHRvcCBt
ZW1nYyBoYXMgYSBhZ2dyZWdhdGVkIGluZm9ybWF0aW9uIG9uIGRtYS1idWYgaXQgaXMgbWF5YmUK
PiBhIGJldHRlciBzb3VyY2UgdG8gbWVtaW5mby4gQnV0IHRoZW4gaXQgYWxzbyBpbXBseSB0aGF0
IGRtYS1idWYgcmVxdWlyZXMgbWVtY2cuCj4gCj4gQW5kIEkgZG9udCBzZWUgYW55IHByb2JsZW0g
dG8gcmVwbGFjZSB0aGlzIHdpdGggc29tZXRoaW5nIGJldHRlciB3aXRoIGl0IGlzIHJlYWR5LgoK
VGhlIHRoaW5nIGlzLCB0aGlzIGlzIHVhcGkuIE9uY2UgaXQncyBtZXJnZWQgd2UgY2Fubm90LCBl
dmVyLCByZXBsYWNlIGl0LgpJdCBtdXN0IGJlIGtlcHQgYXJvdW5kIGZvcmV2ZXIsIG9yIGEgdmVy
eSBjbG9zZSBhcHByb3hpbWF0aW9uIHRoZXJlb2YuIFNvCm1lcmdpbmcgdGhpcyB3aXRoIHRoZSBq
dXN0aWZpY2F0aW9uIHRoYXQgd2UgY2FuIGZpeCBpdCBsYXRlciBvbiBvciByZXBsYWNlCmlzbid0
IGdvaW5nIHRvIGhhcHBlbi4KLURhbmllbAoKPiAKPiA+IC1EYW5pZWwKPiA+Cj4gPj4gLS0tCj4g
Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxMiArKysrKysrKysrKysKPiA+PiAgZnMv
cHJvYy9tZW1pbmZvLmMgICAgICAgICB8ICA1ICsrKystCj4gPj4gIGluY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oICAgfCAgMSArCj4gPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPj4gaW5kZXggZjI2NGI3MGMzODNl
Li40ZGMzN2NkNDI5M2IgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Ywo+ID4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+PiBAQCAtMzcsNiArMzcs
NyBAQCBzdHJ1Y3QgZG1hX2J1Zl9saXN0IHsKPiA+PiAgfTsKPiA+PiAgCj4gPj4gIHN0YXRpYyBz
dHJ1Y3QgZG1hX2J1Zl9saXN0IGRiX2xpc3Q7Cj4gPj4gK3N0YXRpYyBhdG9taWNfbG9uZ190IGRt
YV9idWZfZ2xvYmFsX2FsbG9jYXRlZDsKPiA+PiAgCj4gPj4gIHN0YXRpYyBjaGFyICpkbWFidWZm
c19kbmFtZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnksIGNoYXIgKmJ1ZmZlciwgaW50IGJ1ZmxlbikK
PiA+PiAgewo+ID4+IEBAIC03OSw2ICs4MCw3IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFz
ZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkpCj4gPj4gIAlpZiAoZG1hYnVmLT5yZXN2ID09IChzdHJ1
Y3QgZG1hX3Jlc3YgKikmZG1hYnVmWzFdKQo+ID4+ICAJCWRtYV9yZXN2X2ZpbmkoZG1hYnVmLT5y
ZXN2KTsKPiA+PiAgCj4gPj4gKwlhdG9taWNfbG9uZ19zdWIoZG1hYnVmLT5zaXplLCAmZG1hX2J1
Zl9nbG9iYWxfYWxsb2NhdGVkKTsKPiA+PiAgCW1vZHVsZV9wdXQoZG1hYnVmLT5vd25lcik7Cj4g
Pj4gIAlrZnJlZShkbWFidWYtPm5hbWUpOwo+ID4+ICAJa2ZyZWUoZG1hYnVmKTsKPiA+PiBAQCAt
NTg2LDYgKzU4OCw3IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1
Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pCj4gPj4gIAltdXRleF9sb2NrKCZkYl9s
aXN0LmxvY2spOwo+ID4+ICAJbGlzdF9hZGQoJmRtYWJ1Zi0+bGlzdF9ub2RlLCAmZGJfbGlzdC5o
ZWFkKTsKPiA+PiAgCW11dGV4X3VubG9jaygmZGJfbGlzdC5sb2NrKTsKPiA+PiArCWF0b21pY19s
b25nX2FkZChkbWFidWYtPnNpemUsICZkbWFfYnVmX2dsb2JhbF9hbGxvY2F0ZWQpOwo+ID4+ICAK
PiA+PiAgCXJldHVybiBkbWFidWY7Cj4gPj4gIAo+ID4+IEBAIC0xMzQ2LDYgKzEzNDksMTUgQEAg
dm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1
Zl9tYXAgKm1hcCkKPiA+PiAgfQo+ID4+ICBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3Z1bm1h
cCk7Cj4gPj4gIAo+ID4+ICsvKioKPiA+PiArICogZG1hX2J1Zl9hbGxvY2F0ZWRfcGFnZXMgLSBS
ZXR1cm4gdGhlIHVzZWQgbnIgb2YgcGFnZXMKPiA+PiArICogYWxsb2NhdGVkIGZvciBkbWEtYnVm
Cj4gPj4gKyAqLwo+ID4+ICtsb25nIGRtYV9idWZfYWxsb2NhdGVkX3BhZ2VzKHZvaWQpCj4gPj4g
K3sKPiA+PiArCXJldHVybiBhdG9taWNfbG9uZ19yZWFkKCZkbWFfYnVmX2dsb2JhbF9hbGxvY2F0
ZWQpID4+IFBBR0VfU0hJRlQ7Cj4gPj4gK30KPiA+PiArCj4gPj4gICNpZmRlZiBDT05GSUdfREVC
VUdfRlMKPiA+PiAgc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNlcV9maWxl
ICpzLCB2b2lkICp1bnVzZWQpCj4gPj4gIHsKPiA+PiBkaWZmIC0tZ2l0IGEvZnMvcHJvYy9tZW1p
bmZvLmMgYi9mcy9wcm9jL21lbWluZm8uYwo+ID4+IGluZGV4IDZmYTc2MWM5Y2M3OC4uY2NjN2M0
MGM4ZGI3IDEwMDY0NAo+ID4+IC0tLSBhL2ZzL3Byb2MvbWVtaW5mby5jCj4gPj4gKysrIGIvZnMv
cHJvYy9tZW1pbmZvLmMKPiA+PiBAQCAtMTYsNiArMTYsNyBAQAo+ID4+ICAjaWZkZWYgQ09ORklH
X0NNQQo+ID4+ICAjaW5jbHVkZSA8bGludXgvY21hLmg+Cj4gPj4gICNlbmRpZgo+ID4+ICsjaW5j
bHVkZSA8bGludXgvZG1hLWJ1Zi5oPgo+ID4+ICAjaW5jbHVkZSA8YXNtL3BhZ2UuaD4KPiA+PiAg
I2luY2x1ZGUgImludGVybmFsLmgiCj4gPj4gIAo+ID4+IEBAIC0xNDUsNyArMTQ2LDkgQEAgc3Rh
dGljIGludCBtZW1pbmZvX3Byb2Nfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnYpCj4g
Pj4gIAlzaG93X3ZhbF9rYihtLCAiQ21hRnJlZTogICAgICAgICIsCj4gPj4gIAkJICAgIGdsb2Jh
bF96b25lX3BhZ2Vfc3RhdGUoTlJfRlJFRV9DTUFfUEFHRVMpKTsKPiA+PiAgI2VuZGlmCj4gPj4g
LQo+ID4+ICsjaWZkZWYgQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSCj4gPj4gKwlzaG93X3ZhbF9r
YihtLCAiRG1hQnVmVG90YWw6ICAgICIsIGRtYV9idWZfYWxsb2NhdGVkX3BhZ2VzKCkpOwo+ID4+
ICsjZW5kaWYKPiA+PiAgCWh1Z2V0bGJfcmVwb3J0X21lbWluZm8obSk7Cj4gPj4gIAo+ID4+ICAJ
YXJjaF9yZXBvcnRfbWVtaW5mbyhtKTsKPiA+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+ID4+IGluZGV4IGVmZGM1NmI5ZDk1
Zi4uNWIwNTgxNmJkMmNkIDEwMDY0NAo+ID4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
Cj4gPj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiA+PiBAQCAtNTA3LDQgKzUwNyw1
IEBAIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKiwgc3RydWN0IHZtX2FyZWFfc3Ry
dWN0ICosCj4gPj4gIAkJIHVuc2lnbmVkIGxvbmcpOwo+ID4+ICBpbnQgZG1hX2J1Zl92bWFwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsKPiA+PiAgdm9p
ZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9t
YXAgKm1hcCk7Cj4gPj4gK2xvbmcgZG1hX2J1Zl9hbGxvY2F0ZWRfcGFnZXModm9pZCk7Cj4gPj4g
ICNlbmRpZiAvKiBfX0RNQV9CVUZfSF9fICovCj4gPj4gLS0gCj4gPj4gMi4xNy4xCj4gPj4KPiA+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+IGRy
aS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gPj4gaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsX187ISFKbW9aaVpHQnYzUnZLUlN4IXFX
OGtVT1p5WTREa2V3Nk92cWdmb00tNXVuUU5WZUZfTTFiaWFJQXlRUUJSMEtCN2tzUnpaam9oMzgy
WmRHR1FSOWskIAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaS1kZXZlbAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
