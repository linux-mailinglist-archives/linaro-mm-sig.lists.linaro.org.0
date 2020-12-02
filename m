Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 539242CC1DF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 17:16:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CEC2665CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 16:16:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4FF29665E3; Wed,  2 Dec 2020 16:16:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3B896659B;
	Wed,  2 Dec 2020 16:15:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BBB4A65F8C
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 16:15:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A1EA36659B; Wed,  2 Dec 2020 16:15:55 +0000 (UTC)
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by lists.linaro.org (Postfix) with ESMTPS id 0AFE265F8C
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 16:15:54 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id b12so1241989pjl.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Dec 2020 08:15:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=pAngUE8Pe2deMqEX1v1jJzfLaheheDOemXLQHNVKgZ8=;
 b=K5an1bz4TUIoXjy12z+ZYQt4PMGc8GfFppA7fkd3ivxv1JwnKVjVpigJFpAUBXvRpG
 rJ8uoOeoF7Qw6pPgmuOvIeqaNBXdUzHyTt4EtbtHn0v1z2E3xsnZIJizofS+OkFINHMH
 pxnzP8dDx0u5t23Bp+A0XXP7rLuIfARievQUkCKhKaGzX3qljUZpJfeen/Zq/KZurjjd
 rPV08ZqqHNC5w0XtCeHok9ctjFDxmh2AQxf04VTT0iRWswQZo/9MmKXr3FawS9ze3mpj
 xdSbawxdiIhYe40uDvzITnG+fZgA+orRzZRh50C3AY6kWuH420SIOqond4iJ/gjA5U8q
 pULg==
X-Gm-Message-State: AOAM533yZZkJm/orZnZ/UL0RUPRGj0AwtL1LouqRyy0J6VlpMEJy8A27
 PO17X8CpgMvCJvBfHx6LIjs=
X-Google-Smtp-Source: ABdhPJzHwADqwgWxJBxLebV+WXJ3wruJCxUN+m+GZcb0aHNYPdKMbdIY0m8AH+LOySrZQzu5BiUGZw==
X-Received: by 2002:a17:902:7d94:b029:da:53c:f7cb with SMTP id
 a20-20020a1709027d94b02900da053cf7cbmr3124699plm.69.1606925753163; 
 Wed, 02 Dec 2020 08:15:53 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id u6sm260518pfb.197.2020.12.02.08.15.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 08:15:52 -0800 (PST)
Date: Wed, 2 Dec 2020 08:15:49 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <X8e9tSwcsrEsAv1O@google.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-3-minchan@kernel.org>
 <8f006a4a-c21d-9db3-5493-fb1cc651b0cf@redhat.com>
 <20201202154915.GU17338@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202154915.GU17338@dhcp22.suse.cz>
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

