Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CA931C804
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Feb 2021 10:26:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5569B61887
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Feb 2021 09:26:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 454FD66460; Tue, 16 Feb 2021 09:26:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E501C61887;
	Tue, 16 Feb 2021 09:25:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE1A860654
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Feb 2021 09:25:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DC80461887; Tue, 16 Feb 2021 09:25:28 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by lists.linaro.org (Postfix) with ESMTPS id 868A760654
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Feb 2021 09:25:27 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id l17so8540094wmq.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Feb 2021 01:25:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=Exh3jg3n/TtKnZWGfFfDIiOa1Lq+MYGlC1ET8Iputzc=;
 b=UGRM40SMzhhsQuWiMB2b0g+Pv9l7N7Lq82Sbgv9kozz0yrKlUoEECE2nTbBklJb4Tz
 RLp7EzIZHpPAPAgmJFEbHrp01KeuPUBwGLPM4XPb0QK2lctAlzsI9/IgddcjyUlRdmo+
 l01Ki/3aE2T9PiyO4JtjG5YwLbA1qh7hzejxsAubkMiSm0m7Qlhv31vB1dlQDYdXbI7X
 WP/cHd0trSjgBf70UOc8r6klUR1veKUN1TWAgQtbzMSwEA5I8Ro0tJarM0VGghZrrcGT
 O6JKK93OwQ5Oq6JU0alhymqk2T00npSHP4rzfxeMMg6oopRUmPflfczvG6IWmJZMKYXJ
 jaVQ==
X-Gm-Message-State: AOAM530bojSoh6QWmIiSuFVuO5mjEz+tubw9BtO6S0hsdT1LUU+QRdsk
 7/id1yirgX7+KFQkgeFumEsN0w==
X-Google-Smtp-Source: ABdhPJxCH8w9nrCrGj6DLgq7mUqO7jid+0L9+xJ/lCXaA3/b39BYFgNSlxIAXTKGgH2NqCvGcPhA6A==
X-Received: by 2002:a7b:c010:: with SMTP id c16mr2501284wmb.134.1613467526735; 
 Tue, 16 Feb 2021 01:25:26 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k11sm26838869wrv.51.2021.02.16.01.25.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 01:25:26 -0800 (PST)
Date: Tue, 16 Feb 2021 10:25:24 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 linux-media <linux-media@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, lkml <linux-kernel@vger.kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "Sharma, Shashank" <Shashank.Sharma@amd.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "Sharma, Shashank" <Shashank.Sharma@amd.com>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] DMA-buf and uncached system memory
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

