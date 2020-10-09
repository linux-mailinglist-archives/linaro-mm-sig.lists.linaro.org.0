Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E274228885F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 14:12:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9684F664F9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 12:12:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8B3B3664FE; Fri,  9 Oct 2020 12:12:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65A186650A;
	Fri,  9 Oct 2020 12:12:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E64A664F9
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 12:12:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 87E3B6650A; Fri,  9 Oct 2020 12:12:24 +0000 (UTC)
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by lists.linaro.org (Postfix) with ESMTPS id E53B4664F9
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 12:12:22 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id y198so10308731qka.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 05:12:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CDbjI7PI2DVtcti/K71bQwrAiX/e3WO6iYhXq1xpE8k=;
 b=QPGKOXAo6MMIVU4604LzyouqIovVJuE6V0S01kvAVtORt3sUNieAIxKz0oflMmW6Y+
 us0OcNcpscQ8TnVTgYu42LBSy+wCME09AZ+sANvm75sh8ZOwJ9/y+n4k+cNC8SNH/JIk
 6L0p06ZavTgRqj9cIN4EGci0hen7M0Vk8ym55ARf9i1ER5HNOewA/wFvn9eVmx0upy4R
 hE2NuniXsYrOZoaZpg2JZpJ4ym4mYsKAfPc/MXKEkfmZkO6IVN3BLM014Jma4yfBA+6X
 x3mSXvrUkjpMSNoITgFg71o3pylJGtCWCJhzvmBpOZEQiHvgegiJJZdzz1Th/iwjVCTr
 k5jQ==
X-Gm-Message-State: AOAM53177x8Ql1IN0OSSrSFnhMThTDGIuBKiBBDFhPQci2K3aDYeoFl/
 dnbCfA1rsq0ZgwkGBovHt2gx9A==
X-Google-Smtp-Source: ABdhPJxEdEoxk4QkWTG/LbIw5wa4/oJkAIU0dpDguLktaDqFHaLdn7sPQWVl5NbgF//Vvgox/Hv3PQ==
X-Received: by 2002:a05:620a:62b:: with SMTP id
 11mr11556303qkv.229.1602245542390; 
 Fri, 09 Oct 2020 05:12:22 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id g19sm5882365qkm.64.2020.10.09.05.12.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 05:12:21 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kQrG0-001xcJ-L2; Fri, 09 Oct 2020 09:12:20 -0300
Date: Fri, 9 Oct 2020 09:12:20 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: christian.koenig@amd.com, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk, airlied@redhat.com,
 akpm@linux-foundation.org, sumit.semwal@linaro.org
Message-ID: <20201009121220.GM5177@ziepe.ca>
References: <20201008112342.9394-1-christian.koenig@amd.com>
 <20201008141211.GG438822@phenom.ffwll.local>
 <8fc28dfa-4bae-bee1-5aca-4e3c6e88b994@gmail.com>
 <20201009073900.GL438822@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009073900.GL438822@phenom.ffwll.local>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/4] mm: introduce vma_set_file function
	v2
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

T24gRnJpLCBPY3QgMDksIDIwMjAgYXQgMDk6Mzk6MDBBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBJIGp1c3Qgbm90aWNlZCB0aGlzIGhlcmUgaW4gdGhlIHBhdGNoIGJlY2F1c2UgZXZl
cnlvbmUgZWxzZSBkb2VzIG5vdCBkbwo+IHRoaXMuIEJ1dCBsb29raW5nIGF0IHRoZSBtbWFwX3Jl
Z2lvbigpIGNvZGUgaW4gbW1hcC5jIHdlIHNlZW0gdG8gaW5kZWVkCj4gaGF2ZSB0aGlzIHByb2Js
ZW0gZm9yIHRoZSBlcnJvciBwYXRoOgo+IAo+IHVubWFwX2FuZF9mcmVlX3ZtYToKPiAJdm1hLT52
bV9maWxlID0gTlVMTDsKPiAJZnB1dChmaWxlKTsKPiAKPiBOb3RlIHRoYXQgdGhlIHN1Y2Nlc3Mg
cGF0aCBkb2VzIHRoaW5ncyBjb3JyZWN0bHkgKGEgYml0IGFib3ZlKToKPiAKPiAJZmlsZSA9IHZt
YS0+dm1fZmlsZTsKPiBvdXQ6Cj4gCj4gU28gaXQgaW5kZWVkIGxvb2tzIGxpa2UgZG1hLWJ1ZiBp
cyB0aGUgb25seSBvbmUgdGhhdCBkb2VzIHRoaXMgZnVsbHkKPiBjb3JyZWN0bHkuIFNvIG1heWJl
IHdlIHNob3VsZCBkbyBhIGZvbGxvdy11cCBwYXRjaCB0byBjaGFuZ2UgdGhlCj4gbW1hcF9yZWdp
b24gZXhpdCBjb2RlIHRvIHBpY2sgdXAgd2hhdGV2ZXIgdm1hLT52bV9maWxlIHdhcyBzZXQgaW5z
dGVhZCwKPiBhbmQgZnB1dCB0aGF0PwoKR2l2ZW4gdGhhdCB0aGlzIG5ldyB2bWFfc2V0X2ZpbGUo
KSBzaG91bGQgYmUgdGhlIG9ubHkgd2F5IHRvCm1hbmlwdWxhdGUgdm1fZmlsZSBmcm9tIHRoZSBt
bWFwIG9wLCBJIHRoaW5rIHRoaXMgcmVmbGVjdHMgYSBidWcgaW4KbW0vbW1hcC5jLi4gU2hvdWxk
IGJlOgoKdW5tYXBfYW5kX2ZyZWVfdm1hOgogICAgICAgIGZwdXQodm1hLT52bV9maWxlKTsKICAg
ICAgICB2bWEtPnZtX2ZpbGUgPSBOVUxMOwoKVGhlbiBldmVyeXRoaW5nIHdvcmtzIHRoZSB3YXkg
eW91J2QgZXhwZWN0IHdpdGhvdXQgdHJpY2t5IGVycm9yCmhhbmRsaW5nCgpKYXNvbgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
