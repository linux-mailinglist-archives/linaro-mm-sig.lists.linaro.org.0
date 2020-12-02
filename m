Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3035D2CC841
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 21:49:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56EDF60639
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 20:49:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 434BD617B9; Wed,  2 Dec 2020 20:49:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F284B6659B;
	Wed,  2 Dec 2020 20:48:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8EA7C60639
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 20:48:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6E8ED6659B; Wed,  2 Dec 2020 20:48:38 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by lists.linaro.org (Postfix) with ESMTPS id C88D660639
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 20:48:36 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w4so1822479pgg.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Dec 2020 12:48:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=gt9hzYCtNcO6pucg1V+gBSIqdKsij7u0OWJUlXP9DKM=;
 b=rGo93htZN89MuEd/8L6hlgpZGMNBbvdryboohr/5RqFMouxU9MahjM/MHPOQ32bKbW
 QscNGVwPDnVsUQN1VLA/mYTqxJ+qmGYq896GmcbH/SKfna6nGm+eWMiJmJfGgT23QW6M
 mwPGros1iYXXyYjXZGqh8u7L1Uaqz917A/wyUWGmG63I5dghAOu/tOOWJ9Ye3ixggntR
 Xq7HCYw5H1odHc9mw+zp6m0gX1Vv66zi+TnaK+l4BvTz9S81KMrjx2gGo7ReQd/ybZaU
 w8d+BwhXkRkWIWz2AAsKa9oAWv2Ji2+JLPRL/4vOU+7h8X+SMV3wMJitniVXZiEScjyc
 LxVg==
X-Gm-Message-State: AOAM5327CHP0euwPUfU/0PQbVWfoqWl9HgnY3QElqLRB+3Ye6itA9Mkl
 vp2476WBQE40nURY4f15EQc=
X-Google-Smtp-Source: ABdhPJywHlNLOdog4uLjnoWm03XM8rSAaJFIonYnd/FuiTebzFhIhD5EPwsZYD1rNwjeMIO4SbWUFg==
X-Received: by 2002:aa7:8297:0:b029:198:15b2:ed0a with SMTP id
 s23-20020aa782970000b029019815b2ed0amr4307591pfm.47.1606942115908; 
 Wed, 02 Dec 2020 12:48:35 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id g85sm8386pfb.4.2020.12.02.12.48.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 12:48:34 -0800 (PST)
Date: Wed, 2 Dec 2020 12:48:31 -0800
From: Minchan Kim <minchan@kernel.org>
To: David Hildenbrand <david@redhat.com>
Message-ID: <X8f9nxqYcD8u8dtl@google.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-3-minchan@kernel.org>
 <8f006a4a-c21d-9db3-5493-fb1cc651b0cf@redhat.com>
 <20201202154915.GU17338@dhcp22.suse.cz>
 <X8e9tSwcsrEsAv1O@google.com>
 <20201202164834.GV17338@dhcp22.suse.cz>
 <X8fU1ddmsSfuV6sD@google.com>
 <20201202185107.GW17338@dhcp22.suse.cz>
 <X8fqU82GXmu57f7V@google.com>
 <f0e980cb-cc74-82e8-6ccf-09030a96103a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0e980cb-cc74-82e8-6ccf-09030a96103a@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-media@vger.kernel.org, hyesoo.yu@samsung.com,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 linaro-mm-sig@lists.linaro.org, linux-mm <linux-mm@kvack.org>,
 john.stultz@linaro.org, christian.koenig@amd.com, joaodias@google.com,
 hridya@google.com, Andrew Morton <akpm@linux-foundation.org>,
 pullip.cho@samsung.com, surenb@google.com, iamjoonsoo.kim@lge.com,
 vbabka@suse.cz, Brian.Starkey@arm.com
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

