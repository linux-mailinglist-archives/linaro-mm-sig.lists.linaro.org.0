Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C36830F6D8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 16:55:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CA0D60B63
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 15:55:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2DC086188D; Thu,  4 Feb 2021 15:55:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D83160EE1;
	Thu,  4 Feb 2021 15:55:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0C914607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 15:55:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E057660B63; Thu,  4 Feb 2021 15:55:00 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by lists.linaro.org (Postfix) with ESMTPS id 90867607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 15:54:59 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id n7so4131872oic.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 07:54:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TE+20LCg4P7JDuDi9T+hP1y0ckG6wCABKFlMFLlaYRg=;
 b=Sp7quwW/EBTCYhj20x2Bvn+FBJ+C7Me99Ydak78ruxx1/OlQ4UvGbspPil5BApIqgC
 LwyfqfqNY69oHlhRtX4ak7tNUbK0EZsblsAvdLY7LwZqnepc801f+vayNhKAcuLp1HnF
 UTFkBL9KBLBKMWK7G/G3OGOM1muGVMX04G0PXDIbu60v/jPHwE+nsv4TlUPJ766GOAHC
 BXEl3VKEqMP2jJlvhs6NB+uYYe48IbFMJFF7Ty9uU2E7UE30icG/+sbgTT15wuBze/Hq
 BTpj7lkHfoCUshDJ+IGg5qXyYuo4DBbZGx9nmlGSCAZTO+p+gFcFFQeZxnEDvU/h0iVR
 Th+Q==
X-Gm-Message-State: AOAM533GaV61kGnGoGTqcPtmB3v+XCKCoEam/2GpM0Z6a4J1+dFX8jxI
 gmW938SCnpn0bV8BzMlMsL01qtvRoRdg4CR8s+I=
X-Google-Smtp-Source: ABdhPJyHWaV6uURhsSn77dEppvf6IL/58QKDwEfT10ywtTObf87RA9Zbd2LVs5T02SCrHGMuhdJx0KX4chS3d+eTHNI=
X-Received: by 2002:aca:1a17:: with SMTP id a23mr50294oia.120.1612454099140;
 Thu, 04 Feb 2021 07:54:59 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
 <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
 <CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com>
 <CAKMK7uETu_m+=MHyPmqBbEP__qjMF_wmr4c2BiVTPcwE8c+5Mg@mail.gmail.com>
 <CAJuCfpHC6P5cJh-1hv=vjGHCCkM6mA_p19H6tCZmCDxhTuASkQ@mail.gmail.com>
 <ced1c1be-e731-946e-e9ce-919520fe935a@amd.com>
In-Reply-To: <ced1c1be-e731-946e-e9ce-919520fe935a@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 4 Feb 2021 10:54:48 -0500
Message-ID: <CADnq5_Oi_To=9rpet=Q73FY2_-abV47XtXYVVz5TBnRyzwffng@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 Android Kernel Team <kernel-team@android.com>,
 Sandeep Patil <sspatil@google.com>, Liam Mark <lmark@codeaurora.org>,
 Minchan Kim <minchan@kernel.org>, James Jones <jajones@nvidia.com>,
 Robin Murphy <robin.murphy@arm.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Linux MM <linux-mm@kvack.org>,
 Matthew Wilcox <willy@infradead.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gVGh1LCBGZWIgNCwgMjAyMSBhdCAzOjE2IEFNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBBbSAwMy4wMi4yMSB1bSAyMjo0MSBzY2hyaWVi
