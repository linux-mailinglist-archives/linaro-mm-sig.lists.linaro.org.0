Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 465752CC69F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 20:27:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DEDB665E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 19:27:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 47CF166611; Wed,  2 Dec 2020 19:27:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48F136659B;
	Wed,  2 Dec 2020 19:26:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 85FFB617B9
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 19:26:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 76FB36659B; Wed,  2 Dec 2020 19:26:17 +0000 (UTC)
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by lists.linaro.org (Postfix) with ESMTPS id 53C19617B9
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 19:26:16 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x4so1672237pln.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Dec 2020 11:26:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=gpjxGYzLSyNarmAmbAQjfYVpd3J0HaJaIoHV/RbyoP0=;
 b=k/mQX1FNziPbn7Bgh6e6t+mQnuzYca61F5ebh3an29Q2siqxKDk8oqRAzyKs9O6TeW
 kPYVq2vCk0IeCbNkbZ25QS6EyPO7q1ZKhsWlFbheEQHRaOwJirylCcaQyowpZvM1xYaD
 VYL+t3UvzCLQOVBk982AXS2yScg1IOivsA54ijShdJVT5Ny6zXsuLNdaevyGilckio8O
 qS7d+o+cLnHx50tNBG17oe16t2mCl5vhmcbCE+Mb+Qm9m1jI9hkHE0l8PfM7PXmbODwh
 i1X+0cNV11TOSrI+lOb5WeJVlBXYrXCOshP5EvwYics8ErTSW3IrYQw44+3ehUGaH7hI
 cTNA==
X-Gm-Message-State: AOAM531d9D1JJJ/wUzZnaG8rsX8g9viWmfUxyhl5xAGi3Hk6B57dBlcD
 8SyEhM7gYrNqwJlGGESsX+w=
X-Google-Smtp-Source: ABdhPJxcdPTZ5uZMP8zvH4q1sui0DmS0RvpM84/fgaeUTS26506J8tp8Ce+fVMlFSti+TUz8UFLwqA==
X-Received: by 2002:a17:90b:4a03:: with SMTP id
 kk3mr1260133pjb.97.1606937175483; 
 Wed, 02 Dec 2020 11:26:15 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id js9sm2652626pjb.2.2020.12.02.11.26.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 11:26:14 -0800 (PST)
Date: Wed, 2 Dec 2020 11:26:11 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <X8fqU82GXmu57f7V@google.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-3-minchan@kernel.org>
 <8f006a4a-c21d-9db3-5493-fb1cc651b0cf@redhat.com>
 <20201202154915.GU17338@dhcp22.suse.cz>
 <X8e9tSwcsrEsAv1O@google.com>
 <20201202164834.GV17338@dhcp22.suse.cz>
 <X8fU1ddmsSfuV6sD@google.com>
 <20201202185107.GW17338@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202185107.GW17338@dhcp22.suse.cz>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, Brian.Starkey@arm.com,
 linux-mm <linux-mm@kvack.org>, David Hildenbrand <david@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com, john.stultz@linaro.org,
 christian.koenig@amd.com, joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, iamjoonsoo.kim@lge.com, vbabka@suse.cz,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/4] mm: introduce cma_alloc_bulk API
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