T24gV2VkLCBEZWMgMDIsIDIwMjAgYXQgMDk6MjI6MzZQTSArMDEwMCwgRGF2aWQgSGlsZGVuYnJh
bmQgd3JvdGU6Cj4gT24gMDIuMTIuMjAgMjA6MjYsIE1pbmNoYW4gS2ltIHdyb3RlOgo+ID4gT24g
V2VkLCBEZWMgMDIsIDIwMjAgYXQgMDc6NTE6MDdQTSArMDEwMCwgTWljaGFsIEhvY2tvIHdyb3Rl
Ogo+ID4+IE9uIFdlZCAwMi0xMi0yMCAwOTo1NDoyOSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPj4+
IE9uIFdlZCwgRGVjIDAyLCAyMDIwIGF0IDA1OjQ4OjM0UE0gKzAxMDAsIE1pY2hhbCBIb2NrbyB3
cm90ZToKPiA+Pj4+IE9uIFdlZCAwMi0xMi0yMCAwODoxNTo0OSwgTWluY2hhbiBLaW0gd3JvdGU6
Cj4gPj4+Pj4gT24gV2VkLCBEZWMgMDIsIDIwMjAgYXQgMDQ6NDk6MTVQTSArMDEwMCwgTWljaGFs
IEhvY2tvIHdyb3RlOgo+ID4+Pj4gWy4uLl0KPiA+Pj4+Pj4gV2VsbCwgd2hhdCBJIGNhbiBzZWUg
aXMgdGhhdCB0aGlzIG5ldyBpbnRlcmZhY2UgaXMgYW4gYW50aXBhdGVybiB0byBvdXIKPiA+Pj4+
Pj4gYWxsb2NhdGlvbiByb3V0aW5lcy4gV2UgdGVuZCB0byBjb250cm9sIGFsbG9jYXRpb25zIGJ5
IGdmcCBtYXNrIHlldCB5b3UKPiA+Pj4+Pj4gYXJlIGludHJvZHVjaW5nIGEgYm9vbCBwYXJhbWV0
ZXIgdG8gbWFrZSBzb21ldGhpbmcgZmFzdGVyLi4uIFdoYXQgdGhhdAo+ID4+Pj4+PiByZWFsbHkg
bWVhbnMgaXMgcmF0aGVyIGFyYml0cmFyeS4gV291bGQgaXQgbWFrZSBtb3JlIHNlbnNlIHRvIHRl
YWNoCj4gPj4+Pj4+IGNtYV9hbGxvYyByZXNwLiBhbGxvY19jb250aWdfcmFuZ2UgdG8gcmVjb2du
aXplIEdGUF9OT1dBSVQsIEdGUF9OT1JFVFJZIHJlc3AuCj4gPj4+Pj4+IEdGUF9SRVRSWV9NQVlG
QUlMIGluc3RlYWQ/Cj4gPj4+Pj4KPiA+Pj4+PiBJZiB3ZSB1c2UgY21hX2FsbG9jLCB0aGF0IGlu
dGVyZmFjZSByZXF1aXJlcyAiYWxsb2NhdGUgb25lIGJpZyBtZW1vcnkKPiA+Pj4+PiBjaHVuayIu
IElPVywgcmV0dXJuIHZhbHVlIGlzIGp1c3Qgc3RydWN0IHBhZ2UgYW5kIGV4cGVjdGVkIHRoYXQg
dGhlIHBhZ2UKPiA+Pj4+PiBpcyBhIGJpZyBjb250aWd1b3MgbWVtb3J5LiBUaGF0IG1lYW5zIGl0
IGNvdWxkbid0IGhhdmUgYSBob2xlIGluIHRoZQo+ID4+Pj4+IHJhbmdlLgo+ID4+Pj4+IEhvd2V2
ZXIgdGhlIGlkZWEgaGVyZSwgd2hhdCB3ZSBhc2tlZCBpcyBtdWNoIHNtYWxsZXIgY2h1bmsgcmF0
aGVyCj4gPj4+Pj4gdGhhbiBhIGJpZyBjb250aWd1b3VzIG1lbW9yeSBzbyB3ZSBjb3VsZCBza2lw
IHNvbWUgb2YgcGFnZXMgaWYgdGhleSBhcmUKPiA+Pj4+PiByYW5kb21seSBwaW5uZWQobG9uZy10
ZXJtL3Nob3J0LXRlcm0gd2hhdGV2ZXIpIGFuZCBzZWFyY2ggb3RoZXIgcGFnZXMKPiA+Pj4+PiBp
biB0aGUgQ01BIGFyZWEgdG8gYXZvaWQgbG9uZyBzdGFsbC4gVGh1cywgaXQgY291bGRuJ3Qgd29y
ayB3aXRoIGV4aXNpbmcKPiA+Pj4+PiBjbWFfYWxsb2MgQVBJIHdpdGggc2ltcGxlIGdmcF9tYWsu
Cj4gPj4+Pgo+ID4+Pj4gSSByZWFsbHkgZG8gbm90IHNlZSB0aGF0IGFzIHNvbWV0aGluZyByZWFs
bHkgYWxpZW50IHRvIHRoZSBjbWFfYWxsb2MKPiA+Pj4+IGludGVyZmFjZS4gQWxsIHlvdSBzaG91
bGQgY2FyZSBhYm91dCwgcmVhbGx5LCBpcyB3aGF0IHNpemUgb2YgdGhlIG9iamVjdAo+ID4+Pj4g
eW91IHdhbnQgYW5kIGhvdyBoYXJkIHRoZSBzeXN0ZW0gc2hvdWxkIHRyeS4gSWYgeW91IGhhdmUg
YSBwcm9ibGVtIHdpdGgKPiA+Pj4+IGFuIGludGVybmFsIGltcGxlbWVudGF0aW9uIG9mIENNQSBh
bmQgaG93IGl0IGNob29zZXMgYSByYW5nZSBhbmQgZGVhbAo+ID4+Pj4gd2l0aCBwaW5uZWQgcGFn
ZXMgdGhlbiBpdCBzaG91bGQgYmUgYWRkcmVzc2VkIGluc2lkZSB0aGUgQ01BIGFsbG9jYXRvci4K
PiA+Pj4+IEkgc3VzcGVjdCB0aGF0IHlvdSBhcmUgZWZmZWN0aXZlbGx5IHRyeWluZyB0byB3b3Jr
YXJvdW5kIHRob3NlIHByb2JsZW1zCj4gPj4+PiBieSBhIHNpZGUgaW1wbGVtZW50YXRpb24gd2l0
aCBhIHNsaWdodGx5IGRpZmZlcmVudCBBUEkuIE9yIG1heWJlIEkgc3RpbGwKPiA+Pj4+IGRvIG5v
dCBmb2xsb3cgdGhlIGFjdHVhbCBwcm9ibGVtLgo+ID4+Pj4gIAo+ID4+Pj4+PiBJIGFtIG5vdCBk
ZWVwbHkgZmFtaWxpYXIgd2l0aCB0aGUgY21hIGFsbG9jYXRvciBzbyBzb3JyeSBmb3IgYQo+ID4+
Pj4+PiBwb3RlbnRpYWxseSBzdHVwaWQgcXVlc3Rpb24uIFdoeSBkb2VzIGEgYnVsayBpbnRlcmZh
Y2UgcGVyZm9ybXMgYmV0dGVyCj4gPj4+Pj4+IHRoYW4gcmVwZWF0ZWQgY2FsbHMgdG8gY21hX2Fs
bG9jPyBJcyB0aGlzIGJlY2F1c2UgYSBmYWlsdXJlIHdvdWxkIGhlbHAKPiA+Pj4+Pj4gdG8gbW92
ZSBvbiB0byB0aGUgbmV4dCBwZm4gcmFuZ2Ugd2hpbGUgYSByZXBlYXRlZCBjYWxsIHdvdWxkIGhh
dmUgdG8KPiA+Pj4+Pj4gZGVhbCB3aXRoIHRoZSBzYW1lIHJhbmdlPwo+ID4+Pj4+Cj4gPj4+Pj4g
WXViLCB0cnVlIHdpdGggb3RoZXIgb3ZlcmhlYWRzKGUuZy4sIG1pZ3JhdGlvbiByZXRyaWFsLCB3
YWl0aW5nIHdyaXRlYmFjawo+ID4+Pj4+IFBDUC9MUlUgZHJhaW5pbmcgSVBJKQo+ID4+Pj4KPiA+
Pj4+IFdoeSBjYW5ub3QgdGhpcyBiZSBpbXBsZW1lbnRlZCBpbiB0aGUgY21hX2FsbG9jIGxheWVy
PyBJIG1lYW4geW91IGNhbgo+ID4+Pj4gY2FjaGUgZmFpbGVkIGNhc2VzIGFuZCBvcHRpbWl6ZSB0
aGUgcHJvcGVyIHBmbiByYW5nZSBzZWFyY2guCj4gPj4+Cj4gPj4+IFNvIGRvIHlvdSBzdWdnZXN0
IHRoaXM/Cj4gPj4+Cj4gPj4+IGVudW0gY21hX2FsbG9jX21vZGUgewo+ID4+PiAJQ01BX0FMTE9D
X05PUk1BTCwKPiA+Pj4gCUNNQV9BTExPQ19GQUlMX0ZBU1QsCj4gPj4+IH07Cj4gPj4+Cj4gPj4+
IHN0cnVjdCBwYWdlICpjbWFfYWxsb2Moc3RydWN0IGNtYSAqY21hLCBzaXplX3QgY291bnQsIHVu
c2lnbmVkIGludAo+ID4+PiAJYWxpZ24sIGVudW0gY21hX2FsbG9jX21vZGUgbW9kZSk7Cj4gPj4+
Cj4gPj4+ID5Gcm9tIG5vdyBvbiwgY21hX2FsbG9jIHdpbGwga2VlcCBsYXN0IGZhaWxlZCBwZm4g
YW5kIHRoZW4gc3RhcnQgdG8KPiA+Pj4gc2VhcmNoIGZyb20gdGhlIG5leHQgcGZuIGZvciBib3Ro
IENNQV9BTExPQ19OT1JNQUwgYW5kCj4gPj4+IENNQV9BTExPQ19GQUlMX0ZBU1QgaWYgcmVxdWVz
dGVkIHNpemUgZnJvbSB0aGUgY2FjaGVkIHBmbiBpcyBva2F5Cj4gPj4+IHdpdGhpbiBDTUEgYXJl
YSBhbmQgdGhlbiB3cmFwYXJvdW5kIGl0IGNvdWxkbid0IGZpbmQgcmlnaHQgcGFnZXMKPiA+Pj4g
ZnJvbSB0aGUgY2FjaGVkIHBmbi4gT3RoZXdpc2UsIHRoZSBjYWNoZWQgcGZuIHdpbGwgcmVzZXQg
dG8gdGhlIHplcm8KPiA+Pj4gc28gdGhhdCBpdCBzdGFydHMgdGhlIHNlYXJjaCBmcm9tIHRoZSAw
LiBJIGxpa2UgdGhlIGlkZWEgc2luY2UgaXQncwo+ID4+PiBnZW5lcmFsIGltcHJvdmVtZW50LCBJ
IHRoaW5rLgo+ID4+Cj4gPj4gWWVzIHNvbWV0aGluZyBsaWtlIHRoYXQuIFRoZXJlIGFyZSBtb3Jl
IG9wdGlvbnMgdG8gYmUgY2xldmVyIGhlcmUgLSBlLmcuCj4gPj4gdHJhY2sgcmFuZ2VzIGV0Yy4g
YnV0IEkgYW0gbm90IHN1cmUgdGhpcyBpcyB3b3J0aCB0aGUgY29tcGxleGl0eS4KPiA+IAo+ID4g
QWdyZWUuIEp1c3QgbGFzdCBwZm4gY2FjaGluZyB3b3VsZCBiZSBnb29kIGVub3VnaCBhcyBzaW1w
bGUgc3RhcnQuCj4gPiAKPiA+Pgo+ID4+PiBGdXJ0aGVtb3JlLCBXaXRoIENNQV9BTExPQ19GQUlM
X0ZBU1QsIGl0IGNvdWxkIGF2b2lkIHNldmVyYWwgb3ZlcmhlYWRzCj4gPj4+IGF0IHRoZSBjb3N0
IG9mIHNhY3JpZmljaW5nIGFsbG9jYXRpb24gc3VjY2VzcyByYXRpbyBsaWtlIEdGUF9OT1JFVFJZ
Lgo+ID4+Cj4gPj4gSSBhbSBzdGlsbCBub3Qgc3VyZSBhIHNwZWNpZmljIGZsYWcgaXMgYSBnb29k
IGludGVyZmFjZS4gUmVhbGx5IGNhbiB0aGlzCj4gPj4gYmUgZ2ZwX21hc2sgaW5zdGVhZD8KPiA+
IAo+ID4gSSBhbSBub3Qgc3Ryb25nKGV2ZW4sIEkgZGlkIGl0IHdpdGggR0ZQX05PUkVUUlkpIGJ1
dCBEYXZpZCB3YW50ZWQgdG8KPiA+IGhhdmUgc3BlY2lhbCBtb2RlIGFuZCBJIGFncmVlZCB3aGVu
IGhlIG1lbnRpb25lZCBBTExPQ19DT05USUdfSEFSRCBhcwo+ID4gb25lIG9mIG9wdGlvbnMgaW4g
ZnV0dXJlKGl0IHdvdWxkIGJlIGhhcmQgdG8gaW5kaWNhdGUgdGhhdCBtb2RlIHdpdGgKPiA+IGdm
cCBmbGFncykuCj4gCj4gSSBjYW4ndCB0ZWxsIHJlZ2FyZGluZyB0aGUgQ01BIGludGVyZmFjZSwg
YnV0IGZvciB0aGUgYWxsb2NfY29udGlnKCkKPiBpbnRlcmZhY2UgSSB0aGluayBtb2RlcyBtYWtl
IHNlbnNlLiBZZXMsIGl0J3MgZGlmZmVyZW50IHRvIG90aGVyCj4gYWxsb2NhdGVycywgYnV0IHRo
ZSBjb250aWcgcmFuZ2UgYWxsb2NhdGVyIGlzIGRpZmZlcmVudCBhbHJlYWR5LiBFLmcuLAo+IHRo
ZSBDTUEgYWxsb2NhdGVyIG1vc3RseSBoaWRlcyAid2hpY2ggZXhhY3QgUEZOcyB5b3UgdHJ5IHRv
IGFsbG9jYXRlIi4KPiAKPiBJbiB0aGUgY29udGlnIHJhbmdlIGFsbG9jYXRlciwgZ2ZwIGZsYWdz
IGFyZSBjdXJyZW50bHkgdXNlZCB0byBleHByZXNzCj4gaG93IHRvIGFsbG9jYXRlIHBhZ2VzIHVz
ZWQgYXMgbWlncmF0aW9uIHRhcmdldHMuIEkgZG9uJ3QgdGhpbmsgbWFuZ2xpbmcKPiBpbiBvdGhl
ciBnZnAgZmxhZ3MgKG9yIGV2ZW4gb3ZlcmxvYWRpbmcgdGhlbSkgbWFrZXMgdGhpbmdzIGEgbG90
Cj4gY2xlYXJlci4gRS5nLiwgR0ZQX05PUkVUUlk6IGRvbid0IHJldHJ5IHRvIGFsbG9jYXRlIG1p
Z3JhdGlvbiB0YXJnZXRzPwo+IGRvbid0IHJldHJ5IHRvIG1pZ3JhdGUgcGFnZXM/IGJvdGg/Cj4g
Cj4gQXMgSSBzYWlkLCBvdGhlciBhc3BlY3RzIG1pZ2h0IGJlIGhhcmRlciB0byBtb2RlbCAoZS5n
LiwgZG9uJ3QgZHJhaW4KPiBMUlUpIGFuZCBoaWRpbmcgdGhlbSBiZWhpbmQgZ2VuZXJpYyBnZnAg
ZmxhZ3MgKGUuZy4sIEdGUF9OT1JFVFJZKSBmZWVscwo+IHdyb25nLgoKSSBhbHNvIHN1cHBvcnQg
YSBzcGVjaWFsIGZsYWcvYm9vbCB2YXJpYWJsZSBmb3IgY21hX2FsbG9jIHJhdGhlciB0aGFuCnJl
bHlpbmcgb24gbWl4aW5nIG9yaWdpbmFsIGdmcF9mbGFncyBzaW5jZSBpdCB3b3VsZCBiZSBtb3Jl
IGNsZWFyCndpdGggcHJldmVudGluZyBwYXNzaW5nIHVuaGFuZGxlZCB0aGUgb3RoZXIgZ2ZwX2Zs
YWdzIGludG8gY21hX2FsbG9jLgoKPiAKPiBXaXRoIHRoZSBtb2RlLCB3ZSdyZSBleHByZXNzaW5n
IGRldGFpbHMgZm9yIHRoZSBuZWNlc3NhcnkgcGFnZQo+IG1pZ3JhdGlvbi4gU3VnZ2VzdGlvbnMg
b24gaG93IHRvIG1vZGVsIHRoYXQgYXJlIHdlbGNvbWUuCj4gCj4gLS0gCj4gVGhhbmtzLAo+IAo+
IERhdmlkIC8gZGhpbGRlbmIKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
