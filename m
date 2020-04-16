Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8BE1AD142
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 22:38:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E1CA66049
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 20:38:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 81C3266070; Thu, 16 Apr 2020 20:38:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB22A66050;
	Thu, 16 Apr 2020 20:37:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 491CE66038
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 20:37:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2D73166050; Thu, 16 Apr 2020 20:37:43 +0000 (UTC)
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by lists.linaro.org (Postfix) with ESMTPS id E7E5A66038
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 20:37:41 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p25so25689pfn.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 13:37:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=XptGLsb8LK835cBV0jSCf0HRG/zsBSED6dv7tPgulp4=;
 b=EnTZmkqog4U3k2Fw+4smaIWbB0Rbcw6quIvxnuXUI/3AVJPRAhLyvEy3XB+1WtdSja
 m8byYvF6evXiDXMX8aPBtDU4TlqHzBMMl8eVjIZD5Mru2hP43LzmEX8ThrBd5XiKW4Kv
 9zyaFxBQV2QRTg/4ey9KXhhOovOOqcWD/s0TBmi7FiqVsNfwWyjjukkDYGFMcHLeC4kG
 9GgGHkQXMMOJCRkYW8yFKqKlgcmk8X62E+Sh77g+0maT4S/vSoMkwFWJJGdA1ywzNumJ
 t5eL8WXbKQTmZXnTwPgFqh8PhxbPpLHC3QyucR9evCdGcsoKb0QZr9YxIEBp0ZlO/5yx
 pB7w==
X-Gm-Message-State: AGi0PuY2soUeWcat+mIg2ZLml9SdB/lrIni6n9giDHO1ttRihoxiVB4Q
 RT/SDAMKfsoyU6H1flKO07k=
X-Google-Smtp-Source: APiQypLz/G622vMAZI/1t7tx6iXdrAiprqdhsptFvPk2bcCnaQJR//IYq0Xxli2CBTatOLYd6eCB1g==
X-Received: by 2002:a63:2e03:: with SMTP id u3mr15186804pgu.121.1587069460712; 
 Thu, 16 Apr 2020 13:37:40 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id u13sm3654978pjb.45.2020.04.16.13.37.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 13:37:38 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:37:36 -0700
From: Minchan Kim <minchan@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200416203736.GB50092@google.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <20200409160826.GC247701@google.com>
 <20200409165030.GG20713@hirez.programming.kicks-ass.net>
 <20200409170813.GD247701@google.com>
 <20200410023845.GA2354@jagdpanzerIV.localdomain>
 <20200410231136.GA101325@google.com>
 <20200411072052.GA31242@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411072052.GA31242@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] [PATCH 10/28] mm: only allow page table
 mappings for built-in zsmalloc
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

SGkgQ2hyaXN0b3BoLAoKClNvcnJ5IGZvciB0aGUgbGF0ZS4KCk9uIFNhdCwgQXByIDExLCAyMDIw
IGF0IDA5OjIwOjUyQU0gKzAyMDAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IEhpIE1pbmNo
YW4sCj4gCj4gT24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMDQ6MTE6MzZQTSAtMDcwMCwgTWluY2hh
biBLaW0gd3JvdGU6Cj4gPiBJdCBkb2Vzbid0IG1lYW4gd2UgY291bGRuJ3QgdXNlIHpzbWFsbG9j
IGFzIG1vZHVsZSBhbnkgbG9uZ2VyLiBJdCBtZWFucwo+ID4gd2UgY291bGRuJ3QgdXNlIHpzbWFs
bG9jIGFzIG1vZHVsZSB3aXRoIHBndGFibGUgbWFwcGluZyB3aGNpaCB3YXMgbGl0dGxlCj4gPiBi
aXQgZmFzdGVyIG9uIG1pY3JvYmVuY2htYXJrIGluIHNvbWUgYXJjaGl0ZWN1dHJlKEhvd2V2ZXIs
IEkgdXN1YWxseSB0ZW1wZWQKPiA+IHRvIHJlbW92ZSBpdCBzaW5jZSBpdCBoYWQgc2V2ZXJhbCBw
cm9ibGVtcykuIEhvd2V2ZXIsIHdlIGNvdWxkIHN0aWxsIHVzZQo+ID4genNtYWxsb2MgYXMgbW9k
dWxlIGFzIGNvcHkgd2F5IGluc3RlYWQgb2YgcGd0YWJsZSBtYXBwaW5nLiBUaHVzLCBpZiBzb21l
b25lCj4gPiByZWFsbHkgd2FudCB0byByb2xsYmFjayB0aGUgZmVhdHVyZSwgdGhleSBzaG91bGQg
cHJvdmlkZSByZWFzb25hYmxlIHJlYXNvbgo+ID4gd2h5IGl0IGRvZXNuJ3Qgd29yayBmb3IgdGhl
bS4gIkEgbGl0dGxlIGZhc3QiIHdvdWxkbid0IGJlIGVub3VnaCB0byBleHBvcnRzCj4gPiBkZWVw
IGludGVybmFsIHRvIHRoZSBtb2R1bGUuCj4gCj4gZG8geW91IGhhdmUgYW55IGRhdGEgaG93IG11
Y2ggZmFzdGVyIGl0IGlzIG9uIGFybSAoYW5kIGRvZXMgdGhhdCBpbmNsdWRlCj4gYXJtNjQgYXMg
d2VsbCk/ICBCZXNpZGVzIHRoZSBleHBvcnRzIHdoaWNoIHdlcmUgbXkgcHJpbWUgY29uY2VybiwK
Cmh0dHBzOi8vZ2l0aHViLmNvbS9zamVubmluZy96c21hcGJlbmNoCgpJIG5lZWQgdG8gcmVjYWxs
IHRoZSBtZW1vcnkuIElJUkMsIGl0IHdhcyBhbG1vc3QgMzAlIGZhc3RlciBhdCB0aGF0IHRpbWUK
aW4gQVJNIHNvIHdhcyBub3QgdHJpdmlhbCBhdCB0aGF0IHRpbWUuIEhvd2V2ZXIsIGl0IHdhcyBz
dG9yeSBmcm9tCnNldmVyYWwgeWVhcnMgYWdvLgoKPiB6c21hbGxvYyB3aXRoIHBndGFibGUgbWFw
cGluZ3MgYWxzbyBpcyB0aGUgb25seSB1c2VyIG9mIG1hcF9rZXJuZWxfcmFuZ2UKPiBvdXRzaWRl
IG9mIHZtYWxsb2MuYywgaWYgaXQgcmVhbGx5IGlzIGFub3RoZXIgY29kZSBiYXNlIGZvciB0aW55
Cj4gaW1wcm92ZW1lbnRzIHdlIGNvdWxkIG1hcmsgbWFwX2tlcm5lbF9yYW5nZSBvciBpbiBmYWN0
IHJlbW92ZSBpdCBlbnRpcmVseQo+IGFuZCBvcGVuIGNvZGUgaXQgaW4gdGhlIHJlbWFpbmluZyBj
YWxsZXJzLgoKSSBhbHNoIGhhdmUgdGVtcGVkIHRvIHJlbW92ZSBpdC4gTGV0IG1lIGhhdmUgdGlt
ZSB0byByZXZpc3QgaXQgaW4gdGhpcwpjaGFuY2UuCgpUaGFua3MuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