T24gV2VkLCBEZWMgMDIsIDIwMjAgYXQgMDQ6NDk6MTVQTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIFdlZCAwMi0xMi0yMCAxMDoxNDo0MSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6
Cj4gPiBPbiAwMS4xMi4yMCAxODo1MSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiA+IFRoZXJlIGlz
IGEgbmVlZCBmb3Igc3BlY2lhbCBIVyB0byByZXF1aXJlIGJ1bGsgYWxsb2NhdGlvbiBvZgo+ID4g
PiBoaWdoLW9yZGVyIHBhZ2VzLiBGb3IgZXhhbXBsZSwgNDgwMCAqIG9yZGVyLTQgcGFnZXMsIHdo
aWNoCj4gPiA+IHdvdWxkIGJlIG1pbmltdW0sIHNvbWV0aW1lcywgaXQgcmVxdWlyZXMgbW9yZS4K
PiA+ID4gCj4gPiA+IFRvIG1lZXQgdGhlIHJlcXVpcmVtZW50LCBhIG9wdGlvbiByZXNlcnZlcyAz
MDBNIENNQSBhcmVhIGFuZAo+ID4gPiByZXF1ZXN0cyB0aGUgd2hvbGUgMzAwTSBjb250aWd1b3Vz
IG1lbW9yeS4gSG93ZXZlciwgaXQgZG9lc24ndAo+ID4gPiB3b3JrIGlmIGV2ZW4gb25lIG9mIHRo
b3NlIHBhZ2VzIGluIHRoZSByYW5nZSBpcyBsb25nLXRlcm0gcGlubmVkCj4gPiA+IGRpcmVjdGx5
IG9yIGluZGlyZWN0bHkuIFRoZSBvdGhlciBvcHRpb24gaXMgdG8gYXNrIGhpZ2hlci1vcmRlcgo+
ID4gCj4gPiBNeSBsYXRlc3Qga25vd2xlZGdlIGlzIHRoYXQgcGFnZXMgaW4gdGhlIENNQSBhcmVh
IGFyZSBuZXZlciBsb25nIHRlcm0KPiA+IHBpbm5lZC4KPiA+IAo+ID4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGttbC8yMDIwMTEyMzA5MDEyOS5HRDI3NDg4QGRoY3AyMi5zdXNlLmN6Lwo+ID4g
Cj4gPiAiZ3VwIGFscmVhZHkgdHJpZXMgdG8gZGVhbCB3aXRoIGxvbmcgdGVybSBwaW5zIG9uIENN
QSByZWdpb25zIGFuZCBtaWdyYXRlCj4gPiB0byBhIG5vbiBDTUEgcmVnaW9uLiBIYXZlIGEgbG9v
ayBhdCBfX2d1cF9sb25ndGVybV9sb2NrZWQuIgo+ID4gCj4gPiBXZSBzaG91bGQgcmF0aGVyIGlk
ZW50aWZ5IHdheXMgaG93IHRoYXQgaXMgc3RpbGwgcG9zc2libGUgYW5kIGdldCByaWQgb2YKPiA+
IHRoZW0uCj4gPiAKPiA+IAo+ID4gTm93LCBzaG9ydC10ZXJtIHBpbm5pbmdzIGFuZCBQQ1AgYXJl
IG90aGVyIGlzc3VlcyB3aGVyZQo+ID4gYWxsb2NfY29udGlnX3JhbmdlKCkgY291bGQgYmUgaW1w
cm92ZWQgKGUuZy4sIGluIGNvbnRyYXN0IHRvIGEgRkFTVAo+ID4gbW9kZSwgYSBIQVJEIG1vZGUg
d2hpY2ggdGVtcG9yYXJpbHkgZGlzYWJsZXMgdGhlIFBDUCwgLi4uKS4KPiAKPiBBZ3JlZWQhCj4g
Cj4gPiA+IHNpemUgKGUuZy4sIDJNKSB0aGFuIHJlcXVlc3RlZCBvcmRlcig2NEspIHJlcGVhdGVk
bHkgdW50aWwgZHJpdmVyCj4gPiA+IGNvdWxkIGdhdGhlciBuZWNlc3NhcnkgYW1vdW50IG9mIG1l
bW9yeS4gQmFzaWNhbGx5LCB0aGlzIGFwcHJvYWNoCj4gPiA+IG1ha2VzIHRoZSBhbGxvY2F0aW9u
IHZlcnkgc2xvdyBkdWUgdG8gY21hX2FsbG9jJ3MgZnVuY3Rpb24KPiA+ID4gc2xvd25lc3MgYW5k
IGl0IGNvdWxkIGJlIHN0dWNrIG9uIG9uZSBvZiB0aGUgcGFnZWJsb2NrcyBpZiBpdAo+ID4gPiBl
bmNvdW50ZXJzIHVubWlncmF0YWJsZSBwYWdlLgo+ID4gPiAKPiA+ID4gVG8gc29sdmUgdGhlIGlz
c3VlLCB0aGlzIHBhdGNoIGludHJvZHVjZXMgY21hX2FsbG9jX2J1bGsuCj4gPiA+IAo+ID4gPiAJ
aW50IGNtYV9hbGxvY19idWxrKHN0cnVjdCBjbWEgKmNtYSwgdW5zaWduZWQgaW50IGFsaWduLAo+
ID4gPiAJCWJvb2wgZmFzdCwgdW5zaWduZWQgaW50IG9yZGVyLCBzaXplX3QgbnJfcmVxdWVzdHMs
Cj4gPiA+IAkJc3RydWN0IHBhZ2UgKipwYWdlX2FycmF5LCBzaXplX3QgKm5yX2FsbG9jYXRlZCk7
Cj4gPiA+IAo+ID4gPiBNb3N0IHBhcmFtZXRlcnMgYXJlIHNhbWUgd2l0aCBjbWFfYWxsb2MgYnV0
IGl0IGFkZGl0aW9uYWxseSBwYXNzZXMKPiA+ID4gdmVjdG9yIGFycmF5IHRvIHN0b3JlIGFsbG9j
YXRlZCBtZW1vcnkuIFdoYXQncyBkaWZmZXJlbnQgd2l0aCBjbWFfYWxsb2MKPiA+ID4gaXMgaXQg
d2lsbCBza2lwIHBhZ2VibG9ja3Mgd2l0aG91dCB3YWl0aW5nL3N0b3BwaW5nIGlmIGl0IGhhcyB1
bm1vdmFibGUKPiA+ID4gcGFnZSBzbyB0aGF0IEFQSSBjb250aW51ZXMgdG8gc2NhbiBvdGhlciBw
YWdlYmxvY2tzIHRvIGZpbmQgcmVxdWVzdGVkCj4gPiA+IG9yZGVyIHBhZ2UuCj4gPiA+IAo+ID4g
PiBjbWFfYWxsb2NfYnVsayBpcyBiZXN0IGVmZm9ydCBhcHByb2FjaCBpbiB0aGF0IGl0IHNraXBz
IHNvbWUgcGFnZWJsb2Nrcwo+ID4gPiBpZiB0aGV5IGhhdmUgdW5tb3ZhYmxlIHBhZ2VzIHVubGlr
ZSBjbWFfYWxsb2MuIEl0IGRvZXNuJ3QgbmVlZCB0byBiZQo+ID4gPiBwZXJmZWN0IGZyb20gdGhl
IGJlZ2lubmluZyBhdCB0aGUgY29zdCBvZiBwZXJmb3JtYW5jZS4gVGh1cywgdGhlIEFQSQo+ID4g
PiB0YWtlcyAiYm9vbCBmYXN0IHBhcmFtZXRlciIgd2hpY2ggaXMgcHJvcGFnYXRlZCBpbnRvIGFs
bG9jX2NvbnRpZ19yYW5nZSB0bwo+ID4gPiBhdm9pZCBzaWduaWZpY2F0IG92ZXJoZWFkIGZ1bmN0
aW9ucyB0byBpbnJlY2FzZSBDTUEgYWxsb2NhdGlvbiBzdWNjZXNzCj4gPiA+IHJhdGlvKGUuZy4s
IG1pZ3JhdGlvbiByZXRyaWFsLCBQQ1AsIExSVSBkcmFpbmluZyBwZXIgcGFnZWJsb2NrKQo+ID4g
PiBhdCB0aGUgY29zdCBvZiBsZXNzIGFsbG9jYXRpb24gc3VjY2VzcyByYXRpby4gSWYgdGhlIGNh
bGxlciBjb3VsZG4ndAo+ID4gPiBhbGxvY2F0ZSBlbm91Z2gsIHRoZXkgY291bGQgY2FsbCBpdCB3
aXRoICJmYWxzZSIgdG8gaW5jcmVhc2Ugc3VjY2VzcyByYXRpbwo+ID4gPiBpZiB0aGV5IGFyZSBv
a2F5IHRvIGV4cGVuc2UgdGhlIG92ZXJoZWFkIGZvciB0aGUgc3VjY2VzcyByYXRpby4KPiA+IAo+
ID4gSnVzdCBzbyBJIHVuZGVyc3RhbmQgd2hhdCB0aGUgaWRlYSBpczoKPiA+IAo+ID4gYWxsb2Nf
Y29udGlnX3JhbmdlKCkgc29tZXRpbWVzIGZhaWxzIG9uIENNQSByZWdpb25zIHdoZW4gdHJ5aW5n
IHRvCj4gPiBhbGxvY2F0ZSBiaWcgY2h1bmtzIChlLmcuLCAzMDBNKS4gSW5zdGVhZCBvZiB0YWNr
bGluZyB0aGF0IGlzc3VlLCB5b3UKPiA+IHJhdGhlciBhbGxvY2F0ZSBwbGVudHkgb2Ygc21hbGwg
Y2h1bmtzLCBhbmQgbWFrZSB0aGVzZSBzbWFsbCBhbGxvY2F0aW9ucwo+ID4gZmFpbCBmYXN0ZXIv
IG1ha2UgdGhlIGFsbG9jYXRpb25zIGxlc3MgcmVsaWFibGUuIENvcnJlY3Q/Cj4gPiAKPiA+IEkg
ZG9uJ3QgcmVhbGx5IGhhdmUgYSBzdHJvbmcgb3BpbmlvbiBvbiB0aGF0LiBHaXZpbmcgdXAgZmFz
dCByYXRoZXIgdGhhbgo+ID4gdHJ5aW5nIGZvciBsb25nZXIgc291bmRzIGxpa2UgYSB1c2VmdWwg
dGhpbmcgdG8gaGF2ZSAtIGJ1dCBJIHdvbmRlciBpZgo+ID4gaXQncyBzdHJpY3RseSBuZWNlc3Nh
cnkgZm9yIHRoZSB1c2UgY2FzZSB5b3UgZGVzY3JpYmUuCj4gPiAKPiA+IEknZCBsaWtlIHRvIGhl
YXIgTWljaGFscyBvcGluaW9uIG9uIHRoYXQuCj4gCj4gV2VsbCwgd2hhdCBJIGNhbiBzZWUgaXMg
dGhhdCB0aGlzIG5ldyBpbnRlcmZhY2UgaXMgYW4gYW50aXBhdGVybiB0byBvdXIKPiBhbGxvY2F0
aW9uIHJvdXRpbmVzLiBXZSB0ZW5kIHRvIGNvbnRyb2wgYWxsb2NhdGlvbnMgYnkgZ2ZwIG1hc2sg
eWV0IHlvdQo+IGFyZSBpbnRyb2R1Y2luZyBhIGJvb2wgcGFyYW1ldGVyIHRvIG1ha2Ugc29tZXRo
aW5nIGZhc3Rlci4uLiBXaGF0IHRoYXQKPiByZWFsbHkgbWVhbnMgaXMgcmF0aGVyIGFyYml0cmFy
eS4gV291bGQgaXQgbWFrZSBtb3JlIHNlbnNlIHRvIHRlYWNoCj4gY21hX2FsbG9jIHJlc3AuIGFs
bG9jX2NvbnRpZ19yYW5nZSB0byByZWNvZ25pemUgR0ZQX05PV0FJVCwgR0ZQX05PUkVUUlkgcmVz
cC4KPiBHRlBfUkVUUllfTUFZRkFJTCBpbnN0ZWFkPwoKSWYgd2UgdXNlIGNtYV9hbGxvYywgdGhh
dCBpbnRlcmZhY2UgcmVxdWlyZXMgImFsbG9jYXRlIG9uZSBiaWcgbWVtb3J5CmNodW5rIi4gSU9X
LCByZXR1cm4gdmFsdWUgaXMganVzdCBzdHJ1Y3QgcGFnZSBhbmQgZXhwZWN0ZWQgdGhhdCB0aGUg
cGFnZQppcyBhIGJpZyBjb250aWd1b3MgbWVtb3J5LiBUaGF0IG1lYW5zIGl0IGNvdWxkbid0IGhh
dmUgYSBob2xlIGluIHRoZQpyYW5nZS4gSG93ZXZlciB0aGUgaWRlYSBoZXJlLCB3aGF0IHdlIGFz
a2VkIGlzIG11Y2ggc21hbGxlciBjaHVuayByYXRoZXIKdGhhbiBhIGJpZyBjb250aWd1b3VzIG1l
bW9yeSBzbyB3ZSBjb3VsZCBza2lwIHNvbWUgb2YgcGFnZXMgaWYgdGhleSBhcmUKcmFuZG9tbHkg
cGlubmVkKGxvbmctdGVybS9zaG9ydC10ZXJtIHdoYXRldmVyKSBhbmQgc2VhcmNoIG90aGVyIHBh
Z2VzCmluIHRoZSBDTUEgYXJlYSB0byBhdm9pZCBsb25nIHN0YWxsLiBUaHVzLCBpdCBjb3VsZG4n
dCB3b3JrIHdpdGggZXhpc2luZwpjbWFfYWxsb2MgQVBJIHdpdGggc2ltcGxlIGdmcF9tYWsuCgo+
IAo+IEkgYW0gbm90IGRlZXBseSBmYW1pbGlhciB3aXRoIHRoZSBjbWEgYWxsb2NhdG9yIHNvIHNv
cnJ5IGZvciBhCj4gcG90ZW50aWFsbHkgc3R1cGlkIHF1ZXN0aW9uLiBXaHkgZG9lcyBhIGJ1bGsg
aW50ZXJmYWNlIHBlcmZvcm1zIGJldHRlcgo+IHRoYW4gcmVwZWF0ZWQgY2FsbHMgdG8gY21hX2Fs
bG9jPyBJcyB0aGlzIGJlY2F1c2UgYSBmYWlsdXJlIHdvdWxkIGhlbHAKPiB0byBtb3ZlIG9uIHRv
IHRoZSBuZXh0IHBmbiByYW5nZSB3aGlsZSBhIHJlcGVhdGVkIGNhbGwgd291bGQgaGF2ZSB0bwo+
IGRlYWwgd2l0aCB0aGUgc2FtZSByYW5nZT8KCll1YiwgdHJ1ZSB3aXRoIG90aGVyIG92ZXJoZWFk
cyhlLmcuLCBtaWdyYXRpb24gcmV0cmlhbCwgd2FpdGluZyB3cml0ZWJhY2sKUENQL0xSVSBkcmFp
bmluZyBJUEkpCgo+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaW5jaGFuIEtpbSA8bWluY2hhbkBr
ZXJuZWwub3JnPgo+ID4gPiAtLS0KPiA+ID4gIGluY2x1ZGUvbGludXgvY21hLmggfCAgIDUgKysK
PiA+ID4gIGluY2x1ZGUvbGludXgvZ2ZwLmggfCAgIDIgKwo+ID4gPiAgbW0vY21hLmMgICAgICAg
ICAgICB8IDEyNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+
ID4gPiAgbW0vcGFnZV9hbGxvYy5jICAgICB8ICAxOSArKysrLS0tCj4gPiA+ICA0IGZpbGVzIGNo
YW5nZWQsIDE0MCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiA+ID4gCj4gLS0gCj4g
TWljaGFsIEhvY2tvCj4gU1VTRSBMYWJzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