T24gTW9uLCBGZWIgMTUsIDIwMjEgYXQgMDk6NTg6MDhBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBIaSBndXlzLAo+IAo+IHdlIGFyZSBjdXJyZW50bHkgd29ya2luZyBhbiBGcmVl
c3luYyBhbmQgZGlyZWN0IHNjYW4gb3V0IGZyb20gc3lzdGVtIG1lbW9yeQo+IG9uIEFNRCBBUFVz
IGluIEErQSBsYXB0b3BzLgo+IAo+IE9uIHByb2JsZW0gd2Ugc3R1bWJsZWQgb3ZlciBpcyB0aGF0
IG91ciBkaXNwbGF5IGhhcmR3YXJlIG5lZWRzIHRvIHNjYW4gb3V0Cj4gZnJvbSB1bmNhY2hlZCBz
eXN0ZW0gbWVtb3J5IGFuZCB3ZSBjdXJyZW50bHkgZG9uJ3QgaGF2ZSBhIHdheSB0byBjb21tdW5p
Y2F0ZQo+IHRoYXQgdGhyb3VnaCBETUEtYnVmLgo+IAo+IEZvciBvdXIgc3BlY2lmaWMgdXNlIGNh
c2UgYXQgaGFuZCB3ZSBhcmUgZ29pbmcgdG8gaW1wbGVtZW50IHNvbWV0aGluZyBkcml2ZXIKPiBz
cGVjaWZpYywgYnV0IHRoZSBxdWVzdGlvbiBpcyBzaG91bGQgd2UgaGF2ZSBzb21ldGhpbmcgbW9y
ZSBnZW5lcmljIGZvcgo+IHRoaXM/Cj4gCj4gQWZ0ZXIgYWxsIHRoZSBzeXN0ZW0gbWVtb3J5IGFj
Y2VzcyBwYXR0ZXJuIGlzIGEgUENJZSBleHRlbnNpb24gYW5kIGFzIHN1Y2gKPiBzb21ldGhpbmcg
Z2VuZXJpYy4KClllcyBpdCdzIGEgcHJvYmxlbSwgYW5kIGl0J3MgYSBjb21wbGV0ZSBtZXNzLiBT
byB0aGUgZGVmYWN0byBydWxlcyBhcmU6CgoxLiBpbXBvcnRlciBoYXMgdG8gZG8gY29oZXJlbnQg
dHJhbnNhY3Rpb25zIHRvIHNub29wIGNwdSBjYWNoZXMuCgpUaGlzIHdheSBib3RoIG1vZGVzIHdv
cms6CgotIGlmIHRoZSBidWZmZXIgaXMgY2FjaGVkLCB3ZSdyZSBmaW5lCgotIGlmIHRoZSBidWZm
ZXIgaXMgbm90IGNhY2hlZCwgYnV0IHRoZSBleHBvcnRlciBoYXMgZmx1c2hlZCBhbGwgdGhlCiAg
Y2FjaGVzLCB5b3UncmUgbW9zdGx5IGp1c3Qgd2FzdGluZyB0aW1lIG9uIGluZWZmaWNpZW50IGJ1
cyBjeWNsZXMuIEFsc28KICB0aGlzIGRvZXNuJ3Qgd29yayBpZiB5b3VyIENQVSBkb2Vzbid0IGp1
c3QgZHJvcCBjbGVhbiBjYWNoZWxpbmVzLiBMaWtlIEkKICB0aGluZyBzb21lIEFSTSBhcmUgcHJv
bmUgdG8gZG8sIG5vdCBpZGVhIGFib3V0IEFNRCwgSW50ZWwgaXMgZ3VhcmFudGVlZAogIHRvIGRy
b3AgdGhlbSB3aGljaCBpcyB3aHkgdGhlIHVuY2FjaGVkIHNjYW5vdXQgZm9yIGludGVncmF0ZWQg
SW50ZWwgKwogIGFtZCBkaXNjcmV0ZSAid29ya3MiLgoKMi4gZXhwb3J0ZXJzIHBpY2tzIHRoZSBt
b2RlIGZyZWVseSwgYW5kIGNhbiBldmVuIGNoYW5nZSBpdCBhdCBydW50aW1lCihpOTE1IGRvZXMg
dGhpcywgc2luY2Ugd2UgZG9uJ3QgaGF2ZSBhbiAiYWxsb2NhdGUgZm9yIHNjYW5vdXQiIGZsYWcg
d2lyZWQKdGhyb3VnaCBjb25zaXN0ZW50bHkpLiBUaGlzIGRvZXNuJ3Qgd29yayBvbiBhcm0sIHRo
ZXJlIHRoZSBydWxlIGlzICJhbGwKZGV2aWNlcyBpbiB0aGUgc2FtZSBzeXN0ZW0gbXVzdCB1c2Ug
dGhlIHNhbWUgbW9kZSIuCgozLiBUaGlzIHNob3VsZCBiZSBzb2x2ZWQgYXQgdGhlIGRtYS1idWYg
bGF5ZXIsIGJ1dCB0aGUgZG1hLWFwaSByZWZ1c2VzIHRvCnRlbGwgeW91IHRoaXMgaW5mb3JtYXRp
b24gKGF0IGxlYXN0IGZvciBkbWFfYWxsb2NfY29oZXJlbnQpLiBBbmQgSSdtIG5vdApnb2luZyB0
byBkZWFsIHdpdGggdGhlIGJpa2VzaGVkIHRoYXQgd291bGQgYnJpbmcgaW50byBteSBpbmJveC4g
T3IgYXQKbGVhc3QgdGhlcmUncyBhbHdheXMgYmVlbiBzY3JlYW1pbmcgdGhhdCBkcml2ZXJzIHNo
b3VsZG4ndCBwZWVrIGJlaGluZCB0aGUKYWJzdHJhY3Rpb24uCgpTbyBJIHRoaW5rIGlmIEFNRCBh
bHNvIGd1YXJhbnRlZXMgdG8gZHJvcCBjbGVhbiBjYWNoZWxpbmVzIGp1c3QgZG8gdGhlCnNhbWUg
dGhpbmcgd2UgZG8gcmlnaHQgbm93IGZvciBpbnRlbCBpbnRlZ3JhdGVkICsgZGlzY3JldGUgYW1k
LCBidXQgaW4KcmVzZXJ2ZS4gSXQncyBmcmFnaWxlLCBidXQgaXQgZG9lcyB3b3JrLgoKV2hhdCB3
ZSBpbW8gc2hvdWxkbid0IGRvIGlzIGRyaXZlciBwcml2YXRlIGludGVyZmFjZXMgaGVyZSwgdGhh
dCdzIGp1c3QKZ29pbmcgdG8gbWFrZSB0aGUgcHJvYmxlbSB3b3JzZSBsb25nIHRlcm0uIE9yIGF0
IGxlYXN0IGRyaXZlci1wcml2YXRlCmludGVyZmFjZXMgdGhhdCBzcGF3biBhY3Jvc3MgZHJpdmVy
cyBiZWhpbmQgZG1hLWJ1ZiwgYmVjYXVzZSBpbW8gdGhpcyBpcwpyZWFsbHkgYSBwcm9ibGVtIHRo
YXQgZG1hLWJ1ZiBzaG91bGQgc29sdmUuCgpJZiB5b3UgZG8gd2FudCB0byBzb2x2ZSB0aGlzIGF0
IHRoZSBkbWEtYnVmIGxldmVsIEkgY2FuIHRyeSBhbmQgcG9pbnQgeW91CmF0IHRoZSByZXNwZWN0
aXZlIGk5MTUgYW5kIGFtZGdwdSBjb2RlIHRoYXQgbWFrZXMgdGhlIG1hZ2ljIHdvcmsgLSBJJ3Zl
CmhhZCB0byBmaXggaXQgYSBmZXcgdGltZXMgaW4gdGhlIHBhc3QuIEknbSBub3Qgc3VyZSB3aGV0
aGVyIHdlJ2QgbmVlZCB0bwpwYXNzIHRoZSBkeW5hbWljIG5hdHVyZSB0aHJvdWdoIHRob3VnaCwg
aS5lLiB3aGV0aGVyIHdlIHdhbnQgdG8gYmUgYWJsZSB0bwpzY2FuIG91dCBpbXBvcnRlZCBkbWEt
YnVmIGFuZCBoZW5jZSByZXF1ZXN0IHRoZXkgYmUgdXNlZCBpbiB1bmNhY2hlZCBtb2RlLgotRGFu
aWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