IFN1cmVuIEJhZ2hkYXNhcnlhbjoKPiA+IFtTTklQXQo+ID4+PiBIb3cgbWFueSBzZW1pLXVucmVs
YXRlZCBidWZmZXIgYWNjb3VudGluZyBzY2hlbWVzIGRvZXMgZ29vZ2xlIGNvbWUgdXAgd2l0aD8K
PiA+Pj4KPiA+Pj4gV2UncmUgYXQgdGhyZWUgd2l0aCB0aGlzIG9uZS4KPiA+Pj4KPiA+Pj4gQW5k
IGFsc28gd2UgX2Nhbm5vdF8gcmVxdWlyZWQgdGhhdCBhbGwgZG1hLWJ1ZnMgYXJlIGJhY2tlZCBi
eSBzdHJ1Y3QKPiA+Pj4gcGFnZSwgc28gcmVxdWlyaW5nIHN0cnVjdCBwYWdlIHRvIG1ha2UgdGhp
cyB3b3JrIGlzIGEgbm8tZ28uCj4gPj4+Cj4gPj4+IFNlY29uZCwgd2UgZG8gbm90IHdhbnQgdG8g
YWxsIGdldF91c2VyX3BhZ2VzIGFuZCBmcmllbmRzIHRvIHdvcmsgb24KPiA+Pj4gZG1hLWJ1Ziwg
aXQgY2F1c2VzIGFsbCBraW5kcyBvZiBwYWluLiBZZXMgb24gU29DIHdoZXJlIGRtYS1idWYgYXJl
Cj4gPj4+IGV4Y2x1c2l2ZWx5IGluIHN5c3RlbSBtZW1vcnkgeW91IGNhbiBtYXliZSBnZXQgYXdh
eSB3aXRoIHRoaXMsIGJ1dAo+ID4+PiBkbWEtYnVmIGlzIHN1cHBvc2VkIHRvIHdvcmsgaW4gbW9y
ZSBwbGFjZXMgdGhhbiBqdXN0IEFuZHJvaWQgU29Dcy4KPiA+PiBJIGp1c3QgcmVhbGl6ZWQgdGhh
dCB2bV9pbnNlcl9wYWdlIGRvZXNuJ3QgZXZlbiB3b3JrIGZvciBDTUEsIGl0IHdvdWxkCj4gPj4g
dXBzZXQgZ2V0X3VzZXJfcGFnZXMgcHJldHR5IGJhZGx5IC0geW91J3JlIHRyeWluZyB0byBwaW4g
YSBwYWdlIGluCj4gPj4gWk9ORV9NT1ZFQUJMRSBidXQgeW91IGNhbid0IG1vdmUgaXQgYmVjYXVz
ZSBpdCdzIHJhdGhlciBzcGVjaWFsLgo+ID4+IFZNX1NQRUNJQUwgaXMgZXhhY3RseSBtZWFudCB0
byBjYXRjaCB0aGlzIHN0dWZmLgo+ID4gVGhhbmtzIGZvciB0aGUgaW5wdXQsIERhbmllbCEgTGV0
IG1lIHRoaW5rIGFib3V0IHRoZSBjYXNlcyB5b3UgcG9pbnRlZCBvdXQuCj4gPgo+ID4gSU1ITywg
dGhlIGlzc3VlIHdpdGggUFNTIGlzIHRoZSBkaWZmaWN1bHR5IG9mIGNhbGN1bGF0aW5nIHRoaXMg
bWV0cmljCj4gPiB3aXRob3V0IHN0cnVjdCBwYWdlIHVzYWdlLiBJIGRvbid0IHRoaW5rIHRoYXQg
cHJvYmxlbSBiZWNvbWVzIGVhc2llcgo+ID4gaWYgd2UgdXNlIGNncm91cHMgb3IgYW55IG90aGVy
IEFQSS4gSSB3YW50ZWQgdG8gZW5hYmxlIGV4aXN0aW5nIFBTUwo+ID4gY2FsY3VsYXRpb24gbWVj
aGFuaXNtcyBmb3IgdGhlIGRtYWJ1ZnMga25vd24gdG8gYmUgYmFja2VkIGJ5IHN0cnVjdAo+ID4g
cGFnZXMgKHNpbmNlIHdlIGtub3cgaG93IHRoZSBoZWFwIGFsbG9jYXRlZCB0aGF0IG1lbW9yeSks
IGJ1dCBzb3VuZHMKPiA+IGxpa2UgdGhpcyB3b3VsZCBsZWFkIHRvIHByb2JsZW1zIHRoYXQgSSBk
aWQgbm90IGNvbnNpZGVyLgo+Cj4gWWVhaCwgdXNpbmcgc3RydWN0IHBhZ2UgaW5kZWVkIHdvbid0
IHdvcmsuIFdlIGRpc2N1c3NlZCB0aGF0IG11bHRpcGxlCj4gdGltZXMgbm93IGFuZCBEYW5pZWwg
ZXZlbiBoYXMgYSBwYXRjaCB0byBtYW5nbGUgdGhlIHN0cnVjdCBwYWdlIHBvaW50ZXJzCj4gaW5z
aWRlIHRoZSBzZ190YWJsZSBvYmplY3QgdG8gcHJldmVudCBhYnVzZSBpbiB0aGF0IGRpcmVjdGlv
bi4KPgo+IE9uIHRoZSBvdGhlciBoYW5kIEkgdG90YWxseSBhZ3JlZSB0aGF0IHdlIG5lZWQgdG8g
ZG8gc29tZXRoaW5nIG9uIHRoaXMKPiBzaWRlIHdoaWNoIGdvZXMgYmV5b25nIHdoYXQgY2dyb3Vw
cyBwcm92aWRlLgo+Cj4gQSBmZXcgeWVhcnMgYWdvIEkgY2FtZSB1cCB3aXRoIHBhdGNoZXMgdG8g
aW1wcm92ZSB0aGUgT09NIGtpbGxlciB0bwo+IGluY2x1ZGUgcmVzb3VyY2VzIGJvdW5kIHRvIHRo
ZSBwcm9jZXNzZXMgdGhyb3VnaCBmaWxlIGRlc2NyaXB0b3JzLiBJCj4gdW5mb3J0dW5hdGVseSBj
YW4ndCBmaW5kIHRoZW0gb2YgaGFuZCBhbnkgbW9yZSBhbmQgSSdtIGN1cnJlbnRseSB0byBidXN5
Cj4gdG8gZGlnIHRoZW0gdXAuCgpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZl
cy9kcmktZGV2ZWwvMjAxNS1TZXB0ZW1iZXIvMDg5Nzc4Lmh0bWwKSSB0aGluayB0aGVyZSB3YXMg
YSBtb3JlIHJlY2VudCBkaXNjdXNzaW9uLCBidXQgSSBjYW4ndCBzZWVtIHRvIGZpbmQgaXQuCgpB
bGV4Cgo+Cj4gSW4gZ2VuZXJhbCBJIHRoaW5rIHdlIG5lZWQgdG8gbWFrZSBpdCBwb3NzaWJsZSB0
aGF0IGJvdGggdGhlIGluIGtlcm5lbAo+IE9PTSBraWxsZXIgYXMgd2VsbCBhcyB1c2Vyc3BhY2Ug
cHJvY2Vzc2VzIGFuZCBoYW5kbGVycyBoYXZlIGFjY2VzcyB0bwo+IHRoYXQga2luZCBvZiBkYXRh
Lgo+Cj4gVGhlIGZkaW5mbyBhcHByb2FjaCBhcyBzdWdnZXN0ZWQgaW4gdGhlIG90aGVyIHRocmVh
ZCBzb3VuZHMgbGlrZSB0aGUKPiBlYXNpZXN0IHNvbHV0aW9uIHRvIG1lLgo+Cj4gUmVnYXJkcywK
PiBDaHJpc3RpYW4uCj4KPiA+IFRoYW5rcywKPiA+IFN1cmVuLgo+ID4KPiA+Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWls
aW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