T24gV2VkLCBEZWMgMDIsIDIwMjAgYXQgMDc6NTE6MDdQTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIFdlZCAwMi0xMi0yMCAwOTo1NDoyOSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBP
biBXZWQsIERlYyAwMiwgMjAyMCBhdCAwNTo0ODozNFBNICswMTAwLCBNaWNoYWwgSG9ja28gd3Jv
dGU6Cj4gPiA+IE9uIFdlZCAwMi0xMi0yMCAwODoxNTo0OSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4g
PiA+ID4gT24gV2VkLCBEZWMgMDIsIDIwMjAgYXQgMDQ6NDk6MTVQTSArMDEwMCwgTWljaGFsIEhv
Y2tvIHdyb3RlOgo+ID4gPiBbLi4uXQo+ID4gPiA+ID4gV2VsbCwgd2hhdCBJIGNhbiBzZWUgaXMg
dGhhdCB0aGlzIG5ldyBpbnRlcmZhY2UgaXMgYW4gYW50aXBhdGVybiB0byBvdXIKPiA+ID4gPiA+
IGFsbG9jYXRpb24gcm91dGluZXMuIFdlIHRlbmQgdG8gY29udHJvbCBhbGxvY2F0aW9ucyBieSBn
ZnAgbWFzayB5ZXQgeW91Cj4gPiA+ID4gPiBhcmUgaW50cm9kdWNpbmcgYSBib29sIHBhcmFtZXRl
ciB0byBtYWtlIHNvbWV0aGluZyBmYXN0ZXIuLi4gV2hhdCB0aGF0Cj4gPiA+ID4gPiByZWFsbHkg
bWVhbnMgaXMgcmF0aGVyIGFyYml0cmFyeS4gV291bGQgaXQgbWFrZSBtb3JlIHNlbnNlIHRvIHRl
YWNoCj4gPiA+ID4gPiBjbWFfYWxsb2MgcmVzcC4gYWxsb2NfY29udGlnX3JhbmdlIHRvIHJlY29n
bml6ZSBHRlBfTk9XQUlULCBHRlBfTk9SRVRSWSByZXNwLgo+ID4gPiA+ID4gR0ZQX1JFVFJZX01B
WUZBSUwgaW5zdGVhZD8KPiA+ID4gPiAKPiA+ID4gPiBJZiB3ZSB1c2UgY21hX2FsbG9jLCB0aGF0
IGludGVyZmFjZSByZXF1aXJlcyAiYWxsb2NhdGUgb25lIGJpZyBtZW1vcnkKPiA+ID4gPiBjaHVu
ayIuIElPVywgcmV0dXJuIHZhbHVlIGlzIGp1c3Qgc3RydWN0IHBhZ2UgYW5kIGV4cGVjdGVkIHRo
YXQgdGhlIHBhZ2UKPiA+ID4gPiBpcyBhIGJpZyBjb250aWd1b3MgbWVtb3J5LiBUaGF0IG1lYW5z
IGl0IGNvdWxkbid0IGhhdmUgYSBob2xlIGluIHRoZQo+ID4gPiA+IHJhbmdlLgo+ID4gPiA+IEhv
d2V2ZXIgdGhlIGlkZWEgaGVyZSwgd2hhdCB3ZSBhc2tlZCBpcyBtdWNoIHNtYWxsZXIgY2h1bmsg
cmF0aGVyCj4gPiA+ID4gdGhhbiBhIGJpZyBjb250aWd1b3VzIG1lbW9yeSBzbyB3ZSBjb3VsZCBz
a2lwIHNvbWUgb2YgcGFnZXMgaWYgdGhleSBhcmUKPiA+ID4gPiByYW5kb21seSBwaW5uZWQobG9u
Zy10ZXJtL3Nob3J0LXRlcm0gd2hhdGV2ZXIpIGFuZCBzZWFyY2ggb3RoZXIgcGFnZXMKPiA+ID4g
PiBpbiB0aGUgQ01BIGFyZWEgdG8gYXZvaWQgbG9uZyBzdGFsbC4gVGh1cywgaXQgY291bGRuJ3Qg
d29yayB3aXRoIGV4aXNpbmcKPiA+ID4gPiBjbWFfYWxsb2MgQVBJIHdpdGggc2ltcGxlIGdmcF9t
YWsuCj4gPiA+IAo+ID4gPiBJIHJlYWxseSBkbyBub3Qgc2VlIHRoYXQgYXMgc29tZXRoaW5nIHJl
YWxseSBhbGllbnQgdG8gdGhlIGNtYV9hbGxvYwo+ID4gPiBpbnRlcmZhY2UuIEFsbCB5b3Ugc2hv
dWxkIGNhcmUgYWJvdXQsIHJlYWxseSwgaXMgd2hhdCBzaXplIG9mIHRoZSBvYmplY3QKPiA+ID4g
eW91IHdhbnQgYW5kIGhvdyBoYXJkIHRoZSBzeXN0ZW0gc2hvdWxkIHRyeS4gSWYgeW91IGhhdmUg
YSBwcm9ibGVtIHdpdGgKPiA+ID4gYW4gaW50ZXJuYWwgaW1wbGVtZW50YXRpb24gb2YgQ01BIGFu
ZCBob3cgaXQgY2hvb3NlcyBhIHJhbmdlIGFuZCBkZWFsCj4gPiA+IHdpdGggcGlubmVkIHBhZ2Vz
IHRoZW4gaXQgc2hvdWxkIGJlIGFkZHJlc3NlZCBpbnNpZGUgdGhlIENNQSBhbGxvY2F0b3IuCj4g
PiA+IEkgc3VzcGVjdCB0aGF0IHlvdSBhcmUgZWZmZWN0aXZlbGx5IHRyeWluZyB0byB3b3JrYXJv
dW5kIHRob3NlIHByb2JsZW1zCj4gPiA+IGJ5IGEgc2lkZSBpbXBsZW1lbnRhdGlvbiB3aXRoIGEg
c2xpZ2h0bHkgZGlmZmVyZW50IEFQSS4gT3IgbWF5YmUgSSBzdGlsbAo+ID4gPiBkbyBub3QgZm9s
bG93IHRoZSBhY3R1YWwgcHJvYmxlbS4KPiA+ID4gIAo+ID4gPiA+ID4gSSBhbSBub3QgZGVlcGx5
IGZhbWlsaWFyIHdpdGggdGhlIGNtYSBhbGxvY2F0b3Igc28gc29ycnkgZm9yIGEKPiA+ID4gPiA+
IHBvdGVudGlhbGx5IHN0dXBpZCBxdWVzdGlvbi4gV2h5IGRvZXMgYSBidWxrIGludGVyZmFjZSBw
ZXJmb3JtcyBiZXR0ZXIKPiA+ID4gPiA+IHRoYW4gcmVwZWF0ZWQgY2FsbHMgdG8gY21hX2FsbG9j
PyBJcyB0aGlzIGJlY2F1c2UgYSBmYWlsdXJlIHdvdWxkIGhlbHAKPiA+ID4gPiA+IHRvIG1vdmUg
b24gdG8gdGhlIG5leHQgcGZuIHJhbmdlIHdoaWxlIGEgcmVwZWF0ZWQgY2FsbCB3b3VsZCBoYXZl
IHRvCj4gPiA+ID4gPiBkZWFsIHdpdGggdGhlIHNhbWUgcmFuZ2U/Cj4gPiA+ID4gCj4gPiA+ID4g
WXViLCB0cnVlIHdpdGggb3RoZXIgb3ZlcmhlYWRzKGUuZy4sIG1pZ3JhdGlvbiByZXRyaWFsLCB3
YWl0aW5nIHdyaXRlYmFjawo+ID4gPiA+IFBDUC9MUlUgZHJhaW5pbmcgSVBJKQo+ID4gPiAKPiA+
ID4gV2h5IGNhbm5vdCB0aGlzIGJlIGltcGxlbWVudGVkIGluIHRoZSBjbWFfYWxsb2MgbGF5ZXI/
IEkgbWVhbiB5b3UgY2FuCj4gPiA+IGNhY2hlIGZhaWxlZCBjYXNlcyBhbmQgb3B0aW1pemUgdGhl
IHByb3BlciBwZm4gcmFuZ2Ugc2VhcmNoLgo+ID4gCj4gPiBTbyBkbyB5b3Ugc3VnZ2VzdCB0aGlz
Pwo+ID4gCj4gPiBlbnVtIGNtYV9hbGxvY19tb2RlIHsKPiA+IAlDTUFfQUxMT0NfTk9STUFMLAo+
ID4gCUNNQV9BTExPQ19GQUlMX0ZBU1QsCj4gPiB9Owo+ID4gCj4gPiBzdHJ1Y3QgcGFnZSAqY21h
X2FsbG9jKHN0cnVjdCBjbWEgKmNtYSwgc2l6ZV90IGNvdW50LCB1bnNpZ25lZCBpbnQKPiA+IAlh
bGlnbiwgZW51bSBjbWFfYWxsb2NfbW9kZSBtb2RlKTsKPiA+IAo+ID4gPkZyb20gbm93IG9uLCBj
bWFfYWxsb2Mgd2lsbCBrZWVwIGxhc3QgZmFpbGVkIHBmbiBhbmQgdGhlbiBzdGFydCB0bwo+ID4g
c2VhcmNoIGZyb20gdGhlIG5leHQgcGZuIGZvciBib3RoIENNQV9BTExPQ19OT1JNQUwgYW5kCj4g
PiBDTUFfQUxMT0NfRkFJTF9GQVNUIGlmIHJlcXVlc3RlZCBzaXplIGZyb20gdGhlIGNhY2hlZCBw
Zm4gaXMgb2theQo+ID4gd2l0aGluIENNQSBhcmVhIGFuZCB0aGVuIHdyYXBhcm91bmQgaXQgY291
bGRuJ3QgZmluZCByaWdodCBwYWdlcwo+ID4gZnJvbSB0aGUgY2FjaGVkIHBmbi4gT3RoZXdpc2Us
IHRoZSBjYWNoZWQgcGZuIHdpbGwgcmVzZXQgdG8gdGhlIHplcm8KPiA+IHNvIHRoYXQgaXQgc3Rh
cnRzIHRoZSBzZWFyY2ggZnJvbSB0aGUgMC4gSSBsaWtlIHRoZSBpZGVhIHNpbmNlIGl0J3MKPiA+
IGdlbmVyYWwgaW1wcm92ZW1lbnQsIEkgdGhpbmsuCj4gCj4gWWVzIHNvbWV0aGluZyBsaWtlIHRo
YXQuIFRoZXJlIGFyZSBtb3JlIG9wdGlvbnMgdG8gYmUgY2xldmVyIGhlcmUgLSBlLmcuCj4gdHJh
Y2sgcmFuZ2VzIGV0Yy4gYnV0IEkgYW0gbm90IHN1cmUgdGhpcyBpcyB3b3J0aCB0aGUgY29tcGxl
eGl0eS4KCkFncmVlLiBKdXN0IGxhc3QgcGZuIGNhY2hpbmcgd291bGQgYmUgZ29vZCBlbm91Z2gg
YXMgc2ltcGxlIHN0YXJ0LgoKPiAKPiA+IEZ1cnRoZW1vcmUsIFdpdGggQ01BX0FMTE9DX0ZBSUxf
RkFTVCwgaXQgY291bGQgYXZvaWQgc2V2ZXJhbCBvdmVyaGVhZHMKPiA+IGF0IHRoZSBjb3N0IG9m
IHNhY3JpZmljaW5nIGFsbG9jYXRpb24gc3VjY2VzcyByYXRpbyBsaWtlIEdGUF9OT1JFVFJZLgo+
IAo+IEkgYW0gc3RpbGwgbm90IHN1cmUgYSBzcGVjaWZpYyBmbGFnIGlzIGEgZ29vZCBpbnRlcmZh
Y2UuIFJlYWxseSBjYW4gdGhpcwo+IGJlIGdmcF9tYXNrIGluc3RlYWQ/CgpJIGFtIG5vdCBzdHJv
bmcoZXZlbiwgSSBkaWQgaXQgd2l0aCBHRlBfTk9SRVRSWSkgYnV0IERhdmlkIHdhbnRlZCB0bwpo
YXZlIHNwZWNpYWwgbW9kZSBhbmQgSSBhZ3JlZWQgd2hlbiBoZSBtZW50aW9uZWQgQUxMT0NfQ09O
VElHX0hBUkQgYXMKb25lIG9mIG9wdGlvbnMgaW4gZnV0dXJlKGl0IHdvdWxkIGJlIGhhcmQgdG8g
aW5kaWNhdGUgdGhhdCBtb2RlIHdpdGgKZ2ZwIGZsYWdzKS4KCj4gCj4gPiBJIHRoaW5rIHRoYXQg
d291bGQgc29sdmUgdGhlIGlzc3VlIHdpdGggbWFraW5nIHRoZSBBUEkgbW9yZSBmbGV4aWJsZS4K
PiA+IEJlZm9yZSBkaXZpbmcgaW50byBpdCwgSSdkIGxpa2UgdG8gY29uZmlybSB3ZSBhcmUgb24g
c2FtZSBwYWdlLgo+ID4gUGxlYXNlIGNvcnJlY3QgbWUgaWYgSSBtaXN1bmRlcnN0b29kLgo+IAo+
IEkgYW0gbm90IHN1cmUgeW91IGFyZSBzdGlsbCB0aGlua2luZyBhYm91dCBhIGJ1bGsgaW50ZXJm
YWNlLgoKTm8gSSBhbSB0aGlua2luZyBvZiBqdXN0IHVzaW5nIGNtYV9hbGxvYyBBUEkgd2l0aCBj
YWNoZWQgcGZuCmFzIGludGVyYWwgaW1wcm92ZW1lbnQgYW5kIGFkZGluZyBuZXcgZmFzdCBmYWls
IG1vZGUgdG8gdGhlIEFQSQpzbyBkcml2ZXIgY291bGQgY2FsbCB0aGUgQVBJIHJlcGVhdGVkbHkg
dW50aWwgdGhlbiBjYW4gZ2V0IGVub3VnaApwYWdlcy4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
