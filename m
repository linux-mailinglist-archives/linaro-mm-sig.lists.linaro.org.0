Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0B9302BAC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jan 2021 20:34:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B117A6672A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jan 2021 19:34:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9F2B866757; Mon, 25 Jan 2021 19:34:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B847665E4;
	Mon, 25 Jan 2021 19:33:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 65509665D5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jan 2021 19:33:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 57115665E4; Mon, 25 Jan 2021 19:33:42 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by lists.linaro.org (Postfix) with ESMTPS id 29FBA665D5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jan 2021 19:33:41 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id gx1so261134pjb.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jan 2021 11:33:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=YmWxybprGkUlor/mN/GWW2ybyHD5q29LT4+P3EdRmnA=;
 b=LqpzZqRLocTaGOQJdx10OrksnOz5y/xEUOF2g6ealZEQxP5FT42FkvNmgXvqkH52+a
 ppR3xuqZeihm9q8kTjAdD5WnxhfaInDU7Q1WC/L64nRdTg5zyQ6RRKDClCs3d46aEopU
 DpH3H3dzMhb8aAHiHxGbcNswwP6rmCzjWCyr5bV84GFktB2SMsMH0zwN+L25adgqagiW
 flZ/XO05nZwEFFylHSkZsIIe2xjWxVQE9ziJIDXWkGN7IWkPND73AgvKVM5pIKQ2Snla
 ohovGWO52seJ+IMJJ74W+NtF4cBCGP3WIrj/b1wNst9bnmfMdVLSz8hofURKOIsYQ32/
 b68w==
X-Gm-Message-State: AOAM533f4gXaJQwZVoGQLw5hj7ae9OTPbQsZELl8cH8UqULgqIurY56p
 VPtRv/PJqlZ5XYqQTHBxvt0=
X-Google-Smtp-Source: ABdhPJzWAbofIoJoeR7THVK7Sebi8NYFmGlVyxvi0QBQ4bvwgYBN/qHKMW2JhCbBaw0rqz/r5kDC9g==
X-Received: by 2002:a17:90a:be10:: with SMTP id
 a16mr1817662pjs.78.1611603220402; 
 Mon, 25 Jan 2021 11:33:40 -0800 (PST)
Received: from google.com ([2620:15c:211:201:e8b4:4688:79de:94f3])
 by smtp.gmail.com with ESMTPSA id w19sm17535415pgf.23.2021.01.25.11.33.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jan 2021 11:33:38 -0800 (PST)
Date: Mon, 25 Jan 2021 11:33:36 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <YA8dEFSrHBb9muFr@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-3-minchan@kernel.org>
 <20210125131200.GG827@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125131200.GG827@dhcp22.suse.cz>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 2/4] mm: failfast mode with
 __GFP_NORETRY in alloc_contig_range
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

T24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMDI6MTI6MDBQTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIFRodSAyMS0wMS0yMSAwOTo1NTowMCwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBD
b250aWd1b3VzIG1lbW9yeSBhbGxvY2F0aW9uIGNhbiBiZSBzdGFsbGVkIGR1ZSB0byB3YWl0aW5n
Cj4gPiBvbiBwYWdlIHdyaXRlYmFjayBhbmQvb3IgcGFnZSBsb2NrIHdoaWNoIGNhdXNlcyB1bnBy
ZWRpY3RhYmxlCj4gPiBkZWxheS4gSXQncyBhIHVuYXZvaWRhYmxlIGNvc3QgZm9yIHRoZSByZXF1
ZXN0b3IgdG8gZ2V0ICpiaWcqCj4gPiBjb250aWd1b3VzIG1lbW9yeSBidXQgaXQncyBleHBlbnNp
dmUgZm9yICpzbWFsbCogY29udGlndW91cwo+ID4gbWVtb3J5KGUuZy4sIG9yZGVyLTQpIGJlY2F1
c2UgY2FsbGVyIGNvdWxkIHJldHJ5IHRoZSByZXF1ZXN0Cj4gPiBpbiBkaWZmZXJlbnQgcmFuZ2Ug
d2hlcmUgd291bGQgaGF2ZSBlYXN5IG1pZ3JhdGFibGUgcGFnZXMKPiA+IHdpdGhvdXQgc3RhbGxp
bmcuCj4gPiAKPiA+IFRoaXMgcGF0Y2ggaW50cm9kdWNlIF9fR0ZQX05PUkVUUlkgYXMgY29tcGFj
dGlvbiBnZnBfbWFzayBpbgo+ID4gYWxsb2NfY29udGlnX3JhbmdlIHNvIGl0IHdpbGwgZmFpbCBm
YXN0IHdpdGhvdXQgYmxvY2tpbmcKPiA+IHdoZW4gaXQgZW5jb3VudGVycyBwYWdlcyBuZWVkZWQg
d2FpdGluZy4KPiAKPiBJIGFtIG5vdCBhZ2FpbnN0IGNvbnRyb2xpbmcgaG93IGhhcmQgdGhpcyBh
bGxvY2F0b3IgdHJpZXMgd2l0aCBnZnAgbWFzawo+IGJ1dCB0aGlzIGNoYW5nZWxvZyBpcyByYXRo
ZXIgdm9pZCBvbiBhbnkgZGF0YSBhbmQgYW55IHVzZXIuCj4gCj4gSXQgaXMgYWxzbyByYXRoZXIg
ZHViaW91cyB0byBoYXZlIHJldHJpZXMgd2hlbiB0aGVuIGNhbGxlciBzYXlzIHRvIG5vdAo+IHJl
dHJ5LgoKU2luY2UgbWF4X3RyaWVzIGlzIDEgd2l0aCArK3RyaWVzLCBpdCBzaG91bGRuJ3QgcmV0
cnkuCgo+IAo+IEFsc28gd2h5IGRpZG4ndCB5b3UgY29uc2lkZXIgR0ZQX05PV0FJVCBzZW1hbnRp
YyBmb3Igbm9uIGJsb2NraW5nIG1vZGU/CgpHRlBfTk9XQUlUIHNlZW1zIHRvIGJlIGxvdyhzcGVj
aWZpYykgZmxhZ3MgcmF0aGVyIHRoYW4gdGhlIG9uZSBJIHdhbnQgdG8KZXhwcmVzcy4gRXZlbiB0
aG91Z2ggSSBzYWlkIG9ubHkgcGFnZSB3cml0ZWJhY2svbG9jayBpbiB0aGUgZGVzY3JpcHRpb24s
CnRoZSBnb2FsIGlzIHRvIGF2b2lkIGNvc3RseSBvcGVyYXRpb25zIHdlIG1pZ2h0IGZpbmQgbGF0
ZXIgc28gc3VjaAoiZmFpbGZhc3QiLCBJIHRob3VnaHQgR0ZQX05PUkVUUlkgd291bGQgYmUgZ29v
ZCBmaXQuCgo+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVs
Lm9yZz4KPiA+IC0tLQo+ID4gIG1tL3BhZ2VfYWxsb2MuYyB8IDggKysrKysrLS0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvbW0vcGFnZV9hbGxvYy5jIGIvbW0vcGFnZV9hbGxvYy5jCj4gPiBpbmRleCBiMDMx
YTVhZTBiZDUuLjFjZGMzZWUwYjIyZSAxMDA2NDQKPiA+IC0tLSBhL21tL3BhZ2VfYWxsb2MuYwo+
ID4gKysrIGIvbW0vcGFnZV9hbGxvYy5jCj4gPiBAQCAtODQ5MSwxMiArODQ5MSwxNiBAQCBzdGF0
aWMgaW50IF9fYWxsb2NfY29udGlnX21pZ3JhdGVfcmFuZ2Uoc3RydWN0IGNvbXBhY3RfY29udHJv
bCAqY2MsCj4gPiAgCXVuc2lnbmVkIGludCBucl9yZWNsYWltZWQ7Cj4gPiAgCXVuc2lnbmVkIGxv
bmcgcGZuID0gc3RhcnQ7Cj4gPiAgCXVuc2lnbmVkIGludCB0cmllcyA9IDA7Cj4gPiArCXVuc2ln
bmVkIGludCBtYXhfdHJpZXMgPSA1Owo+ID4gIAlpbnQgcmV0ID0gMDsKPiA+ICAJc3RydWN0IG1p
Z3JhdGlvbl90YXJnZXRfY29udHJvbCBtdGMgPSB7Cj4gPiAgCQkubmlkID0gem9uZV90b19uaWQo
Y2MtPnpvbmUpLAo+ID4gIAkJLmdmcF9tYXNrID0gR0ZQX1VTRVIgfCBfX0dGUF9NT1ZBQkxFIHwg
X19HRlBfUkVUUllfTUFZRkFJTCwKPiA+ICAJfTsKPiA+ICAKPiA+ICsJaWYgKGNjLT5hbGxvY19j
b250aWcgJiYgY2MtPm1vZGUgPT0gTUlHUkFURV9BU1lOQykKPiA+ICsJCW1heF90cmllcyA9IDE7
Cj4gPiArCj4gPiAgCW1pZ3JhdGVfcHJlcCgpOwo+ID4gIAo+ID4gIAl3aGlsZSAocGZuIDwgZW5k
IHx8ICFsaXN0X2VtcHR5KCZjYy0+bWlncmF0ZXBhZ2VzKSkgewo+ID4gQEAgLTg1MTMsNyArODUx
Nyw3IEBAIHN0YXRpYyBpbnQgX19hbGxvY19jb250aWdfbWlncmF0ZV9yYW5nZShzdHJ1Y3QgY29t
cGFjdF9jb250cm9sICpjYywKPiA+ICAJCQkJYnJlYWs7Cj4gPiAgCQkJfQo+ID4gIAkJCXRyaWVz
ID0gMDsKPiA+IC0JCX0gZWxzZSBpZiAoKyt0cmllcyA9PSA1KSB7Cj4gPiArCQl9IGVsc2UgaWYg
KCsrdHJpZXMgPT0gbWF4X3RyaWVzKSB7Cj4gPiAgCQkJcmV0ID0gcmV0IDwgMCA/IHJldCA6IC1F
QlVTWTsKPiA+ICAJCQlicmVhazsKPiA+ICAJCX0KPiA+IEBAIC04NTY0LDcgKzg1NjgsNyBAQCBp
bnQgYWxsb2NfY29udGlnX3JhbmdlKHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVkIGxvbmcg
ZW5kLAo+ID4gIAkJLm5yX21pZ3JhdGVwYWdlcyA9IDAsCj4gPiAgCQkub3JkZXIgPSAtMSwKPiA+
ICAJCS56b25lID0gcGFnZV96b25lKHBmbl90b19wYWdlKHN0YXJ0KSksCj4gPiAtCQkubW9kZSA9
IE1JR1JBVEVfU1lOQywKPiA+ICsJCS5tb2RlID0gZ2ZwX21hc2sgJiBfX0dGUF9OT1JFVFJZID8g
TUlHUkFURV9BU1lOQyA6IE1JR1JBVEVfU1lOQywKPiA+ICAJCS5pZ25vcmVfc2tpcF9oaW50ID0g
dHJ1ZSwKPiA+ICAJCS5ub19zZXRfc2tpcF9oaW50ID0gdHJ1ZSwKPiA+ICAJCS5nZnBfbWFzayA9
IGN1cnJlbnRfZ2ZwX2NvbnRleHQoZ2ZwX21hc2spLAo+ID4gLS0gCj4gPiAyLjMwLjAuMjk2Lmcy
YmZiMWM0NmQ4LWdvb2cKPiAKPiAtLSAKPiBNaWNoYWwgSG9ja28KPiBTVVNFIExhYnMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
